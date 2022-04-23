package androidx.media2.exoplayer.external.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.media2.exoplayer.external.util.ac;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource.class */
public final class ContentDataSource extends d {

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f4013a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f4014b;

    /* renamed from: c  reason: collision with root package name */
    private AssetFileDescriptor f4015c;

    /* renamed from: d  reason: collision with root package name */
    private FileInputStream f4016d;
    private long e;
    private boolean f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException.class */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f4013a = context.getContentResolver();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
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
        int read = ((FileInputStream) ac.a(this.f4016d)).read(bArr, i, i2);
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

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws ContentDataSourceException {
        try {
            Uri uri = hVar.f4064a;
            this.f4014b = uri;
            d();
            AssetFileDescriptor openAssetFileDescriptor = this.f4013a.openAssetFileDescriptor(uri, "r");
            this.f4015c = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f4016d = fileInputStream;
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(hVar.f + startOffset) - startOffset;
                if (skip == hVar.f) {
                    long j = -1;
                    if (hVar.g != -1) {
                        this.e = hVar.g;
                    } else {
                        long length = openAssetFileDescriptor.getLength();
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size != 0) {
                                j = size - channel.position();
                            }
                            this.e = j;
                        } else {
                            this.e = length - skip;
                        }
                    }
                    this.f = true;
                    b(hVar);
                    return this.e;
                }
                throw new EOFException();
            }
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
            sb.append("Could not open file descriptor for: ");
            sb.append(valueOf);
            throw new FileNotFoundException(sb.toString());
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f4014b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws ContentDataSourceException {
        this.f4014b = null;
        try {
            try {
                FileInputStream fileInputStream = this.f4016d;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f4016d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f4015c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f4015c = null;
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
            this.f4016d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f4015c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3);
                }
            } finally {
                this.f4015c = null;
                if (this.f) {
                    this.f = false;
                    e();
                }
            }
        }
    }
}
