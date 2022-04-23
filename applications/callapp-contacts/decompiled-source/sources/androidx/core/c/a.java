package androidx.core.c;

import android.util.Base64;
import androidx.core.e.d;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/core/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final String f1785a;

    /* renamed from: b  reason: collision with root package name */
    final String f1786b;

    /* renamed from: c  reason: collision with root package name */
    final String f1787c;

    /* renamed from: d  reason: collision with root package name */
    final List<List<byte[]>> f1788d;
    final int e;
    final String f;

    public a(String str, String str2, String str3, int i) {
        String str4 = (String) d.a(str);
        this.f1785a = str4;
        String str5 = (String) d.a(str2);
        this.f1786b = str5;
        String str6 = (String) d.a(str3);
        this.f1787c = str6;
        this.f1788d = null;
        d.a(i != 0);
        this.e = i;
        this.f = str4 + VerificationLanguage.REGION_PREFIX + str5 + VerificationLanguage.REGION_PREFIX + str6;
    }

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        String str4 = (String) d.a(str);
        this.f1785a = str4;
        String str5 = (String) d.a(str2);
        this.f1786b = str5;
        String str6 = (String) d.a(str3);
        this.f1787c = str6;
        this.f1788d = (List) d.a(list);
        this.e = 0;
        this.f = str4 + VerificationLanguage.REGION_PREFIX + str5 + VerificationLanguage.REGION_PREFIX + str6;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1785a + ", mProviderPackage: " + this.f1786b + ", mQuery: " + this.f1787c + ", mCertificates:");
        for (int i = 0; i < this.f1788d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f1788d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.e);
        return sb.toString();
    }
}
