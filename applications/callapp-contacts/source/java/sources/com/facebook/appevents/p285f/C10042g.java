package com.facebook.appevents.p285f;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.facebook.C10181g;
import java.util.UUID;
/* renamed from: com.facebook.appevents.f.g */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/g.class */
public final class C10042g {

    /* renamed from: a */
    Long f33327a;

    /* renamed from: b */
    Long f33328b;

    /* renamed from: c */
    int f33329c;

    /* renamed from: d */
    Long f33330d;

    /* renamed from: e */
    C10044i f33331e;

    /* renamed from: f */
    UUID f33332f;

    public C10042g(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public C10042g(Long l, Long l2, UUID uuid) {
        this.f33327a = l;
        this.f33328b = l2;
        this.f33332f = uuid;
    }

    /* renamed from: a */
    public final void m23546a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i()).edit();
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.f33327a.longValue());
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.f33328b.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f33329c);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f33332f.toString());
        edit.apply();
        C10044i c10044i = this.f33331e;
        if (c10044i != null) {
            c10044i.m23540a();
        }
    }
}
