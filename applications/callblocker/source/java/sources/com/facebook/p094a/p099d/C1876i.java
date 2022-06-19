package com.facebook.p094a.p099d;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.C2095j;
import java.util.UUID;
/* renamed from: com.facebook.a.d.i */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/i.class */
public class C1876i {

    /* renamed from: a */
    private Long f5682a;

    /* renamed from: b */
    private Long f5683b;

    /* renamed from: c */
    private int f5684c;

    /* renamed from: d */
    private Long f5685d;

    /* renamed from: e */
    private C1878k f5686e;

    /* renamed from: f */
    private UUID f5687f;

    public C1876i(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public C1876i(Long l, Long l2, UUID uuid) {
        this.f5682a = l;
        this.f5683b = l2;
        this.f5687f = uuid;
    }

    /* renamed from: a */
    public static C1876i m16024a() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h());
        long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
        long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
        String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
        C1876i c1876i = null;
        if (j != 0) {
            c1876i = null;
            if (j2 != 0) {
                if (string == null) {
                    c1876i = null;
                } else {
                    c1876i = new C1876i(Long.valueOf(j), Long.valueOf(j2));
                    c1876i.f5684c = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
                    c1876i.f5686e = C1878k.m16008a();
                    c1876i.f5685d = Long.valueOf(System.currentTimeMillis());
                    c1876i.f5687f = UUID.fromString(string);
                }
            }
        }
        return c1876i;
    }

    /* renamed from: b */
    public static void m16022b() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h()).edit();
        edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
        edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
        edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
        edit.remove("com.facebook.appevents.SessionInfo.sessionId");
        edit.apply();
        C1878k.m16007b();
    }

    /* renamed from: a */
    public void m16023a(Long l) {
        this.f5683b = l;
    }

    /* renamed from: c */
    public Long m16021c() {
        return this.f5683b;
    }

    /* renamed from: d */
    public int m16020d() {
        return this.f5684c;
    }

    /* renamed from: e */
    public void m16019e() {
        this.f5684c++;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: f */
    public long m16018f() {
        return this.f5685d == null ? (char) 0 : this.f5685d.longValue();
    }

    /* renamed from: g */
    public UUID m16017g() {
        return this.f5687f;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: h */
    public long m16016h() {
        return (this.f5682a == null || this.f5683b == null) ? (char) 0 : this.f5683b.longValue() - this.f5682a.longValue();
    }

    /* renamed from: i */
    public C1878k m16015i() {
        return this.f5686e;
    }

    /* renamed from: j */
    public void m16014j() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h()).edit();
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.f5682a.longValue());
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.f5683b.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f5684c);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f5687f.toString());
        edit.apply();
        if (this.f5686e != null) {
            this.f5686e.m16006c();
        }
    }
}
