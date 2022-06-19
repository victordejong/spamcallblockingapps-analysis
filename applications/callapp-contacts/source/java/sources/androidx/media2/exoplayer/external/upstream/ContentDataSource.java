package androidx.media2.exoplayer.external.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource.class */
public final class ContentDataSource extends AbstractC1966d {

    /* renamed from: a */
    private final ContentResolver f7879a;

    /* renamed from: b */
    private Uri f7880b;

    /* renamed from: c */
    private AssetFileDescriptor f7881c;

    /* renamed from: d */
    private FileInputStream f7882d;

    /* renamed from: e */
    private long f7883e;

    /* renamed from: f */
    private boolean f7884f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException.class */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f7879a = context.getContentResolver();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws ContentDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f7883e;
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
        int read = ((FileInputStream) C1996ac.m41659a(this.f7882d)).read(bArr, i, i2);
        if (read == -1) {
            if (this.f7883e != -1) {
                throw new ContentDataSourceException(new EOFException());
            }
            return -1;
        }
        long j2 = this.f7883e;
        if (j2 != -1) {
            this.f7883e = j2 - read;
        }
        m41743a(read);
        return read;
    }

    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws ContentDataSourceException {
        try {
            Uri uri = c1971h.f7952a;
            this.f7880b = uri;
            m41741d();
            AssetFileDescriptor openAssetFileDescriptor = this.f7879a.openAssetFileDescriptor(uri, "r");
            this.f7881c = openAssetFileDescriptor;
            if (openAssetFileDescriptor == null) {
                String valueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                sb.append("Could not open file descriptor for: ");
                sb.append(valueOf);
                throw new FileNotFoundException(sb.toString());
            }
            FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
            this.f7882d = fileInputStream;
            long startOffset = openAssetFileDescriptor.getStartOffset();
            long skip = fileInputStream.skip(c1971h.f7957f + startOffset) - startOffset;
            if (skip != c1971h.f7957f) {
                throw new EOFException();
            }
            char c = 65535;
            if (c1971h.f7958g != -1) {
                this.f7883e = c1971h.f7958g;
            } else {
                long length = openAssetFileDescriptor.getLength();
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size != 0) {
                        c = size - channel.position();
                    }
                    this.f7883e = c;
                } else {
                    this.f7883e = length - skip;
                }
            }
            this.f7884f = true;
            m41742b(c1971h);
            return this.f7883e;
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f7880b;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws ContentDataSourceException {
        this.f7880b = null;
        try {
            try {
                FileInputStream fileInputStream = this.f7882d;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f7882d = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f7881c;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f7881c = null;
                        if (!this.f7884f) {
                            return;
                        }
                        this.f7884f = false;
                        m41740e();
                    } catch (IOException e) {
                        throw new ContentDataSourceException(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new ContentDataSourceException(e2);
            }
        } catch (Throwable th) {
            this.f7882d = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f7881c;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new ContentDataSourceException(e3);
                }
            } finally {
                this.f7881c = null;
                if (this.f7884f) {
                    this.f7884f = false;
                    m41740e();
                }
            }
        }
    }
}
