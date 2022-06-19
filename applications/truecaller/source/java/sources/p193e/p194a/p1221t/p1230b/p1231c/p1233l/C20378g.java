package p193e.p194a.p1221t.p1230b.p1231c.p1233l;

import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.models.VerifyInstallationModel;
import java.util.Map;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i;
import p193e.p194a.p1221t.p1230b.p1231c.C20363h;
/* renamed from: e.a.t.b.c.l.g */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/l/g.class */
public class C20378g extends AbstractC20373b<Map<String, Object>> {

    /* renamed from: d */
    public TrueProfile f57251d;

    /* renamed from: e */
    public AbstractC20364i f57252e;

    /* renamed from: f */
    public String f57253f;

    /* renamed from: g */
    public VerifyInstallationModel f57254g;

    public C20378g(String str, VerifyInstallationModel verifyInstallationModel, VerificationCallback verificationCallback, TrueProfile trueProfile, AbstractC20364i abstractC20364i, boolean z) {
        super(verificationCallback, z, 5);
        this.f57251d = trueProfile;
        this.f57252e = abstractC20364i;
        this.f57253f = str;
        this.f57254g = verifyInstallationModel;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1233l.AbstractC20373b
    /* renamed from: a */
    public void mo11220a() {
        this.f57252e.mo11190h(this.f57253f, this.f57254g, this);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1233l.AbstractC20373b
    /* renamed from: b */
    public void mo11219b(Map<String, Object> map) {
        Map<String, Object> map2 = map;
        if (!map2.containsKey("accessToken")) {
            this.f57234a.onRequestFailure(this.f57235b, new TrueException(1, TrueException.TYPE_UNKNOWN_MESSAGE));
            return;
        }
        String str = (String) map2.get("accessToken");
        C20363h c20363h = new C20363h();
        c20363h.f57217a.put("accessToken", str);
        this.f57234a.onRequestSuccess(this.f57235b, c20363h);
        this.f57252e.mo11191g(str, this.f57251d);
    }
}
