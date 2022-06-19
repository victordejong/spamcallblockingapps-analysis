package p130j0;

import android.support.p012v4.media.C0082b;
import android.util.Base64;
import java.util.List;
import java.util.Objects;
/* renamed from: j0.e */
/* loaded from: classes-dex2jar.jar:j0/e.class */
public final class C3150e {

    /* renamed from: a */
    public final String f10598a;

    /* renamed from: b */
    public final String f10599b;

    /* renamed from: c */
    public final String f10600c;

    /* renamed from: d */
    public final List<List<byte[]>> f10601d;

    /* renamed from: e */
    public final String f10602e;

    public C3150e(String str, String str2, String str3, List<List<byte[]>> list) {
        Objects.requireNonNull(str);
        this.f10598a = str;
        Objects.requireNonNull(str2);
        this.f10599b = str2;
        this.f10600c = str3;
        Objects.requireNonNull(list);
        this.f10601d = list;
        this.f10602e = str + "-" + str2 + "-" + str3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder m8752j = C0082b.m8752j("FontRequest {mProviderAuthority: ");
        m8752j.append(this.f10598a);
        m8752j.append(", mProviderPackage: ");
        m8752j.append(this.f10599b);
        m8752j.append(", mQuery: ");
        m8752j.append(this.f10600c);
        m8752j.append(", mCertificates:");
        sb.append(m8752j.toString());
        for (int i = 0; i < this.f10601d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f10601d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        return C0082b.m8754h(sb, "}", "mCertificatesArray: 0");
    }
}
