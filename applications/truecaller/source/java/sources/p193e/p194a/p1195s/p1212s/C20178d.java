package p193e.p194a.p1195s.p1212s;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.s.s.d */
/* loaded from: classes17-dex2jar.jar:e/a/s/s/d.class */
public final class C20178d extends AbstractC19316a implements AbstractC20177c {

    /* renamed from: b */
    public final int f56858b = 1;

    /* renamed from: c */
    public final String f56859c = "callAssistantSettings";

    /* JADX WARN: Illegal instructions before constructor call */
    @javax.inject.Inject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20178d(android.content.Context r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            java.lang.String r1 = "callAssistantSettings"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r6
            r0.<init>(r1)
            r0 = r4
            r1 = 1
            r0.f56858b = r1
            r0 = r4
            java.lang.String r1 = "callAssistantSettings"
            r0.f56859c = r1
            r0 = r4
            r1 = r5
            r0.m13467n3(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1195s.p1212s.C20178d.<init>(android.content.Context):void");
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: A */
    public String mo11435A() {
        return getString("disableCode");
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: A2 */
    public String mo11434A2() {
        return getString("detectedCarrierId");
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: B0 */
    public String mo11433B0() {
        return getString("voiceId");
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: C0 */
    public void mo11432C0(String str) {
        putString("supportLink", str);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: D0 */
    public void mo11431D0(String str) {
        putString("disableCode", str);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: E0 */
    public void mo11430E0(long j) {
        putLong("lastCallSyncTime", j);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: F */
    public void mo11429F(String str) {
        putString("detectedCarrierId", str);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: J */
    public void mo11428J(String str) {
        putString("authToken", str);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: N */
    public String mo11427N() {
        return getString("supportLink");
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: O0 */
    public boolean mo11426O0() {
        return getBoolean("isScreeningBlockList", false);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: P1 */
    public long mo11425P1() {
        return getLong("mostRecentSyncedCallTime", 0L);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: R2 */
    public String mo11424R2() {
        return getString("lastNumberSyncHash");
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: c3 */
    public void mo11423c3(long j) {
        putLong("mostRecentSyncedCallTime", j);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: g1 */
    public boolean mo11422g1() {
        return getBoolean("isServiceValidated", false);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    public String getAuthToken() {
        return getString("authToken");
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: h2 */
    public long mo11421h2() {
        return getLong("lastCallSyncTime", 0L);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f56858b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f56859c;
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: l0 */
    public void mo11420l0(boolean z) {
        putBoolean("isServiceValidated", z);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: o1 */
    public void mo11419o1(boolean z) {
        putBoolean("isScreeningBlockList", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: v1 */
    public void mo11418v1(String str) {
        putString("voiceId", str);
    }

    @Override // p193e.p194a.p1195s.p1212s.AbstractC20177c
    /* renamed from: x0 */
    public void mo11417x0(String str) {
        putString("lastNumberSyncHash", str);
    }
}
