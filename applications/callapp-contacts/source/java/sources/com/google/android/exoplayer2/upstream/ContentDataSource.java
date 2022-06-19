package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.google.android.exoplayer2.util.C11599af;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/ContentDataSource.class */
public final class ContentDataSource extends AbstractC11562d {

    /* renamed from: a */
    private final ContentResolver f38330a;

    /* renamed from: b */
    private Uri f38331b;

    /* renamed from: c */
    private AssetFileDescriptor f38332c;

    /* renamed from: d */
    private FileInputStream f38333d;

    /* renamed from: e */
    private long f38334e;

    /* renamed from: f */
    private boolean f38335f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException.class */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f38330a = context.getContentResolver();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws ContentDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f38334e;
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
        int read = ((FileInputStream) C11599af.m19974a(this.f38333d)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f38334e != -1) {
                throw new ContentDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f38334e;
        if (j2 != -1) {
            this.f38334e = j2 - read;
        }
        m20084a(read);
        return read;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws ContentDataSourceException {
        try {
            Uri uri = c11570j.f38512a;
            this.f38331b = uri;
            m20082d();
            AssetFileDescriptor openAssetFileDescriptor = this.f38330a.openAssetFileDescriptor(uri, "r");
            this.f38332c = openAssetFileDescriptor;
            if (openAssetFileDescriptor == null) {
                throw new FileNotFoundException("Could not open file descriptor for: ".concat(String.valueOf(uri)));
            }
            FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
            this.f38333d = fileInputStream;
            long startOffset = openAssetFileDescriptor.getStartOffset();
            long skip = fileInputStream.skip(c11570j.f38518g + startOffset) - startOffset;
            if (skip != c11570j.f38518g) {
                throw new EOFException();
            }
            if (c11570j.f38519h != -1) {
                this.f38334e = c11570j.f38519h;
            } else {
                long length = openAssetFileDescriptor.getLength();
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.f38334e = -1L;
                    } else {
                        long position = size - channel.position();
                        this.f38334e = position;
                        if (position < 0) {
                            throw new EOFException();
                        }
                    }
                } else {
                    long j = length - skip;
                    this.f38334e = j;
                    if (j < 0) {
                        throw new EOFException();
                    }
                }
            }
            this.f38335f = true;
            m20083b(c11570j);
            return this.f38334e;
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        return this.f38331b;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    public final void mo20031c() throws ContentDataSourceException {
        this.f38331b = null;
        try {
            try {
                FileInputStream fileInputStream = this.f38333d;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f38333d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f38332c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f38332c = null;
                        if (!this.f38335f) {
                            return;
                        }
                        this.f38335f = false;
                        m20081e();
                    } catch (IOException e) {
                        throw new ContentDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f38333d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f38332c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3);
                }
            } finally {
                this.f38332c = null;
                if (this.f38335f) {
                    this.f38335f = false;
                    m20081e();
                }
            }
        }
    }
}
