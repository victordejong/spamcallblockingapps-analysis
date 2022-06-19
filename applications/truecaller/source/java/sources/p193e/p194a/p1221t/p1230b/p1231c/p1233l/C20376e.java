package p193e.p194a.p1221t.p1230b.p1231c.p1233l;

import android.os.Handler;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.sdk.clients.VerificationCallback;
import com.truecaller.android.sdk.models.CreateInstallationModel;
import java.util.Map;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i;
import p193e.p194a.p1221t.p1230b.p1231c.C20363h;
import p193e.p194a.p1221t.p1230b.p1231c.p1234m.C20379a;
/* renamed from: e.a.t.b.c.l.e */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/l/e.class */
public class C20376e extends C20377f {

    /* renamed from: h */
    public Runnable f57243h;

    /* renamed from: i */
    public Handler f57244i;

    /* renamed from: j */
    public String f57245j;

    /* renamed from: k */
    public String f57246k;

    public C20376e(String str, CreateInstallationModel createInstallationModel, VerificationCallback verificationCallback, C20379a c20379a, boolean z, AbstractC20364i abstractC20364i, Handler handler) {
        super(str, createInstallationModel, verificationCallback, z, abstractC20364i, c20379a, 3);
        this.f57244i = handler;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20377f
    /* renamed from: c */
    public void mo11221c(Map<String, Object> map) {
        if (!"call".equals((String) map.get(AnalyticsConstants.METHOD))) {
            super.mo11221c(map);
            return;
        }
        this.f57245j = (String) map.get("pattern");
        Double d = (Double) map.get("tokenTtl");
        Double d2 = d;
        if (d == null) {
            d2 = Double.valueOf(40.0d);
        }
        C20363h c20363h = new C20363h();
        c20363h.f57217a.put(RemoteMessageConst.TTL, d2.toString());
        this.f57234a.onRequestSuccess(this.f57235b, c20363h);
        Runnable runnable = new Runnable() { // from class: e.a.t.b.c.l.a
            @Override // java.lang.Runnable
            public final void run() {
                C20376e.this.m11222d(true);
            }
        };
        this.f57243h = runnable;
        this.f57244i.postDelayed(runnable, d2.longValue() * 1000);
    }

    /* renamed from: d */
    public void m11222d(boolean z) {
        String[] split;
        if (z || this.f57245j != null) {
            this.f57249f.mo11197a();
            this.f57249f.mo11196b();
            if (this.f57246k != null && this.f57245j != null) {
                AbstractC20364i abstractC20364i = this.f57249f;
                StringBuilder sb = new StringBuilder();
                for (String str : this.f57245j.split(",")) {
                    String str2 = this.f57246k;
                    sb.append(str2.charAt((str2.length() - Integer.parseInt(str)) - 1));
                }
                abstractC20364i.mo11185m(sb.toString());
                this.f57234a.onRequestSuccess(4, null);
            }
            Handler handler = this.f57244i;
            if (handler == null) {
                return;
            }
            handler.removeCallbacks(this.f57243h);
            this.f57244i = null;
        }
    }
}
