package p1727n3.p1807k.p1817f;

import android.util.Base64;
import com.tenor.android.core.constant.StringConstant;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.f.e */
/* loaded from: classes-dex2jar.jar:n3/k/f/e.class */
public final class C26522e {

    /* renamed from: a */
    public final String f74315a;

    /* renamed from: b */
    public final String f74316b;

    /* renamed from: c */
    public final String f74317c;

    /* renamed from: d */
    public final List<List<byte[]>> f74318d;

    /* renamed from: e */
    public final String f74319e;

    public C26522e(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f74315a = str;
        this.f74316b = str2;
        this.f74317c = str3;
        Objects.requireNonNull(list);
        this.f74318d = list;
        this.f74319e = str + StringConstant.DASH + str2 + StringConstant.DASH + str3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder m8728C = C22128a.m8728C("FontRequest {mProviderAuthority: ");
        m8728C.append(this.f74315a);
        m8728C.append(", mProviderPackage: ");
        m8728C.append(this.f74316b);
        m8728C.append(", mQuery: ");
        m8728C.append(this.f74317c);
        m8728C.append(", mCertificates:");
        sb.append(m8728C.toString());
        for (int i = 0; i < this.f74318d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f74318d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        return C22128a.m8618h(sb, "}", "mCertificatesArray: 0");
    }
}
