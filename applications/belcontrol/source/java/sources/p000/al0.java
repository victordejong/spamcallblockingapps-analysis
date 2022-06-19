package p000;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.UUID;
/* renamed from: al0 */
/* loaded from: classes-dex2jar.jar:al0.class */
public class al0 {

    /* renamed from: a */
    public Long f346a;

    /* renamed from: b */
    public Long f347b;

    /* renamed from: c */
    public int f348c;

    /* renamed from: d */
    public Long f349d;

    /* renamed from: e */
    public cl0 f350e;

    /* renamed from: f */
    public UUID f351f;

    public al0(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public al0(Long l, Long l2, UUID uuid) {
        this.f346a = l;
        this.f347b = l2;
        this.f351f = uuid;
    }

    /* renamed from: a */
    public static void m7080a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(ui0.e()).edit();
        edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
        edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
        edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
        edit.remove("com.facebook.appevents.SessionInfo.sessionId");
        edit.apply();
        cl0.m5308a();
    }

    /* renamed from: h */
    public static al0 m7073h() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ui0.e());
        long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
        long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
        String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
        if (j == 0 || j2 == 0 || string == null) {
            return null;
        }
        al0 al0Var = new al0(Long.valueOf(j), Long.valueOf(j2));
        al0Var.f348c = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
        al0Var.f350e = cl0.m5307b();
        al0Var.f349d = Long.valueOf(System.currentTimeMillis());
        al0Var.f351f = UUID.fromString(string);
        return al0Var;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: b */
    public long m7079b() {
        Long l = this.f349d;
        return l == null ? (char) 0 : l.longValue();
    }

    /* renamed from: c */
    public int m7078c() {
        return this.f348c;
    }

    /* renamed from: d */
    public UUID m7077d() {
        return this.f351f;
    }

    /* renamed from: e */
    public Long m7076e() {
        return this.f347b;
    }

    /* renamed from: f */
    public long m7075f() {
        Long l;
        if (this.f346a == null || (l = this.f347b) == null) {
            return 0L;
        }
        return l.longValue() - this.f346a.longValue();
    }

    /* renamed from: g */
    public cl0 m7074g() {
        return this.f350e;
    }

    /* renamed from: i */
    public void m7072i() {
        this.f348c++;
    }

    /* renamed from: j */
    public void m7071j(Long l) {
        this.f347b = l;
    }

    /* renamed from: k */
    public void m7070k() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(ui0.e()).edit();
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.f346a.longValue());
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.f347b.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f348c);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f351f.toString());
        edit.apply();
        cl0 cl0Var = this.f350e;
        if (cl0Var != null) {
            cl0Var.m5306c();
        }
    }
}
