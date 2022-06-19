package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.tenor.android.core.constant.StringConstant;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.p1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/e.class */
public final class C24692e extends AbstractC24698g {

    /* renamed from: e */
    public final AssetManager f69187e;

    /* renamed from: f */
    public Uri f69188f;

    /* renamed from: g */
    public InputStream f69189g;

    /* renamed from: h */
    public long f69190h;

    /* renamed from: i */
    public boolean f69191i;

    /* renamed from: e.m.a.c.p1.e$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/e$a.class */
    public static final class C24693a extends IOException {
        public C24693a(IOException iOException) {
            super(iOException);
        }
    }

    public C24692e(Context context) {
        super(false);
        this.f69187e = context.getAssets();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws C24693a {
        String str;
        try {
            Uri uri = c24742n.f69328a;
            this.f69188f = uri;
            String path = uri.getPath();
            Objects.requireNonNull(path);
            if (path.startsWith("/android_asset/")) {
                str = path.substring(15);
            } else {
                str = path;
                if (path.startsWith(StringConstant.SLASH)) {
                    str = path.substring(1);
                }
            }
            m4766f(c24742n);
            InputStream open = this.f69187e.open(str, 1);
            this.f69189g = open;
            if (open.skip(c24742n.f69333f) < c24742n.f69333f) {
                throw new EOFException();
            }
            long j = c24742n.f69334g;
            if (j != -1) {
                this.f69190h = j;
            } else {
                long available = this.f69189g.available();
                this.f69190h = available;
                if (available == 2147483647L) {
                    this.f69190h = -1L;
                }
            }
            this.f69191i = true;
            m4765g(c24742n);
            return this.f69190h;
        } catch (IOException e) {
            throw new C24693a(e);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws C24693a {
        this.f69188f = null;
        try {
            try {
                InputStream inputStream = this.f69189g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f69189g = null;
                if (!this.f69191i) {
                    return;
                }
                this.f69191i = false;
                m4767e();
            } catch (IOException e) {
                throw new C24693a(e);
            }
        } catch (Throwable th) {
            this.f69189g = null;
            if (this.f69191i) {
                this.f69191i = false;
                m4767e();
            }
            throw th;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f69188f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws C24693a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f69190h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new C24693a(e);
            }
        }
        InputStream inputStream = this.f69189g;
        int i3 = C24773d0.f69427a;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            if (this.f69190h != -1) {
                throw new C24693a(new EOFException());
            }
            return -1;
        }
        long j2 = this.f69190h;
        if (j2 != -1) {
            this.f69190h = j2 - read;
        }
        m4768d(read);
        return read;
    }
}
