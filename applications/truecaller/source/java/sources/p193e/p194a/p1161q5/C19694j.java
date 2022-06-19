package p193e.p194a.p1161q5;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.q5.j */
/* loaded from: classes15-dex2jar.jar:e/a/q5/j.class */
public final class C19694j extends AbstractC19316a implements AbstractC19693i {

    /* renamed from: b */
    public final int f54700b = 1;

    /* renamed from: c */
    public final String f54701c = "tc_whatsapp_caller_id_settings";

    @Inject
    public C19694j(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "tc_whatsapp_caller_id_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: J1 */
    public boolean mo12987J1() {
        return getBoolean("KEY_FIRST_USE_REGISTERED");
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: T */
    public void mo12986T(boolean z) {
        putBoolean("KEY_FIRST_USE_REGISTERED", z);
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: b */
    public void mo12985b(boolean z) {
        putBoolean("KEY_IS_NEW_FEATURE_SPLAT_DISMISSED", z);
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    public void clear() {
        for (String str : i.T(new String[]{"KEY_NOTIFICATIONS_SHOWN_COUNT", "KEY_NEW_FEATURE_PROMO_LAST_DISMISSED", "KEY_IS_NEW_FEATURE_SPLAT_DISMISSED", "KEY_IS_FEATURE_HIGHLIGHTED_VIA_SCROLL", "KEY_FIRST_USE_REGISTERED", "KEY_IS_ACTION_ON_HOME_TAB_PROMO_TAKEN"})) {
            remove(str);
        }
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: d */
    public void mo12984d(boolean z) {
        putBoolean("KEY_IS_FEATURE_HIGHLIGHTED_VIA_SCROLL", z);
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: e */
    public boolean mo12983e() {
        return getBoolean("KEY_IS_NEW_FEATURE_SPLAT_DISMISSED");
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: f */
    public void mo12982f(long j) {
        putLong("KEY_NEW_FEATURE_PROMO_LAST_DISMISSED", j);
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: g */
    public long mo12981g() {
        return getLong("KEY_NEW_FEATURE_PROMO_LAST_DISMISSED", 0L);
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: h */
    public boolean mo12980h() {
        return getBoolean("KEY_IS_ACTION_ON_HOME_TAB_PROMO_TAKEN");
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: i */
    public boolean mo12979i() {
        return getBoolean("KEY_IS_FEATURE_HIGHLIGHTED_VIA_SCROLL");
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: j */
    public void mo12978j(boolean z) {
        putBoolean("KEY_IS_ACTION_ON_HOME_TAB_PROMO_TAKEN", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f54700b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f54701c;
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: m */
    public int mo12977m() {
        return getInt("KEY_NOTIFICATIONS_SHOWN_COUNT", 0);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1161q5.AbstractC19693i
    /* renamed from: q */
    public void mo12976q(int i) {
        putInt("KEY_NOTIFICATIONS_SHOWN_COUNT", i);
    }
}
