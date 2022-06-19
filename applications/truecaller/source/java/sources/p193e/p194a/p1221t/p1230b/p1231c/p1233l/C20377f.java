package p193e.p194a.p1221t.p1230b.p1231c.p1233l;

import android.content.IntentFilter;
import com.google.android.gms.internal.auth_api_phone.zzu;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.models.CreateInstallationModel;
import java.util.Map;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i;
import p193e.p194a.p1221t.p1230b.p1231c.C20363h;
import p193e.p194a.p1221t.p1230b.p1231c.p1234m.C20379a;
import p193e.p194a.p1221t.p1230b.p1231c.p1234m.C20380b;
/* renamed from: e.a.t.b.c.l.f */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/l/f.class */
public class C20377f extends AbstractC20373b {

    /* renamed from: d */
    public final String f57247d;

    /* renamed from: e */
    public final CreateInstallationModel f57248e;

    /* renamed from: f */
    public final AbstractC20364i f57249f;

    /* renamed from: g */
    public final C20379a f57250g;

    public C20377f(String str, CreateInstallationModel createInstallationModel, VerificationCallback verificationCallback, C20379a c20379a, boolean z, AbstractC20364i abstractC20364i) {
        super(verificationCallback, z, 1);
        this.f57247d = str;
        this.f57248e = createInstallationModel;
        this.f57249f = abstractC20364i;
        this.f57250g = c20379a;
    }

    public C20377f(String str, CreateInstallationModel createInstallationModel, VerificationCallback verificationCallback, boolean z, AbstractC20364i abstractC20364i, C20379a c20379a, int i) {
        super(verificationCallback, z, i);
        this.f57247d = str;
        this.f57248e = createInstallationModel;
        this.f57249f = abstractC20364i;
        this.f57250g = c20379a;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1233l.AbstractC20373b
    /* renamed from: a */
    public void mo11220a() {
        this.f57248e.setVerificationAttempt(2);
        this.f57249f.mo11194d(this.f57247d, this.f57248e, this);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1233l.AbstractC20373b
    /* renamed from: b */
    public void mo11219b(Object obj) {
        Map<String, Object> map = (Map) obj;
        Double d = (Double) map.get(UpdateKey.STATUS);
        if (d.doubleValue() == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            this.f57249f.mo11189i((String) map.get("verificationToken"), System.currentTimeMillis());
            mo11221c(map);
        } else if (d.doubleValue() != 1.0d) {
            this.f57234a.onRequestFailure(this.f57235b, new TrueException(1, TrueException.TYPE_UNKNOWN_MESSAGE));
        } else {
            this.f57249f.mo11193e((String) map.get("accessToken"), this.f57234a);
        }
    }

    /* renamed from: c */
    public void mo11221c(Map<String, Object> map) {
        Double d = (Double) map.get("tokenTtl");
        Double d2 = d;
        if (d == null) {
            d2 = Double.valueOf(300.0d);
        }
        C20363h c20363h = new C20363h();
        c20363h.f57217a.put(RemoteMessageConst.TTL, d2.toString());
        this.f57234a.onRequestSuccess(1, c20363h);
        C20379a c20379a = this.f57250g;
        VerificationCallback verificationCallback = this.f57234a;
        if (c20379a.f57255a.get() != null) {
            new zzu(c20379a.f57255a.get()).startSmsRetriever();
            c20379a.f57255a.get().registerReceiver(new C20380b(verificationCallback), new IntentFilter("com.google.android.gms.auth.api.phone.SMS_RETRIEVED"));
        }
    }
}
