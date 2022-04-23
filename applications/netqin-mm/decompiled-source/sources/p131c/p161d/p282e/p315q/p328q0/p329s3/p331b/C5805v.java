package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.common.p493io.BaseEncoding;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6272l;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.C9248i;
import p530d.p531a.C9260k0;
import p530d.p531a.p538y0.C9622c;
/* renamed from: c.d.e.q.q0.s3.b.v */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/v.class */
public class C5805v {

    /* renamed from: a */
    public final C5128c f19054a;

    public C5805v(C5128c cVar) {
        this.f19054a = cVar;
    }

    /* renamed from: a */
    public static String m22989a(PackageManager packageManager, String str) {
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            if (!(packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length == 0 || packageInfo.signatures[0] == null)) {
                return m22988a(packageInfo.signatures[0]);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m22988a(Signature signature) {
        try {
            return BaseEncoding.m7913c().mo7898b().m7917a(MessageDigest.getInstance("SHA1").digest(signature.toByteArray()));
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: a */
    public C6272l.C6274b m22987a(AbstractC9225e eVar, C9260k0 k0Var) {
        return C6272l.m21698a(C9248i.m3084a(eVar, C9622c.m2165a(k0Var)));
    }

    /* renamed from: a */
    public C9260k0 m22990a() {
        C9260k0.AbstractC9266f a = C9260k0.AbstractC9266f.m3047a("X-Goog-Api-Key", C9260k0.f35813c);
        C9260k0.AbstractC9266f a2 = C9260k0.AbstractC9266f.m3047a("X-Android-Package", C9260k0.f35813c);
        C9260k0.AbstractC9266f a3 = C9260k0.AbstractC9266f.m3047a("X-Android-Cert", C9260k0.f35813c);
        C9260k0 k0Var = new C9260k0();
        String packageName = this.f19054a.m24468b().getPackageName();
        k0Var.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f>) a, (C9260k0.AbstractC9266f) this.f19054a.m24464d().m24447a());
        k0Var.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f>) a2, (C9260k0.AbstractC9266f) packageName);
        String a4 = m22989a(this.f19054a.m24468b().getPackageManager(), packageName);
        if (a4 != null) {
            k0Var.m3067a((C9260k0.AbstractC9266f<C9260k0.AbstractC9266f>) a3, (C9260k0.AbstractC9266f) a4);
        }
        return k0Var;
    }
}
