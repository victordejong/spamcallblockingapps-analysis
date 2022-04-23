package p131c.p161d.p170b.p224d.p238d;

import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.d.p */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/p.class */
public class C3324p {

    /* renamed from: d */
    public static final C3324p f12047d = new C3324p(true, null, null);

    /* renamed from: a */
    public final boolean f12048a;

    /* renamed from: b */
    public final String f12049b;

    /* renamed from: c */
    public final Throwable f12050c;

    public C3324p(boolean z, String str, Throwable th) {
        this.f12048a = z;
        this.f12049b = str;
        this.f12050c = th;
    }

    /* renamed from: a */
    public static C3324p m27252a(String str) {
        return new C3324p(false, str, null);
    }

    /* renamed from: a */
    public static C3324p m27250a(String str, Throwable th) {
        return new C3324p(false, str, th);
    }

    /* renamed from: a */
    public static C3324p m27249a(Callable<String> callable) {
        return new C3325q(callable);
    }

    /* renamed from: a */
    public static String m27251a(String str, AbstractBinderC3317i iVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, Hex.m17077a(AndroidUtilsLight.m17121a("SHA-1").digest(iVar.zza())), Boolean.valueOf(z), "12451009.false");
    }

    /* renamed from: c */
    public static C3324p m27247c() {
        return f12047d;
    }

    /* renamed from: a */
    public String mo27246a() {
        return this.f12049b;
    }

    /* renamed from: b */
    public final void m27248b() {
        if (!this.f12048a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.f12050c != null) {
                Log.d("GoogleCertificatesRslt", mo27246a(), this.f12050c);
            } else {
                Log.d("GoogleCertificatesRslt", mo27246a());
            }
        }
    }
}
