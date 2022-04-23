package com.facebook.appevents.f;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    Long f19563a;

    /* renamed from: b  reason: collision with root package name */
    Long f19564b;

    /* renamed from: c  reason: collision with root package name */
    int f19565c;

    /* renamed from: d  reason: collision with root package name */
    Long f19566d;
    i e;
    UUID f;

    public g(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public g(Long l, Long l2, UUID uuid) {
        this.f19563a = l;
        this.f19564b = l2;
        this.f = uuid;
    }

    public final void a() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.facebook.g.i()).edit();
        edit.putLong("com.facebook.appevents.SessionInfo.sessionStartTime", this.f19563a.longValue());
        edit.putLong("com.facebook.appevents.SessionInfo.sessionEndTime", this.f19564b.longValue());
        edit.putInt("com.facebook.appevents.SessionInfo.interruptionCount", this.f19565c);
        edit.putString("com.facebook.appevents.SessionInfo.sessionId", this.f.toString());
        edit.apply();
        i iVar = this.e;
        if (iVar != null) {
            iVar.a();
        }
    }
}
