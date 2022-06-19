package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.y.b.x */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/x.class */
public final class C21627x implements AbstractC21626w {

    /* renamed from: a */
    public final SharedPreferences f60286a;

    public C21627x(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        l.d(defaultSharedPreferences, "PreferenceManager.getDef…haredPreferences(context)");
        this.f60286a = defaultSharedPreferences;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: a */
    public void mo9349a() {
        mo9338n("flash_sent_count");
        mo9338n("flash_received_count");
        mo9338n("send_tooltips");
        mo9338n("receive_tooltips");
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: c */
    public void mo9348c(String str) {
        C22128a.m8585p0(this.f60286a, "flash_ringtone", str);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: d */
    public String mo9347d() {
        String string = this.f60286a.getString("flash_ringtone", "");
        if (string == null || string.length() == 0) {
            string = null;
        }
        return string;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
        if ((r0 == null || r0.length() == 0) == false) goto L13;
     */
    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9346f() {
        /*
            r4 = this;
            r0 = r4
            android.content.SharedPreferences r0 = r0.f60286a
            java.lang.String r1 = "flash_ringtone"
            boolean r0 = r0.contains(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L40
            r0 = r4
            android.content.SharedPreferences r0 = r0.f60286a
            java.lang.String r1 = "flash_ringtone"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L35
            r0 = r7
            int r0 = r0.length()
            if (r0 != 0) goto L2f
            goto L35
        L2f:
            r0 = 0
            r8 = r0
            goto L38
        L35:
            r0 = 1
            r8 = r0
        L38:
            r0 = r8
            if (r0 != 0) goto L40
            goto L42
        L40:
            r0 = 0
            r6 = r0
        L42:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1381b.C21627x.mo9346f():boolean");
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: g */
    public long mo9345g() {
        return this.f60286a.getLong("flash_tooltip_count", 0L);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    public boolean getBoolean(String str, boolean z) {
        l.e(str, AnalyticsConstants.KEY);
        return this.f60286a.getBoolean(str, z);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    public int getInt(String str, int i) {
        l.e(str, AnalyticsConstants.KEY);
        return this.f60286a.getInt(str, i);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    public long getLong(String str, long j) {
        l.e(str, AnalyticsConstants.KEY);
        return this.f60286a.getLong(str, j);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    public String getString(String str, String str2) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "def");
        return this.f60286a.getString(str, str2);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: h */
    public void mo9344h() {
        C22128a.m8589o0(this.f60286a, "flash_tooltip_count", this.f60286a.getLong("flash_tooltip_count", 0L) + 1);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: i */
    public long mo9343i() {
        return this.f60286a.getLong("flash_received_count", 0L);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: j */
    public void mo9342j() {
        C22128a.m8589o0(this.f60286a, "flash_received_count", mo9343i() + 1);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: k */
    public long mo9341k() {
        return this.f60286a.getLong("flash_sent_count", 0L);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: l */
    public void mo9340l(String str, Object obj) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(obj, "value");
        if (obj instanceof String) {
            C22128a.m8585p0(this.f60286a, str, (String) obj);
        } else if (obj instanceof Integer) {
            C22128a.m8593n0(this.f60286a, str, ((Number) obj).intValue());
        } else if (obj instanceof Long) {
            C22128a.m8589o0(this.f60286a, str, ((Number) obj).longValue());
        } else if (obj instanceof Boolean) {
            C22128a.m8577r0(this.f60286a, str, ((Boolean) obj).booleanValue());
        } else if (!(obj instanceof Float)) {
        } else {
            this.f60286a.edit().putFloat(str, ((Number) obj).floatValue()).apply();
        }
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: m */
    public void mo9339m() {
        C22128a.m8589o0(this.f60286a, "flash_sent_count", mo9341k() + 1);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21626w
    /* renamed from: n */
    public void mo9338n(String str) {
        l.e(str, AnalyticsConstants.KEY);
        this.f60286a.edit().remove(str).apply();
    }
}
