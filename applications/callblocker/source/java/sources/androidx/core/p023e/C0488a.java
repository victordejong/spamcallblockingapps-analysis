package androidx.core.p023e;

import android.util.Base64;
import androidx.core.p025g.C0527f;
import java.util.List;
/* renamed from: androidx.core.e.a */
/* loaded from: classes-dex2jar.jar:androidx/core/e/a.class */
public final class C0488a {

    /* renamed from: a */
    private final String f1859a;

    /* renamed from: b */
    private final String f1860b;

    /* renamed from: c */
    private final String f1861c;

    /* renamed from: d */
    private final List<List<byte[]>> f1862d;

    /* renamed from: e */
    private final int f1863e = 0;

    /* renamed from: f */
    private final String f1864f;

    public C0488a(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f1859a = (String) C0527f.m20644a(str);
        this.f1860b = (String) C0527f.m20644a(str2);
        this.f1861c = (String) C0527f.m20644a(str3);
        this.f1862d = (List) C0527f.m20644a(list);
        this.f1864f = this.f1859a + "-" + this.f1860b + "-" + this.f1861c;
    }

    /* renamed from: a */
    public String m20724a() {
        return this.f1859a;
    }

    /* renamed from: b */
    public String m20723b() {
        return this.f1860b;
    }

    /* renamed from: c */
    public String m20722c() {
        return this.f1861c;
    }

    /* renamed from: d */
    public List<List<byte[]>> m20721d() {
        return this.f1862d;
    }

    /* renamed from: e */
    public int m20720e() {
        return this.f1863e;
    }

    /* renamed from: f */
    public String m20719f() {
        return this.f1864f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1859a + ", mProviderPackage: " + this.f1860b + ", mQuery: " + this.f1861c + ", mCertificates:");
        for (int i = 0; i < this.f1862d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f1862d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f1863e);
        return sb.toString();
    }
}
