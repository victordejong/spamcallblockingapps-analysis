package okhttp3.internal.cache;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import okhttp3.internal.Util;
import okhttp3.internal.cache.DiskLruCache;
import okio.BufferedSink;
import okio.Source;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Entry.class */
public final class DiskLruCache$Entry {
    final File[] cleanFiles;
    DiskLruCache$Editor currentEditor;
    final File[] dirtyFiles;
    final String key;
    final long[] lengths;
    boolean readable;
    long sequenceNumber;
    final /* synthetic */ DiskLruCache this$0;

    DiskLruCache$Entry(DiskLruCache diskLruCache, String str) {
        this.this$0 = diskLruCache;
        this.key = str;
        int i = diskLruCache.valueCount;
        this.lengths = new long[i];
        this.cleanFiles = new File[i];
        this.dirtyFiles = new File[i];
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i2 = 0; i2 < diskLruCache.valueCount; i2++) {
            sb.append(i2);
            this.cleanFiles[i2] = new File(diskLruCache.directory, sb.toString());
            sb.append(".tmp");
            this.dirtyFiles[i2] = new File(diskLruCache.directory, sb.toString());
            sb.setLength(length);
        }
    }

    private IOException invalidLengths(String[] strArr) {
        throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
    }

    void setLengths(String[] strArr) {
        if (strArr.length == this.this$0.valueCount) {
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.lengths[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw invalidLengths(strArr);
                }
            }
            return;
        }
        throw invalidLengths(strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DiskLruCache.Snapshot snapshot() {
        if (Thread.holdsLock(this.this$0)) {
            Closeable[] closeableArr = new Source[this.this$0.valueCount];
            long[] jArr = (long[]) this.lengths.clone();
            int i = 0;
            int i2 = 0;
            while (true) {
                try {
                    DiskLruCache diskLruCache = this.this$0;
                    if (i2 >= diskLruCache.valueCount) {
                        return new DiskLruCache.Snapshot(diskLruCache, this.key, this.sequenceNumber, closeableArr, jArr);
                    }
                    closeableArr[i2] = diskLruCache.fileSystem.source(this.cleanFiles[i2]);
                    i2++;
                } catch (FileNotFoundException e) {
                    while (true) {
                        DiskLruCache diskLruCache2 = this.this$0;
                        if (i >= diskLruCache2.valueCount || closeableArr[i] == null) {
                            try {
                                diskLruCache2.removeEntry(this);
                                return null;
                            } catch (IOException e2) {
                                return null;
                            }
                        } else {
                            Util.closeQuietly(closeableArr[i]);
                            i++;
                        }
                    }
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    void writeLengths(BufferedSink bufferedSink) {
        for (long j : this.lengths) {
            bufferedSink.writeByte(32).writeDecimalLong(j);
        }
    }
}
