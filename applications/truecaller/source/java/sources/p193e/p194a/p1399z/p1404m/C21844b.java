package p193e.p194a.p1399z.p1404m;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.z.m.b */
/* loaded from: classes11-dex2jar.jar:e/a/z/m/b.class */
public final class C21844b extends AbstractC19316a implements AbstractC21843a {

    /* renamed from: b */
    public final String f60725b = "personal_safety";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21844b(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "prefs");
    }

    @Override // p193e.p194a.p1399z.p1404m.AbstractC21843a
    /* renamed from: A1 */
    public void mo9006A1(boolean z) {
        putBoolean("personal_safety_app_promo_clicked", z);
    }

    @Override // p193e.p194a.p1399z.p1404m.AbstractC21843a
    /* renamed from: T1 */
    public boolean mo9005T1() {
        return getBoolean("personal_safety_app_promo_clicked");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return 0;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f60725b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1399z.p1404m.AbstractC21843a
    /* renamed from: u1 */
    public long mo9004u1() {
        return getLong("personal_safety_home_promo_clicked", 0L);
    }

    @Override // p193e.p194a.p1399z.p1404m.AbstractC21843a
    /* renamed from: y */
    public void mo9003y(long j) {
        putLong("personal_safety_home_promo_clicked", j);
    }
}
