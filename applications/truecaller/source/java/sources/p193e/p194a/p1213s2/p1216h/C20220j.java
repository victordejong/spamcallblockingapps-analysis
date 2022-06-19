package p193e.p194a.p1213s2.p1216h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.s2.h.j */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/j.class */
public final class C20220j extends AbstractC19316a implements AbstractC20215e {

    /* renamed from: b */
    public final int f56965b = 1;

    /* renamed from: c */
    public final String f56966c = "announce_caller_id_settings";

    @Inject
    public C20220j(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "announce_caller_id_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: N0 */
    public void mo11343N0(boolean z) {
        putBoolean("activate_for_phone_book_only", z);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: W2 */
    public boolean mo11342W2() {
        return getBoolean("announce_call_enabled");
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: b */
    public void mo11341b(boolean z) {
        putBoolean("isNewFeatureSplatDismissed", z);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: d */
    public void mo11340d(boolean z) {
        putBoolean("isFeatureHighlightedViaScroll", z);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: d1 */
    public boolean mo11339d1() {
        return getBoolean("activate_for_phone_book_only");
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: e */
    public boolean mo11338e() {
        return getBoolean("isNewFeatureSplatDismissed", false);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: e0 */
    public void mo11337e0(boolean z) {
        putBoolean("activate_for_headset", z);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: f */
    public void mo11336f(long j) {
        putLong("newFeaturePromoLastDismissed", j);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: g */
    public long mo11335g() {
        return getLong("newFeaturePromoLastDismissed", 0L);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: g3 */
    public boolean mo11334g3() {
        return getBoolean("activate_for_headset", true);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: h */
    public boolean mo11333h() {
        return getBoolean("isActionOnHomeTabPromoTaken", false);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: i */
    public boolean mo11332i() {
        return getBoolean("isFeatureHighlightedViaScroll", false);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: j */
    public void mo11331j(boolean z) {
        putBoolean("isActionOnHomeTabPromoTaken", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f56965b;
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: k */
    public void mo11330k(boolean z) {
        putBoolean("announce_call_enabled", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f56966c;
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: o2 */
    public boolean mo11329o2() {
        return getBoolean("activate_for_voip_calls", true);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: r */
    public boolean mo11328r() {
        return getBoolean("announce_call_enabled_once");
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: r2 */
    public void mo11327r2(boolean z) {
        putBoolean("announce_call_enabled_once", z);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20215e
    /* renamed from: z0 */
    public void mo11326z0(boolean z) {
        putBoolean("activate_for_voip_calls", z);
    }
}
