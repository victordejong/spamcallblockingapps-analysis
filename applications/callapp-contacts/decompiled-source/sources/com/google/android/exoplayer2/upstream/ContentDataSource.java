package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.google.android.exoplayer2.util.af;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/ContentDataSource.class */
public final class ContentDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f22091a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f22092b;

    /* renamed from: c  reason: collision with root package name */
    private AssetFileDescriptor f22093c;

    /* renamed from: d  reason: collision with root package name */
    private FileInputStream f22094d;
    private long e;
    private boolean f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/ContentDataSource$ContentDataSourceException.class */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f22091a = context.getContentResolver();
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws ContentDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.e;
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
        int read = ((FileInputStream) af.a(this.f22094d)).read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.e;
            if (j2 != -1) {
                this.e = j2 - read;
            }
            a(read);
            return read;
        } else if (this.e == -1) {
            return -1;
        } else {
            throw new ContentDataSourceException(new EOFException());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws ContentDataSourceException {
        try {
            Uri uri = jVar.f22204a;
            this.f22092b = uri;
            d();
            AssetFileDescriptor openAssetFileDescriptor = this.f22091a.openAssetFileDescriptor(uri, "r");
            this.f22093c = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f22094d = fileInputStream;
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(jVar.g + startOffset) - startOffset;
                if (skip == jVar.g) {
                    if (jVar.h != -1) {
                        this.e = jVar.h;
                    } else {
                        long length = openAssetFileDescriptor.getLength();
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size == 0) {
                                this.e = -1L;
                            } else {
                                long position = size - channel.position();
                                this.e = position;
                                if (position < 0) {
                                    throw new EOFException();
                                }
                            }
                        } else {
                            long j = length - skip;
                            this.e = j;
                            if (j < 0) {
                                throw new EOFException();
                            }
                        }
                    }
                    this.f = true;
                    b(jVar);
                    return this.e;
                }
                throw new EOFException();
            }
            throw new FileNotFoundException("Could not open file descriptor for: ".concat(String.valueOf(uri)));
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22092b;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws ContentDataSourceException {
        this.f22092b = null;
        try {
            try {
                FileInputStream fileInputStream = this.f22094d;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f22094d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f22093c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f22093c = null;
                        if (this.f) {
                            this.f = false;
                            e();
                        }
                    } catch (IOException e) {
                        throw new ContentDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f22094d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f22093c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3);
                }
            } finally {
                this.f22093c = null;
                if (this.f) {
                    this.f = false;
                    e();
                }
            }
        }
    }
}
