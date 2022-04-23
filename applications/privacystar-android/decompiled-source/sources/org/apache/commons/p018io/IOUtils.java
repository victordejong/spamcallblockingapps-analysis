package org.apache.commons.p018io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.CharArrayWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.Selector;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.apache.commons.p018io.output.ByteArrayOutputStream;
import org.apache.commons.p018io.output.StringBuilderWriter;
/* renamed from: org.apache.commons.io.IOUtils */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/IOUtils.class */
public class IOUtils {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    public static final char DIR_SEPARATOR = File.separatorChar;
    public static final char DIR_SEPARATOR_UNIX = '/';
    public static final char DIR_SEPARATOR_WINDOWS = '\\';
    public static final int EOF = -1;
    public static final String LINE_SEPARATOR;
    public static final String LINE_SEPARATOR_UNIX = "\n";
    public static final String LINE_SEPARATOR_WINDOWS = "\r\n";
    private static final int SKIP_BUFFER_SIZE = 2048;
    private static byte[] SKIP_BYTE_BUFFER;
    private static char[] SKIP_CHAR_BUFFER;

    static {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter(4);
        PrintWriter printWriter = new PrintWriter(stringBuilderWriter);
        printWriter.println();
        LINE_SEPARATOR = stringBuilderWriter.toString();
        printWriter.close();
    }

    public static BufferedInputStream buffer(InputStream inputStream) {
        if (inputStream == null) {
            throw new NullPointerException();
        }
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream);
    }

    public static BufferedInputStream buffer(InputStream inputStream, int i) {
        if (inputStream == null) {
            throw new NullPointerException();
        }
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, i);
    }

    public static BufferedOutputStream buffer(OutputStream outputStream) {
        if (outputStream == null) {
            throw new NullPointerException();
        }
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream);
    }

    public static BufferedOutputStream buffer(OutputStream outputStream, int i) {
        if (outputStream == null) {
            throw new NullPointerException();
        }
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, i);
    }

    public static BufferedReader buffer(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static BufferedReader buffer(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    public static BufferedWriter buffer(Writer writer) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer);
    }

    public static BufferedWriter buffer(Writer writer, int i) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static void close(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(InputStream inputStream) {
        closeQuietly((Closeable) inputStream);
    }

    public static void closeQuietly(OutputStream outputStream) {
        closeQuietly((Closeable) outputStream);
    }

    public static void closeQuietly(Reader reader) {
        closeQuietly((Closeable) reader);
    }

    public static void closeQuietly(Writer writer) {
        closeQuietly((Closeable) writer);
    }

    public static void closeQuietly(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(Selector selector) {
        if (selector != null) {
            try {
                selector.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(Closeable... closeableArr) {
        if (closeableArr != null) {
            for (Closeable closeable : closeableArr) {
                closeQuietly(closeable);
            }
        }
    }

    public static boolean contentEquals(InputStream inputStream, InputStream inputStream2) throws IOException {
        boolean z = true;
        if (inputStream == inputStream2) {
            return true;
        }
        InputStream inputStream3 = inputStream;
        if (!(inputStream instanceof BufferedInputStream)) {
            inputStream3 = new BufferedInputStream(inputStream);
        }
        InputStream inputStream4 = inputStream2;
        if (!(inputStream2 instanceof BufferedInputStream)) {
            inputStream4 = new BufferedInputStream(inputStream2);
        }
        for (int read = inputStream3.read(); -1 != read; read = inputStream3.read()) {
            if (read != inputStream4.read()) {
                return false;
            }
        }
        if (inputStream4.read() != -1) {
            z = false;
        }
        return z;
    }

    public static boolean contentEquals(Reader reader, Reader reader2) throws IOException {
        boolean z = true;
        if (reader == reader2) {
            return true;
        }
        BufferedReader bufferedReader = toBufferedReader(reader);
        BufferedReader bufferedReader2 = toBufferedReader(reader2);
        for (int read = bufferedReader.read(); -1 != read; read = bufferedReader.read()) {
            if (read != bufferedReader2.read()) {
                return false;
            }
        }
        if (bufferedReader2.read() != -1) {
            z = false;
        }
        return z;
    }

    public static boolean contentEqualsIgnoreEOL(Reader reader, Reader reader2) throws IOException {
        boolean z = true;
        if (reader == reader2) {
            return true;
        }
        BufferedReader bufferedReader = toBufferedReader(reader);
        BufferedReader bufferedReader2 = toBufferedReader(reader2);
        String readLine = bufferedReader.readLine();
        String readLine2 = bufferedReader2.readLine();
        while (readLine != null && readLine2 != null && readLine.equals(readLine2)) {
            readLine = bufferedReader.readLine();
            readLine2 = bufferedReader2.readLine();
        }
        if (readLine != null) {
            z = readLine.equals(readLine2);
        } else if (readLine2 != null) {
            z = false;
        }
        return z;
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        long copyLarge = copyLarge(inputStream, outputStream);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    public static int copy(Reader reader, Writer writer) throws IOException {
        long copyLarge = copyLarge(reader, writer);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        return copyLarge(inputStream, outputStream, new byte[i]);
    }

    @Deprecated
    public static void copy(InputStream inputStream, Writer writer) throws IOException {
        copy(inputStream, writer, Charset.defaultCharset());
    }

    public static void copy(InputStream inputStream, Writer writer, String str) throws IOException {
        copy(inputStream, writer, Charsets.toCharset(str));
    }

    public static void copy(InputStream inputStream, Writer writer, Charset charset) throws IOException {
        copy(new InputStreamReader(inputStream, Charsets.toCharset(charset)), writer);
    }

    @Deprecated
    public static void copy(Reader reader, OutputStream outputStream) throws IOException {
        copy(reader, outputStream, Charset.defaultCharset());
    }

    public static void copy(Reader reader, OutputStream outputStream, String str) throws IOException {
        copy(reader, outputStream, Charsets.toCharset(str));
    }

    public static void copy(Reader reader, OutputStream outputStream, Charset charset) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charsets.toCharset(charset));
        copy(reader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, 4096);
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, long j, long j2) throws IOException {
        return copyLarge(inputStream, outputStream, j, j2, new byte[4096]);
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long copyLarge(java.io.InputStream r5, java.io.OutputStream r6, long r7, long r9, byte[] r11) throws java.io.IOException {
        /*
            r0 = 0
            r12 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x000e
            r0 = r5
            r1 = r7
            skipFully(r0, r1)
        L_0x000e:
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x001b
            r0 = 0
            return r0
        L_0x001b:
            r0 = r11
            int r0 = r0.length
            r15 = r0
            r0 = r14
            if (r0 <= 0) goto L_0x0039
            r0 = r9
            r1 = r15
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0039
            r0 = r9
            int r0 = (int) r0
            r16 = r0
            r0 = r12
            r7 = r0
            goto L_0x0040
        L_0x0039:
            r0 = r15
            r16 = r0
            r0 = r12
            r7 = r0
        L_0x0040:
            r0 = r16
            if (r0 <= 0) goto L_0x0082
            r0 = r5
            r1 = r11
            r2 = 0
            r3 = r16
            int r0 = r0.read(r1, r2, r3)
            r17 = r0
            r0 = -1
            r1 = r17
            if (r0 == r1) goto L_0x0082
            r0 = r6
            r1 = r11
            r2 = 0
            r3 = r17
            r0.write(r1, r2, r3)
            r0 = r7
            r1 = r17
            long r1 = (long) r1
            long r0 = r0 + r1
            r12 = r0
            r0 = r12
            r7 = r0
            r0 = r14
            if (r0 <= 0) goto L_0x0040
            r0 = r9
            r1 = r12
            long r0 = r0 - r1
            r1 = r15
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r16 = r0
            r0 = r12
            r7 = r0
            goto L_0x0040
        L_0x0082:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.IOUtils.copyLarge(java.io.InputStream, java.io.OutputStream, long, long, byte[]):long");
    }

    public static long copyLarge(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    public static long copyLarge(Reader reader, Writer writer) throws IOException {
        return copyLarge(reader, writer, new char[4096]);
    }

    public static long copyLarge(Reader reader, Writer writer, long j, long j2) throws IOException {
        return copyLarge(reader, writer, j, j2, new char[4096]);
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long copyLarge(java.io.Reader r5, java.io.Writer r6, long r7, long r9, char[] r11) throws java.io.IOException {
        /*
            r0 = 0
            r12 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x000e
            r0 = r5
            r1 = r7
            skipFully(r0, r1)
        L_0x000e:
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x001b
            r0 = 0
            return r0
        L_0x001b:
            r0 = r11
            int r0 = r0.length
            r15 = r0
            r0 = r12
            r7 = r0
            r0 = r15
            r16 = r0
            r0 = r14
            if (r0 <= 0) goto L_0x0045
            r0 = r12
            r7 = r0
            r0 = r15
            r16 = r0
            r0 = r9
            r1 = r11
            int r1 = r1.length
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0045
            r0 = r9
            int r0 = (int) r0
            r16 = r0
            r0 = r12
            r7 = r0
        L_0x0045:
            r0 = r16
            if (r0 <= 0) goto L_0x0088
            r0 = r5
            r1 = r11
            r2 = 0
            r3 = r16
            int r0 = r0.read(r1, r2, r3)
            r15 = r0
            r0 = -1
            r1 = r15
            if (r0 == r1) goto L_0x0088
            r0 = r6
            r1 = r11
            r2 = 0
            r3 = r15
            r0.write(r1, r2, r3)
            r0 = r7
            r1 = r15
            long r1 = (long) r1
            long r0 = r0 + r1
            r12 = r0
            r0 = r12
            r7 = r0
            r0 = r14
            if (r0 <= 0) goto L_0x0045
            r0 = r9
            r1 = r12
            long r0 = r0 - r1
            r1 = r11
            int r1 = r1.length
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r16 = r0
            r0 = r12
            r7 = r0
            goto L_0x0045
        L_0x0088:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.IOUtils.copyLarge(java.io.Reader, java.io.Writer, long, long, char[]):long");
    }

    public static long copyLarge(Reader reader, Writer writer, char[] cArr) throws IOException {
        long j = 0;
        while (true) {
            int read = reader.read(cArr);
            if (-1 == read) {
                return j;
            }
            writer.write(cArr, 0, read);
            j += read;
        }
    }

    public static LineIterator lineIterator(InputStream inputStream, String str) throws IOException {
        return lineIterator(inputStream, Charsets.toCharset(str));
    }

    public static LineIterator lineIterator(InputStream inputStream, Charset charset) throws IOException {
        return new LineIterator(new InputStreamReader(inputStream, Charsets.toCharset(charset)));
    }

    public static LineIterator lineIterator(Reader reader) {
        return new LineIterator(reader);
    }

    public static int read(InputStream inputStream, byte[] bArr) throws IOException {
        return read(inputStream, bArr, 0, bArr.length);
    }

    public static int read(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int read;
        if (i2 < 0) {
            throw new IllegalArgumentException("Length must not be negative: " + i2);
        }
        int i3 = i2;
        while (i3 > 0 && -1 != (read = inputStream.read(bArr, (i2 - i3) + i, i3))) {
            i3 -= read;
        }
        return i2 - i3;
    }

    public static int read(Reader reader, char[] cArr) throws IOException {
        return read(reader, cArr, 0, cArr.length);
    }

    public static int read(Reader reader, char[] cArr, int i, int i2) throws IOException {
        int read;
        if (i2 < 0) {
            throw new IllegalArgumentException("Length must not be negative: " + i2);
        }
        int i3 = i2;
        while (i3 > 0 && -1 != (read = reader.read(cArr, (i2 - i3) + i, i3))) {
            i3 -= read;
        }
        return i2 - i3;
    }

    public static int read(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        while (byteBuffer.remaining() > 0 && -1 != readableByteChannel.read(byteBuffer)) {
        }
        return remaining - byteBuffer.remaining();
    }

    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int read = read(inputStream, bArr, i, i2);
        if (read != i2) {
            throw new EOFException("Length to read: " + i2 + " actual: " + read);
        }
    }

    public static void readFully(Reader reader, char[] cArr) throws IOException {
        readFully(reader, cArr, 0, cArr.length);
    }

    public static void readFully(Reader reader, char[] cArr, int i, int i2) throws IOException {
        int read = read(reader, cArr, i, i2);
        if (read != i2) {
            throw new EOFException("Length to read: " + i2 + " actual: " + read);
        }
    }

    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        int remaining = byteBuffer.remaining();
        int read = read(readableByteChannel, byteBuffer);
        if (read != remaining) {
            throw new EOFException("Length to read: " + remaining + " actual: " + read);
        }
    }

    public static byte[] readFully(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        readFully(inputStream, bArr, 0, bArr.length);
        return bArr;
    }

    @Deprecated
    public static List<String> readLines(InputStream inputStream) throws IOException {
        return readLines(inputStream, Charset.defaultCharset());
    }

    public static List<String> readLines(InputStream inputStream, String str) throws IOException {
        return readLines(inputStream, Charsets.toCharset(str));
    }

    public static List<String> readLines(InputStream inputStream, Charset charset) throws IOException {
        return readLines(new InputStreamReader(inputStream, Charsets.toCharset(charset)));
    }

    public static List<String> readLines(Reader reader) throws IOException {
        BufferedReader bufferedReader = toBufferedReader(reader);
        ArrayList arrayList = new ArrayList();
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            arrayList.add(readLine);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long skip(java.io.InputStream r8, long r9) throws java.io.IOException {
        /*
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0028
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Skip count must be non-negative, actual: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0028:
            byte[] r0 = org.apache.commons.p018io.IOUtils.SKIP_BYTE_BUFFER
            if (r0 != 0) goto L_0x0036
            r0 = 2048(0x800, float:2.87E-42)
            byte[] r0 = new byte[r0]
            org.apache.commons.p018io.IOUtils.SKIP_BYTE_BUFFER = r0
        L_0x0036:
            r0 = r9
            r11 = r0
        L_0x0038:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0063
            r0 = r8
            byte[] r1 = org.apache.commons.p018io.IOUtils.SKIP_BYTE_BUFFER
            r2 = 0
            r3 = r11
            r4 = 2048(0x800, double:1.0118E-320)
            long r3 = java.lang.Math.min(r3, r4)
            int r3 = (int) r3
            int r0 = r0.read(r1, r2, r3)
            long r0 = (long) r0
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005b
            goto L_0x0063
        L_0x005b:
            r0 = r11
            r1 = r13
            long r0 = r0 - r1
            r11 = r0
            goto L_0x0038
        L_0x0063:
            r0 = r9
            r1 = r11
            long r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.IOUtils.skip(java.io.InputStream, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long skip(java.io.Reader r8, long r9) throws java.io.IOException {
        /*
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0028
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Skip count must be non-negative, actual: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0028:
            char[] r0 = org.apache.commons.p018io.IOUtils.SKIP_CHAR_BUFFER
            if (r0 != 0) goto L_0x0036
            r0 = 2048(0x800, float:2.87E-42)
            char[] r0 = new char[r0]
            org.apache.commons.p018io.IOUtils.SKIP_CHAR_BUFFER = r0
        L_0x0036:
            r0 = r9
            r11 = r0
        L_0x0038:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0063
            r0 = r8
            char[] r1 = org.apache.commons.p018io.IOUtils.SKIP_CHAR_BUFFER
            r2 = 0
            r3 = r11
            r4 = 2048(0x800, double:1.0118E-320)
            long r3 = java.lang.Math.min(r3, r4)
            int r3 = (int) r3
            int r0 = r0.read(r1, r2, r3)
            long r0 = (long) r0
            r13 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005b
            goto L_0x0063
        L_0x005b:
            r0 = r11
            r1 = r13
            long r0 = r0 - r1
            r11 = r0
            goto L_0x0038
        L_0x0063:
            r0 = r9
            r1 = r11
            long r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.IOUtils.skip(java.io.Reader, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long skip(java.nio.channels.ReadableByteChannel r6, long r7) throws java.io.IOException {
        /*
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0028
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Skip count must be non-negative, actual: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0028:
            r0 = r7
            r1 = 2048(0x800, double:1.0118E-320)
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            java.nio.ByteBuffer r0 = java.nio.ByteBuffer.allocate(r0)
            r9 = r0
            r0 = r7
            r10 = r0
        L_0x0037:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006f
            r0 = r9
            r1 = 0
            java.nio.Buffer r0 = r0.position(r1)
            r0 = r9
            r1 = r10
            r2 = 2048(0x800, double:1.0118E-320)
            long r1 = java.lang.Math.min(r1, r2)
            int r1 = (int) r1
            java.nio.Buffer r0 = r0.limit(r1)
            r0 = r6
            r1 = r9
            int r0 = r0.read(r1)
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 != r1) goto L_0x0064
            goto L_0x006f
        L_0x0064:
            r0 = r10
            r1 = r12
            long r1 = (long) r1
            long r0 = r0 - r1
            r10 = r0
            goto L_0x0037
        L_0x006f:
            r0 = r7
            r1 = r10
            long r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.IOUtils.skip(java.nio.channels.ReadableByteChannel, long):long");
    }

    public static void skipFully(InputStream inputStream, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("Bytes to skip must not be negative: " + j);
        }
        long skip = skip(inputStream, j);
        if (skip != j) {
            throw new EOFException("Bytes to skip: " + j + " actual: " + skip);
        }
    }

    public static void skipFully(Reader reader, long j) throws IOException {
        long skip = skip(reader, j);
        if (skip != j) {
            throw new EOFException("Chars to skip: " + j + " actual: " + skip);
        }
    }

    public static void skipFully(ReadableByteChannel readableByteChannel, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("Bytes to skip must not be negative: " + j);
        }
        long skip = skip(readableByteChannel, j);
        if (skip != j) {
            throw new EOFException("Bytes to skip: " + j + " actual: " + skip);
        }
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) throws IOException {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i) throws IOException {
        return ByteArrayOutputStream.toBufferedInputStream(inputStream, i);
    }

    public static BufferedReader toBufferedReader(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static BufferedReader toBufferedReader(Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(InputStream inputStream, int i) throws IOException {
        int read;
        if (i < 0) {
            throw new IllegalArgumentException("Size must be equal or greater than zero: " + i);
        }
        int i2 = 0;
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Unexpected readed size. current: " + i2 + ", excepted: " + i);
    }

    public static byte[] toByteArray(InputStream inputStream, long j) throws IOException {
        if (j <= 2147483647L) {
            return toByteArray(inputStream, (int) j);
        }
        throw new IllegalArgumentException("Size cannot be greater than Integer max value: " + j);
    }

    @Deprecated
    public static byte[] toByteArray(Reader reader) throws IOException {
        return toByteArray(reader, Charset.defaultCharset());
    }

    public static byte[] toByteArray(Reader reader, String str) throws IOException {
        return toByteArray(reader, Charsets.toCharset(str));
    }

    public static byte[] toByteArray(Reader reader, Charset charset) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(reader, byteArrayOutputStream, charset);
        return byteArrayOutputStream.toByteArray();
    }

    @Deprecated
    public static byte[] toByteArray(String str) throws IOException {
        return str.getBytes(Charset.defaultCharset());
    }

    public static byte[] toByteArray(URI uri) throws IOException {
        return toByteArray(uri.toURL());
    }

    public static byte[] toByteArray(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        try {
            return toByteArray(openConnection);
        } finally {
            close(openConnection);
        }
    }

    public static byte[] toByteArray(URLConnection uRLConnection) throws IOException {
        InputStream inputStream = uRLConnection.getInputStream();
        try {
            return toByteArray(inputStream);
        } finally {
            inputStream.close();
        }
    }

    @Deprecated
    public static char[] toCharArray(InputStream inputStream) throws IOException {
        return toCharArray(inputStream, Charset.defaultCharset());
    }

    public static char[] toCharArray(InputStream inputStream, String str) throws IOException {
        return toCharArray(inputStream, Charsets.toCharset(str));
    }

    public static char[] toCharArray(InputStream inputStream, Charset charset) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(inputStream, charArrayWriter, charset);
        return charArrayWriter.toCharArray();
    }

    public static char[] toCharArray(Reader reader) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(reader, charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    @Deprecated
    public static InputStream toInputStream(CharSequence charSequence) {
        return toInputStream(charSequence, Charset.defaultCharset());
    }

    public static InputStream toInputStream(CharSequence charSequence, String str) throws IOException {
        return toInputStream(charSequence, Charsets.toCharset(str));
    }

    public static InputStream toInputStream(CharSequence charSequence, Charset charset) {
        return toInputStream(charSequence.toString(), charset);
    }

    @Deprecated
    public static InputStream toInputStream(String str) {
        return toInputStream(str, Charset.defaultCharset());
    }

    public static InputStream toInputStream(String str, String str2) throws IOException {
        return new ByteArrayInputStream(str.getBytes(Charsets.toCharset(str2)));
    }

    public static InputStream toInputStream(String str, Charset charset) {
        return new ByteArrayInputStream(str.getBytes(Charsets.toCharset(charset)));
    }

    @Deprecated
    public static String toString(InputStream inputStream) throws IOException {
        return toString(inputStream, Charset.defaultCharset());
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        return toString(inputStream, Charsets.toCharset(str));
    }

    public static String toString(InputStream inputStream, Charset charset) throws IOException {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        copy(inputStream, stringBuilderWriter, charset);
        return stringBuilderWriter.toString();
    }

    public static String toString(Reader reader) throws IOException {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        copy(reader, stringBuilderWriter);
        return stringBuilderWriter.toString();
    }

    @Deprecated
    public static String toString(URI uri) throws IOException {
        return toString(uri, Charset.defaultCharset());
    }

    public static String toString(URI uri, String str) throws IOException {
        return toString(uri, Charsets.toCharset(str));
    }

    public static String toString(URI uri, Charset charset) throws IOException {
        return toString(uri.toURL(), Charsets.toCharset(charset));
    }

    @Deprecated
    public static String toString(URL url) throws IOException {
        return toString(url, Charset.defaultCharset());
    }

    public static String toString(URL url, String str) throws IOException {
        return toString(url, Charsets.toCharset(str));
    }

    public static String toString(URL url, Charset charset) throws IOException {
        InputStream openStream = url.openStream();
        try {
            return toString(openStream, charset);
        } finally {
            openStream.close();
        }
    }

    @Deprecated
    public static String toString(byte[] bArr) throws IOException {
        return new String(bArr, Charset.defaultCharset());
    }

    public static String toString(byte[] bArr, String str) throws IOException {
        return new String(bArr, Charsets.toCharset(str));
    }

    @Deprecated
    public static void write(CharSequence charSequence, OutputStream outputStream) throws IOException {
        write(charSequence, outputStream, Charset.defaultCharset());
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, String str) throws IOException {
        write(charSequence, outputStream, Charsets.toCharset(str));
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, Charset charset) throws IOException {
        if (charSequence != null) {
            write(charSequence.toString(), outputStream, charset);
        }
    }

    public static void write(CharSequence charSequence, Writer writer) throws IOException {
        if (charSequence != null) {
            write(charSequence.toString(), writer);
        }
    }

    @Deprecated
    public static void write(String str, OutputStream outputStream) throws IOException {
        write(str, outputStream, Charset.defaultCharset());
    }

    public static void write(String str, OutputStream outputStream, String str2) throws IOException {
        write(str, outputStream, Charsets.toCharset(str2));
    }

    public static void write(String str, OutputStream outputStream, Charset charset) throws IOException {
        if (str != null) {
            outputStream.write(str.getBytes(Charsets.toCharset(charset)));
        }
    }

    public static void write(String str, Writer writer) throws IOException {
        if (str != null) {
            writer.write(str);
        }
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, OutputStream outputStream) throws IOException {
        write(stringBuffer, outputStream, (String) null);
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, OutputStream outputStream, String str) throws IOException {
        if (stringBuffer != null) {
            outputStream.write(stringBuffer.toString().getBytes(Charsets.toCharset(str)));
        }
    }

    @Deprecated
    public static void write(StringBuffer stringBuffer, Writer writer) throws IOException {
        if (stringBuffer != null) {
            writer.write(stringBuffer.toString());
        }
    }

    public static void write(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            outputStream.write(bArr);
        }
    }

    @Deprecated
    public static void write(byte[] bArr, Writer writer) throws IOException {
        write(bArr, writer, Charset.defaultCharset());
    }

    public static void write(byte[] bArr, Writer writer, String str) throws IOException {
        write(bArr, writer, Charsets.toCharset(str));
    }

    public static void write(byte[] bArr, Writer writer, Charset charset) throws IOException {
        if (bArr != null) {
            writer.write(new String(bArr, Charsets.toCharset(charset)));
        }
    }

    @Deprecated
    public static void write(char[] cArr, OutputStream outputStream) throws IOException {
        write(cArr, outputStream, Charset.defaultCharset());
    }

    public static void write(char[] cArr, OutputStream outputStream, String str) throws IOException {
        write(cArr, outputStream, Charsets.toCharset(str));
    }

    public static void write(char[] cArr, OutputStream outputStream, Charset charset) throws IOException {
        if (cArr != null) {
            outputStream.write(new String(cArr).getBytes(Charsets.toCharset(charset)));
        }
    }

    public static void write(char[] cArr, Writer writer) throws IOException {
        if (cArr != null) {
            writer.write(cArr);
        }
    }

    public static void writeChunked(byte[] bArr, OutputStream outputStream) throws IOException {
        if (bArr != null) {
            int length = bArr.length;
            int i = 0;
            while (length > 0) {
                int min = Math.min(length, 4096);
                outputStream.write(bArr, i, min);
                length -= min;
                i += min;
            }
        }
    }

    public static void writeChunked(char[] cArr, Writer writer) throws IOException {
        if (cArr != null) {
            int length = cArr.length;
            int i = 0;
            while (length > 0) {
                int min = Math.min(length, 4096);
                writer.write(cArr, i, min);
                length -= min;
                i += min;
            }
        }
    }

    @Deprecated
    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream) throws IOException {
        writeLines(collection, str, outputStream, Charset.defaultCharset());
    }

    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream, String str2) throws IOException {
        writeLines(collection, str, outputStream, Charsets.toCharset(str2));
    }

    public static void writeLines(Collection<?> collection, String str, OutputStream outputStream, Charset charset) throws IOException {
        if (collection != null) {
            String str2 = str;
            if (str == null) {
                str2 = LINE_SEPARATOR;
            }
            Charset charset2 = Charsets.toCharset(charset);
            for (Object obj : collection) {
                if (obj != null) {
                    outputStream.write(obj.toString().getBytes(charset2));
                }
                outputStream.write(str2.getBytes(charset2));
            }
        }
    }

    public static void writeLines(Collection<?> collection, String str, Writer writer) throws IOException {
        if (collection != null) {
            String str2 = str;
            if (str == null) {
                str2 = LINE_SEPARATOR;
            }
            for (Object obj : collection) {
                if (obj != null) {
                    writer.write(obj.toString());
                }
                writer.write(str2);
            }
        }
    }
}
