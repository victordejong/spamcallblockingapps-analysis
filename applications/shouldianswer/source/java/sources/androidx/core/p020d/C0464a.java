package androidx.core.p020d;

import android.util.Base64;
import androidx.core.p022f.C0502e;
import java.util.List;
/* renamed from: androidx.core.d.a */
/* loaded from: classes-dex2jar.jar:androidx/core/d/a.class */
public final class C0464a {

    /* renamed from: a */
    private final String f1708a;

    /* renamed from: b */
    private final String f1709b;

    /* renamed from: c */
    private final String f1710c;

    /* renamed from: d */
    private final List<List<byte[]>> f1711d;

    /* renamed from: e */
    private final int f1712e = 0;

    /* renamed from: f */
    private final String f1713f;

    public C0464a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f1708a = (String) C0502e.m6462a(str);
        this.f1709b = (String) C0502e.m6462a(str2);
        this.f1710c = (String) C0502e.m6462a(str3);
        this.f1711d = (List) C0502e.m6462a(list);
        this.f1713f = this.f1708a + "-" + this.f1709b + "-" + this.f1710c;
    }

    /* renamed from: a */
    public String m6544a() {
        return this.f1708a;
    }

    /* renamed from: b */
    public String m6543b() {
        return this.f1709b;
    }

    /* renamed from: c */
    public String m6542c() {
        return this.f1710c;
    }

    /* renamed from: d */
    public List<List<byte[]>> m6541d() {
        return this.f1711d;
    }

    /* renamed from: e */
    public int m6540e() {
        return this.f1712e;
    }

    /* renamed from: f */
    public String m6539f() {
        return this.f1713f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1708a + ", mProviderPackage: " + this.f1709b + ", mQuery: " + this.f1710c + ", mCertificates:");
        for (int i = 0; i < this.f1711d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f1711d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f1712e);
        return sb.toString();
    }
}
