package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emr.class */
public final class emr {

    /* renamed from: a  reason: collision with root package name */
    public final Date f27952a;

    /* renamed from: b  reason: collision with root package name */
    public final String f27953b;

    /* renamed from: c  reason: collision with root package name */
    public final int f27954c;

    /* renamed from: d  reason: collision with root package name */
    public final Set<String> f27955d;
    public final Location e;
    public final boolean f;
    final Bundle g;
    final Map<Class<? extends NetworkExtras>, NetworkExtras> h;
    public final String i;
    final String j;
    final SearchAdRequest k;
    final int l;
    public final Bundle m;
    final Set<String> n;
    final boolean o;
    final AdInfo p;
    final int q;
    final String r;
    final int s;
    private final List<String> t;
    private final Set<String> u;

    public emr(emu emuVar) {
        this(emuVar, null);
    }

    public emr(emu emuVar, SearchAdRequest searchAdRequest) {
        this.f27952a = emuVar.g;
        this.f27953b = emuVar.h;
        this.t = emuVar.i;
        this.f27954c = emuVar.j;
        this.f27955d = Collections.unmodifiableSet(emuVar.f27960a);
        this.e = emuVar.k;
        this.f = emuVar.l;
        this.g = emuVar.f27961b;
        this.h = Collections.unmodifiableMap(emuVar.f27962c);
        this.i = emuVar.m;
        this.j = emuVar.n;
        this.k = searchAdRequest;
        this.l = emuVar.o;
        this.u = Collections.unmodifiableSet(emuVar.f27963d);
        this.m = emuVar.e;
        this.n = Collections.unmodifiableSet(emuVar.f);
        this.o = emuVar.p;
        this.p = emuVar.q;
        this.q = emuVar.r;
        this.r = emuVar.s;
        this.s = emuVar.t;
    }

    @Deprecated
    public final <T extends NetworkExtras> T a(Class<T> cls) {
        return (T) this.h.get(cls);
    }

    public final List<String> a() {
        return new ArrayList(this.t);
    }

    public final boolean a(Context context) {
        RequestConfiguration requestConfiguration = emy.a().f27973c;
        ekb.a();
        String a2 = yq.a(context);
        return this.u.contains(a2) || requestConfiguration.getTestDeviceIds().contains(a2);
    }

    public final Bundle b(Class<? extends MediationExtrasReceiver> cls) {
        return this.g.getBundle(cls.getName());
    }

    public final Bundle c(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.g.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }
}
