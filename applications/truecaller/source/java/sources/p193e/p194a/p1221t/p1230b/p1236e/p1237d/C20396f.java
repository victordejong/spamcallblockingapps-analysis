package p193e.p194a.p1221t.p1230b.p1236e.p1237d;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.sdk.C2859R;
import com.truecaller.android.sdk.clients.callVerification.RequestPermissionHandler;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import e.m.d.y.n;
import java.util.List;
import p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i;
import p193e.p194a.p1221t.p1230b.p1231c.p1232k.AbstractC20367a;
import p193e.p194a.p1221t.p1230b.p1231c.p1232k.C20368b;
import p193e.p194a.p1221t.p1230b.p1231c.p1232k.C20369c;
import p193e.p194a.p1221t.p1230b.p1231c.p1232k.C20370d;
import p193e.p194a.p1221t.p1230b.p1231c.p1233l.C20376e;
import p193e.p194a.p1221t.p1230b.p1231c.p1234m.C20379a;
import p193e.p194a.p1221t.p1230b.p1235d.AbstractC20382b;
import p193e.p194a.p1221t.p1230b.p1235d.AbstractC20383c;
import p193e.p194a.p712e4.AbstractC13501r;
/* renamed from: e.a.t.b.e.d.f */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/e/d/f.class */
public final class C20396f extends AbstractC20393c implements AbstractC20364i.AbstractC20365a {

    /* renamed from: i */
    public final AbstractC20364i f57282i;

    /* renamed from: j */
    public final AbstractC20367a f57283j;

    /* renamed from: k */
    public final boolean f57284k;

    /* renamed from: l */
    public C20370d f57285l;

    /* renamed from: m */
    public RequestPermissionHandler f57286m;

    /* renamed from: n */
    public Handler f57287n;

    public C20396f(Context context, String str, TcOAuthCallback tcOAuthCallback, boolean z) {
        super(context, str, tcOAuthCallback, 2);
        this.f57284k = z;
        String string = context.getString(C2859R.string.sdk_variant);
        String string2 = context.getString(C2859R.string.sdk_variant_version);
        this.f57282i = new C20397g(this, (AbstractC20382b) n.A("https://outline.truecaller.com/v1/", AbstractC20382b.class, string, string2), (AbstractC20383c) n.A("https://api4.truecaller.com/v1/otp/installation/", AbstractC20383c.class, string, string2), tcOAuthCallback, new C20379a(this.f57267a));
        this.f57283j = Build.VERSION.SDK_INT >= 28 ? new C20369c(context) : new C20368b(context);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    /* renamed from: a */
    public void mo11205a() {
        this.f57283j.mo11223a();
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    /* renamed from: b */
    public boolean mo11204b() {
        boolean z;
        if (m11198h("android.permission.READ_PHONE_STATE") && m11198h("android.permission.READ_CALL_LOG")) {
            if (Build.VERSION.SDK_INT < 26 ? m11198h("android.permission.CALL_PHONE") : m11198h("android.permission.ANSWER_PHONE_CALLS")) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    /* renamed from: c */
    public List<String> mo11203c() {
        if (m11198h("android.permission.READ_PHONE_STATE")) {
            try {
                return AbstractC13501r.m21754B(this.f57267a, (TelephonyManager) this.f57267a.getSystemService(AnalyticsConstants.PHONE)).mo21755A();
            } catch (SecurityException e) {
                return null;
            }
        }
        return null;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    /* renamed from: d */
    public void mo11202d(C20376e c20376e) {
        TelephonyManager telephonyManager = (TelephonyManager) this.f57267a.getSystemService(AnalyticsConstants.PHONE);
        C20370d c20370d = new C20370d(c20376e);
        this.f57285l = c20370d;
        telephonyManager.listen(c20370d, 32);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    /* renamed from: e */
    public boolean mo11201e() {
        boolean z = false;
        if (Settings.Global.getInt(this.f57267a.getContentResolver(), "airplane_mode_on", 0) != 0) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    /* renamed from: f */
    public boolean mo11200f() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f57267a.getSystemService(AnalyticsConstants.PHONE);
        return telephonyManager != null && telephonyManager.getSimState() == 5;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    /* renamed from: g */
    public void mo11199g() {
        ((TelephonyManager) this.f57267a.getSystemService(AnalyticsConstants.PHONE)).listen(this.f57285l, 0);
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.AbstractC20364i.AbstractC20365a
    public Handler getHandler() {
        if (this.f57287n == null) {
            this.f57287n = new Handler();
        }
        return this.f57287n;
    }

    /* renamed from: h */
    public final boolean m11198h(String str) {
        return this.f57267a.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }
}
