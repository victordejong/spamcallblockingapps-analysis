package p020b.p041h.p046h;

import android.util.Base64;
import java.util.List;
import p020b.p041h.p049k.C1597h;
/* renamed from: b.h.h.d */
/* loaded from: classes-dex2jar.jar:b/h/h/d.class */
public final class C1549d {

    /* renamed from: a */
    private final String f6090a;

    /* renamed from: b */
    private final String f6091b;

    /* renamed from: c */
    private final String f6092c;

    /* renamed from: d */
    private final List<List<byte[]>> f6093d;

    /* renamed from: e */
    private final int f6094e = 0;

    /* renamed from: f */
    private final String f6095f;

    public C1549d(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f6090a = (String) C1597h.m29659e(str);
        this.f6091b = (String) C1597h.m29659e(str2);
        this.f6092c = (String) C1597h.m29659e(str3);
        this.f6093d = (List) C1597h.m29659e(list);
        this.f6095f = m29756a(str, str2, str3);
    }

    /* renamed from: a */
    private String m29756a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    /* renamed from: b */
    public List<List<byte[]>> m29755b() {
        return this.f6093d;
    }

    /* renamed from: c */
    public int m29754c() {
        return this.f6094e;
    }

    /* renamed from: d */
    public String m29753d() {
        return this.f6095f;
    }

    /* renamed from: e */
    public String m29752e() {
        return this.f6090a;
    }

    /* renamed from: f */
    public String m29751f() {
        return this.f6091b;
    }

    /* renamed from: g */
    public String m29750g() {
        return this.f6092c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f6090a + ", mProviderPackage: " + this.f6091b + ", mQuery: " + this.f6092c + ", mCertificates:");
        for (int i = 0; i < this.f6093d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f6093d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f6094e);
        return sb.toString();
    }
}
