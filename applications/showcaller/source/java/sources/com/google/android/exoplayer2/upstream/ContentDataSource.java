package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/ContentDataSource.class */
public final class ContentDataSource extends AbstractC5475g {

    /* renamed from: f */
    private final ContentResolver f17674f;

    /* renamed from: g */
    private Uri f17675g;

    /* renamed from: h */
    private AssetFileDescriptor f17676h;

    /* renamed from: i */
    private FileInputStream f17677i;

    /* renamed from: j */
    private long f17678j;

    /* renamed from: k */
    private boolean f17679k;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException.class */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f17674f = context.getContentResolver();
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        try {
            Uri uri = c5481l.f17746a;
            this.f17675g = uri;
            m19024f(c5481l);
            AssetFileDescriptor openAssetFileDescriptor = this.f17674f.openAssetFileDescriptor(uri, "r");
            this.f17676h = openAssetFileDescriptor;
            if (openAssetFileDescriptor == null) {
                throw new FileNotFoundException("Could not open file descriptor for: " + uri);
            }
            FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
            this.f17677i = fileInputStream;
            long startOffset = openAssetFileDescriptor.getStartOffset();
            long skip = fileInputStream.skip(c5481l.f17751f + startOffset) - startOffset;
            if (skip != c5481l.f17751f) {
                throw new EOFException();
            }
            long j = c5481l.f17752g;
            char c = 65535;
            if (j != -1) {
                this.f17678j = j;
            } else {
                long length = openAssetFileDescriptor.getLength();
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size != 0) {
                        c = size - channel.position();
                    }
                    this.f17678j = c;
                } else {
                    this.f17678j = length - skip;
                }
            }
            this.f17679k = true;
            m19023g(c5481l);
            return this.f17678j;
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        return this.f17675g;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        this.f17675g = null;
        try {
            try {
                FileInputStream fileInputStream = this.f17677i;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f17677i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f17676h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f17676h = null;
                        if (!this.f17679k) {
                            return;
                        }
                        this.f17679k = false;
                        m19025e();
                    } catch (IOException e) {
                        throw new ContentDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f17677i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f17676h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3);
                }
            } finally {
                this.f17676h = null;
                if (this.f17679k) {
                    this.f17679k = false;
                    m19025e();
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f17678j;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new ContentDataSourceException(e);
            }
        }
        int read = ((FileInputStream) C5515h0.m18833g(this.f17677i)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f17678j != -1) {
                throw new ContentDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f17678j;
        if (j2 != -1) {
            this.f17678j = j2 - read;
        }
        m19026d(read);
        return read;
    }
}
