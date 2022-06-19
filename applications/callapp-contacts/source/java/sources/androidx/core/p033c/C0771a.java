package androidx.core.p033c;

import android.util.Base64;
import androidx.core.p036e.C0833d;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.List;
/* renamed from: androidx.core.c.a */
/* loaded from: classes-dex2jar.jar:androidx/core/c/a.class */
public final class C0771a {

    /* renamed from: a */
    final String f3429a;

    /* renamed from: b */
    final String f3430b;

    /* renamed from: c */
    final String f3431c;

    /* renamed from: d */
    final List<List<byte[]>> f3432d;

    /* renamed from: e */
    final int f3433e;

    /* renamed from: f */
    final String f3434f;

    public C0771a(String str, String str2, String str3, int i) {
        String str4 = (String) C0833d.m44410a(str);
        this.f3429a = str4;
        String str5 = (String) C0833d.m44410a(str2);
        this.f3430b = str5;
        String str6 = (String) C0833d.m44410a(str3);
        this.f3431c = str6;
        this.f3432d = null;
        C0833d.m44408a(i != 0);
        this.f3433e = i;
        this.f3434f = str4 + VerificationLanguage.REGION_PREFIX + str5 + VerificationLanguage.REGION_PREFIX + str6;
    }

    public C0771a(String str, String str2, String str3, List<List<byte[]>> list) {
        String str4 = (String) C0833d.m44410a(str);
        this.f3429a = str4;
        String str5 = (String) C0833d.m44410a(str2);
        this.f3430b = str5;
        String str6 = (String) C0833d.m44410a(str3);
        this.f3431c = str6;
        this.f3432d = (List) C0833d.m44410a(list);
        this.f3433e = 0;
        this.f3434f = str4 + VerificationLanguage.REGION_PREFIX + str5 + VerificationLanguage.REGION_PREFIX + str6;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f3429a + ", mProviderPackage: " + this.f3430b + ", mQuery: " + this.f3431c + ", mCertificates:");
        for (int i = 0; i < this.f3432d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f3432d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f3433e);
        return sb.toString();
    }
}
