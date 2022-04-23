package com.criteo.publisher.k.a;

import android.content.Context;
import android.preference.PreferenceManager;
import com.criteo.publisher.m0.q;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final h f17400a;

    public d(Context context) {
        this(new h(new q(PreferenceManager.getDefaultSharedPreferences(context))));
    }

    d(h hVar) {
        this.f17400a = hVar;
    }

    public final c a() {
        g a2 = this.f17400a.a();
        Boolean bool = null;
        if (a2 == null) {
            return null;
        }
        String b2 = a2.b();
        String a3 = a2.a();
        if (!b2.isEmpty()) {
            bool = Boolean.valueOf("1".equals(b2));
        }
        return c.a(a3, bool, a2.c());
    }
}
