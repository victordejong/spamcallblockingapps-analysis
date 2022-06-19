package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import android.util.Base64;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.IOException;
import java.net.URLDecoder;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.p1.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/i.class */
public final class C24735i extends AbstractC24698g {

    /* renamed from: e */
    public C24742n f69323e;

    /* renamed from: f */
    public byte[] f69324f;

    /* renamed from: g */
    public int f69325g;

    /* renamed from: h */
    public int f69326h;

    public C24735i() {
        super(false);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws IOException {
        m4766f(c24742n);
        this.f69323e = c24742n;
        this.f69326h = (int) c24742n.f69333f;
        Uri uri = c24742n.f69328a;
        String scheme = uri.getScheme();
        if (RemoteMessageConst.DATA.equals(scheme)) {
            String[] m4628B = C24773d0.m4628B(uri.getSchemeSpecificPart(), ",");
            if (m4628B.length != 2) {
                throw new C24560m0(C22128a.m8571s2("Unexpected URI format: ", uri));
            }
            String str = m4628B[1];
            if (m4628B[0].contains(";base64")) {
                try {
                    this.f69324f = Base64.decode(str, 0);
                } catch (IllegalArgumentException e) {
                    throw new C24560m0(C22128a.m8543z2("Error while parsing Base64 encoded string: ", str), e);
                }
            } else {
                this.f69324f = C24773d0.m4606r(URLDecoder.decode(str, "US-ASCII"));
            }
            long j = c24742n.f69334g;
            int length = j != -1 ? ((int) j) + this.f69326h : this.f69324f.length;
            this.f69325g = length;
            if (length > this.f69324f.length || this.f69326h > length) {
                this.f69324f = null;
                throw new C24741m(0);
            }
            m4765g(c24742n);
            return this.f69325g - this.f69326h;
        }
        throw new C24560m0(C22128a.m8543z2("Unsupported scheme: ", scheme));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() {
        if (this.f69324f != null) {
            this.f69324f = null;
            m4767e();
        }
        this.f69323e = null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        C24742n c24742n = this.f69323e;
        return c24742n != null ? c24742n.f69328a : null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f69325g - this.f69326h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.f69324f;
        int i4 = C24773d0.f69427a;
        System.arraycopy(bArr2, this.f69326h, bArr, i, min);
        this.f69326h += min;
        m4768d(min);
        return min;
    }
}
