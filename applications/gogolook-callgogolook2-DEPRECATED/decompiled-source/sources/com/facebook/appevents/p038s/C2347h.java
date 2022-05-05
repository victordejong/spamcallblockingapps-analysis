package com.facebook.appevents.p038s;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.UUID;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.s.h */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/h.class */
public class C2347h {

    /* renamed from: a */
    public Long f2863a;

    /* renamed from: b */
    public Long f2864b;

    /* renamed from: c */
    public int f2865c;

    /* renamed from: d */
    public Long f2866d;

    /* renamed from: e */
    public C2349j f2867e;

    /* renamed from: f */
    public UUID f2868f;

    public C2347h(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public C2347h(Long l, Long l2, UUID uuid) {
        this.f2863a = l;
        this.f2864b = l2;
        this.f2868f = uuid;
    }

    /* renamed from: i */
    public static void m35081i() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e()).edit();
        edit.remove("com.facebook.appevents.SessionInfo.sessionStartTime");
        edit.remove("com.facebook.appevents.SessionInfo.sessionEndTime");
        edit.remove("com.facebook.appevents.SessionInfo.interruptionCount");
        edit.remove("com.facebook.appevents.SessionInfo.sessionId");
        edit.apply();
        C2349j.m35074b();
    }

    /* renamed from: j */
    public static C2347h m35080j() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e());
        long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
        long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
        String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
        if (j == 0 || j2 == 0 || string == null) {
            return null;
        }
        C2347h hVar = new C2347h(Long.valueOf(j), Long.valueOf(j2));
        hVar.f2865c = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
        hVar.f2867e = C2349j.m35073c();
        hVar.f2866d = Long.valueOf(System.currentTimeMillis());
        hVar.f2868f = UUID.fromString(string);
        return hVar;
    }

    /* renamed from: a */
    public long m35090a() {
        Long l = this.f2866d;
        return l == null ? 0L : l.longValue();
    }

    /* renamed from: a */
    public void m35089a(Long l) {
        this.f2864b = l;
    }

    /* renamed from: b */
    public int m35088b() {
        return this.f2865c;
    }

    /* renamed from: c */
    public UUID m35087c() {
        return this.f2868f;
    }

    /* renamed from: d */
    public Long m35086d() {
        return this.f2864b;
    }

    /* renamed from: e */
    public long m35085e() {
        Long l;
        if (this.f2863a == null || (l = this.f2864b) == null) {
            return 0L;
        }
        return l.longValue() - this.f2863a.longValue();
    }

    /* renamed from: f */
    public C2349j m35084f() {
        return this.f2867e;
    }

    /* renamed from: g */
    public void m35083g() {
        this.f2865c++;
    }

    /* renamed from: h */
    public void m35082h() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e()).edit();
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.f2863a.longValue());
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.f2864b.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f2865c);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f2868f.toString());
        edit.apply();
        C2349j jVar = this.f2867e;
        if (jVar != null) {
            jVar.m35075a();
        }
    }
}
