package p012b.p042i.p051m;

import android.util.Base64;
import java.util.List;
import p012b.p042i.p053o.C0948h;
/* renamed from: b.i.m.a */
/* loaded from: classes-dex2jar.jar:b/i/m/a.class */
public final class C0923a {

    /* renamed from: a */
    public final String f4132a;

    /* renamed from: b */
    public final String f4133b;

    /* renamed from: c */
    public final String f4134c;

    /* renamed from: d */
    public final List<List<byte[]>> f4135d;

    /* renamed from: e */
    public final int f4136e = 0;

    /* renamed from: f */
    public final String f4137f;

    public C0923a(String str, String str2, String str3, List<List<byte[]>> list) {
        C0948h.m35442a(str);
        this.f4132a = str;
        C0948h.m35442a(str2);
        this.f4133b = str2;
        C0948h.m35442a(str3);
        this.f4134c = str3;
        C0948h.m35442a(list);
        this.f4135d = list;
        this.f4137f = this.f4132a + "-" + this.f4133b + "-" + this.f4134c;
    }

    /* renamed from: a */
    public List<List<byte[]>> m35493a() {
        return this.f4135d;
    }

    /* renamed from: b */
    public int m35492b() {
        return this.f4136e;
    }

    /* renamed from: c */
    public String m35491c() {
        return this.f4137f;
    }

    /* renamed from: d */
    public String m35490d() {
        return this.f4132a;
    }

    /* renamed from: e */
    public String m35489e() {
        return this.f4133b;
    }

    /* renamed from: f */
    public String m35488f() {
        return this.f4134c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f4132a + ", mProviderPackage: " + this.f4133b + ", mQuery: " + this.f4134c + ", mCertificates:");
        for (int i = 0; i < this.f4135d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f4135d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f4136e);
        return sb.toString();
    }
}
