package com.google.firebase.crashlytics.internal.log;

import android.support.p008v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/log/QueueFile.class */
public class QueueFile implements Closeable {
    static final int HEADER_LENGTH = 16;
    private static final int INITIAL_LENGTH = 4096;
    private static final Logger LOGGER = Logger.getLogger(QueueFile.class.getName());
    private final byte[] buffer;
    private int elementCount;
    int fileLength;
    private Element first;
    private Element last;
    private final RandomAccessFile raf;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/log/QueueFile$Element.class */
    public static class Element {
        static final int HEADER_LENGTH = 4;
        static final Element NULL = new Element(0, 0);
        final int length;
        final int position;

        Element(int i, int i2) {
            this.position = i;
            this.length = i2;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.position + ", length = " + this.length + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/log/QueueFile$ElementInputStream.class */
    public final class ElementInputStream extends InputStream {
        private int position;
        private int remaining;

        private ElementInputStream(Element element) {
            QueueFile.this = r6;
            this.position = r6.wrapPosition(element.position + 4);
            this.remaining = element.length;
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            if (this.remaining == 0) {
                return -1;
            }
            QueueFile.this.raf.seek(this.position);
            int read = QueueFile.this.raf.read();
            this.position = QueueFile.this.wrapPosition(this.position + 1);
            this.remaining--;
            return read;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            QueueFile.nonNull(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.remaining;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            QueueFile.this.ringRead(this.position, bArr, i, i4);
            this.position = QueueFile.this.wrapPosition(this.position + i4);
            this.remaining -= i4;
            return i4;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/log/QueueFile$ElementReader.class */
    public interface ElementReader {
        void read(InputStream inputStream, int i) throws IOException;
    }

    public QueueFile(File file) throws IOException {
        this.buffer = new byte[16];
        if (!file.exists()) {
            initialize(file);
        }
        this.raf = open(file);
        readHeader();
    }

    QueueFile(RandomAccessFile randomAccessFile) throws IOException {
        this.buffer = new byte[16];
        this.raf = randomAccessFile;
        readHeader();
    }

    private void expandIfNecessary(int i) throws IOException {
        int i2;
        int i3;
        int i4 = i + 4;
        int remainingBytes = remainingBytes();
        if (remainingBytes >= i4) {
            return;
        }
        int i5 = this.fileLength;
        do {
            i2 = remainingBytes + i5;
            i3 = i5 << 1;
            remainingBytes = i2;
            i5 = i3;
        } while (i2 < i4);
        setLength(i3);
        int wrapPosition = wrapPosition(this.last.position + 4 + this.last.length);
        if (wrapPosition < this.first.position) {
            FileChannel channel = this.raf.getChannel();
            channel.position(this.fileLength);
            long j = wrapPosition - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        if (this.last.position < this.first.position) {
            int i6 = (this.fileLength + this.last.position) - 16;
            writeHeader(i3, this.elementCount, this.first.position, i6);
            this.last = new Element(i6, this.last.length);
        } else {
            writeHeader(i3, this.elementCount, this.first.position, this.last.position);
        }
        this.fileLength = i3;
    }

    /* JADX WARN: Finally extract failed */
    private static void initialize(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile open = open(file2);
        try {
            open.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            open.seek(0L);
            byte[] bArr = new byte[16];
            writeInts(bArr, 4096, 0, 0, 0);
            open.write(bArr);
            open.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            open.close();
            throw th;
        }
    }

    public static <T> T nonNull(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    private static RandomAccessFile open(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private Element readElement(int i) throws IOException {
        if (i == 0) {
            return Element.NULL;
        }
        this.raf.seek(i);
        return new Element(i, this.raf.readInt());
    }

    private void readHeader() throws IOException {
        this.raf.seek(0L);
        this.raf.readFully(this.buffer);
        int readInt = readInt(this.buffer, 0);
        this.fileLength = readInt;
        if (readInt > this.raf.length()) {
            throw new IOException("File is truncated. Expected length: " + this.fileLength + ", Actual length: " + this.raf.length());
        }
        this.elementCount = readInt(this.buffer, 4);
        int readInt2 = readInt(this.buffer, 8);
        int readInt3 = readInt(this.buffer, 12);
        this.first = readElement(readInt2);
        this.last = readElement(readInt3);
    }

    private static int readInt(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    private int remainingBytes() {
        return this.fileLength - usedBytes();
    }

    public void ringRead(int i, byte[] bArr, int i2, int i3) throws IOException {
        int wrapPosition = wrapPosition(i);
        int i4 = this.fileLength;
        if (wrapPosition + i3 <= i4) {
            this.raf.seek(wrapPosition);
            this.raf.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - wrapPosition;
        this.raf.seek(wrapPosition);
        this.raf.readFully(bArr, i2, i5);
        this.raf.seek(16L);
        this.raf.readFully(bArr, i2 + i5, i3 - i5);
    }

    private void ringWrite(int i, byte[] bArr, int i2, int i3) throws IOException {
        int wrapPosition = wrapPosition(i);
        int i4 = this.fileLength;
        if (wrapPosition + i3 <= i4) {
            this.raf.seek(wrapPosition);
            this.raf.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - wrapPosition;
        this.raf.seek(wrapPosition);
        this.raf.write(bArr, i2, i5);
        this.raf.seek(16L);
        this.raf.write(bArr, i2 + i5, i3 - i5);
    }

    private void setLength(int i) throws IOException {
        this.raf.setLength(i);
        this.raf.getChannel().force(true);
    }

    public int wrapPosition(int i) {
        int i2 = this.fileLength;
        return i < i2 ? i : (i + 16) - i2;
    }

    private void writeHeader(int i, int i2, int i3, int i4) throws IOException {
        writeInts(this.buffer, i, i2, i3, i4);
        this.raf.seek(0L);
        this.raf.write(this.buffer);
    }

    private static void writeInt(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static void writeInts(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            writeInt(bArr, i, i2);
            i += 4;
        }
    }

    public void add(byte[] bArr) throws IOException {
        add(bArr, 0, bArr.length);
    }

    public void add(byte[] bArr, int i, int i2) throws IOException {
        synchronized (this) {
            nonNull(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            expandIfNecessary(i2);
            boolean isEmpty = isEmpty();
            Element element = new Element(isEmpty ? 16 : wrapPosition(this.last.position + 4 + this.last.length), i2);
            writeInt(this.buffer, 0, i2);
            ringWrite(element.position, this.buffer, 0, 4);
            ringWrite(element.position + 4, bArr, i, i2);
            writeHeader(this.fileLength, this.elementCount + 1, isEmpty ? element.position : this.first.position, element.position);
            this.last = element;
            this.elementCount++;
            if (isEmpty) {
                this.first = element;
            }
        }
    }

    public void clear() throws IOException {
        synchronized (this) {
            writeHeader(4096, 0, 0, 0);
            this.elementCount = 0;
            this.first = Element.NULL;
            this.last = Element.NULL;
            if (this.fileLength > 4096) {
                setLength(4096);
            }
            this.fileLength = 4096;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.raf.close();
        }
    }

    public void forEach(ElementReader elementReader) throws IOException {
        synchronized (this) {
            int i = this.first.position;
            for (int i2 = 0; i2 < this.elementCount; i2++) {
                Element readElement = readElement(i);
                elementReader.read(new ElementInputStream(readElement), readElement.length);
                i = wrapPosition(readElement.position + 4 + readElement.length);
            }
        }
    }

    public boolean hasSpaceFor(int i, int i2) {
        return (usedBytes() + 4) + i <= i2;
    }

    public boolean isEmpty() {
        boolean z;
        synchronized (this) {
            z = this.elementCount == 0;
        }
        return z;
    }

    public void peek(ElementReader elementReader) throws IOException {
        synchronized (this) {
            if (this.elementCount > 0) {
                elementReader.read(new ElementInputStream(this.first), this.first.length);
            }
        }
    }

    public byte[] peek() throws IOException {
        synchronized (this) {
            if (isEmpty()) {
                return null;
            }
            int i = this.first.length;
            byte[] bArr = new byte[i];
            ringRead(this.first.position + 4, bArr, 0, i);
            return bArr;
        }
    }

    public void remove() throws IOException {
        synchronized (this) {
            if (!isEmpty()) {
                if (this.elementCount == 1) {
                    clear();
                    return;
                }
                int wrapPosition = wrapPosition(this.first.position + 4 + this.first.length);
                ringRead(wrapPosition, this.buffer, 0, 4);
                int readInt = readInt(this.buffer, 0);
                writeHeader(this.fileLength, this.elementCount - 1, wrapPosition, this.last.position);
                this.elementCount--;
                this.first = new Element(wrapPosition, readInt);
                return;
            }
            throw new NoSuchElementException();
        }
    }

    public int size() {
        int i;
        synchronized (this) {
            i = this.elementCount;
        }
        return i;
    }

    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.fileLength);
        sb.append(", size=");
        sb.append(this.elementCount);
        sb.append(", first=");
        sb.append(this.first);
        sb.append(", last=");
        sb.append(this.last);
        sb.append(", element lengths=[");
        try {
            forEach(new ElementReader() { // from class: com.google.firebase.crashlytics.internal.log.QueueFile.1
                boolean first = true;

                @Override // com.google.firebase.crashlytics.internal.log.QueueFile.ElementReader
                public void read(InputStream inputStream, int i) throws IOException {
                    if (this.first) {
                        this.first = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(i);
                }
            });
        } catch (IOException e) {
            LOGGER.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    public int usedBytes() {
        if (this.elementCount == 0) {
            return 16;
        }
        return this.last.position >= this.first.position ? (this.last.position - this.first.position) + 4 + this.last.length + 16 : (((this.last.position + 4) + this.last.length) + this.fileLength) - this.first.position;
    }
}
