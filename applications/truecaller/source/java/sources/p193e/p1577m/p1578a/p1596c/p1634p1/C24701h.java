package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.p1.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h.class */
public final class C24701h extends AbstractC24698g {

    /* renamed from: e */
    public final ContentResolver f69210e;

    /* renamed from: f */
    public Uri f69211f;

    /* renamed from: g */
    public AssetFileDescriptor f69212g;

    /* renamed from: h */
    public FileInputStream f69213h;

    /* renamed from: i */
    public long f69214i;

    /* renamed from: j */
    public boolean f69215j;

    /* renamed from: e.m.a.c.p1.h$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h$a.class */
    public static class C24702a extends IOException {
        public C24702a(IOException iOException) {
            super(iOException);
        }
    }

    public C24701h(Context context) {
        super(false);
        this.f69210e = context.getContentResolver();
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws C24702a {
        try {
            Uri uri = c24742n.f69328a;
            this.f69211f = uri;
            m4766f(c24742n);
            AssetFileDescriptor openAssetFileDescriptor = this.f69210e.openAssetFileDescriptor(uri, "r");
            this.f69212g = openAssetFileDescriptor;
            if (openAssetFileDescriptor == null) {
                throw new FileNotFoundException("Could not open file descriptor for: " + uri);
            }
            FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
            this.f69213h = fileInputStream;
            long startOffset = openAssetFileDescriptor.getStartOffset();
            long skip = fileInputStream.skip(c24742n.f69333f + startOffset) - startOffset;
            if (skip != c24742n.f69333f) {
                throw new EOFException();
            }
            long j = c24742n.f69334g;
            char c = 65535;
            if (j != -1) {
                this.f69214i = j;
            } else {
                long length = openAssetFileDescriptor.getLength();
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size != 0) {
                        c = size - channel.position();
                    }
                    this.f69214i = c;
                } else {
                    this.f69214i = length - skip;
                }
            }
            this.f69215j = true;
            m4765g(c24742n);
            return this.f69214i;
        } catch (IOException e) {
            throw new C24702a(e);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws C24702a {
        this.f69211f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f69213h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f69213h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f69212g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.f69212g = null;
                        if (!this.f69215j) {
                            return;
                        }
                        this.f69215j = false;
                        m4767e();
                    } catch (IOException e) {
                        throw new C24702a(e);
                    }
                } finally {
                }
            } catch (IOException e2) {
                throw new C24702a(e2);
            }
        } catch (Throwable th) {
            this.f69213h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f69212g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new C24702a(e3);
                }
            } finally {
                this.f69212g = null;
                if (this.f69215j) {
                    this.f69215j = false;
                    m4767e();
                }
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f69211f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws C24702a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f69214i;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new C24702a(e);
            }
        }
        FileInputStream fileInputStream = this.f69213h;
        int i3 = C24773d0.f69427a;
        int read = fileInputStream.read(bArr, i, i2);
        if (read == -1) {
            if (this.f69214i != -1) {
                throw new C24702a(new EOFException());
            }
            return -1;
        }
        long j2 = this.f69214i;
        if (j2 != -1) {
            this.f69214i = j2 - read;
        }
        m4768d(read);
        return read;
    }
}
