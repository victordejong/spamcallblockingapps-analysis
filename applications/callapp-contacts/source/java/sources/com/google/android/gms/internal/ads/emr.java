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

    /* renamed from: a */
    public final Date f49177a;

    /* renamed from: b */
    public final String f49178b;

    /* renamed from: c */
    public final int f49179c;

    /* renamed from: d */
    public final Set<String> f49180d;

    /* renamed from: e */
    public final Location f49181e;

    /* renamed from: f */
    public final boolean f49182f;

    /* renamed from: g */
    final Bundle f49183g;

    /* renamed from: h */
    final Map<Class<? extends NetworkExtras>, NetworkExtras> f49184h;

    /* renamed from: i */
    public final String f49185i;

    /* renamed from: j */
    final String f49186j;

    /* renamed from: k */
    final SearchAdRequest f49187k;

    /* renamed from: l */
    final int f49188l;

    /* renamed from: m */
    public final Bundle f49189m;

    /* renamed from: n */
    final Set<String> f49190n;

    /* renamed from: o */
    final boolean f49191o;

    /* renamed from: p */
    final AdInfo f49192p;

    /* renamed from: q */
    final int f49193q;

    /* renamed from: r */
    final String f49194r;

    /* renamed from: s */
    final int f49195s;

    /* renamed from: t */
    private final List<String> f49196t;

    /* renamed from: u */
    private final Set<String> f49197u;

    public emr(emu emuVar) {
        this(emuVar, null);
    }

    public emr(emu emuVar, SearchAdRequest searchAdRequest) {
        this.f49177a = emuVar.f49222g;
        this.f49178b = emuVar.f49223h;
        this.f49196t = emuVar.f49224i;
        this.f49179c = emuVar.f49225j;
        this.f49180d = Collections.unmodifiableSet(emuVar.f49216a);
        this.f49181e = emuVar.f49226k;
        this.f49182f = emuVar.f49227l;
        this.f49183g = emuVar.f49217b;
        this.f49184h = Collections.unmodifiableMap(emuVar.f49218c);
        this.f49185i = emuVar.f49228m;
        this.f49186j = emuVar.f49229n;
        this.f49187k = searchAdRequest;
        this.f49188l = emuVar.f49230o;
        this.f49197u = Collections.unmodifiableSet(emuVar.f49219d);
        this.f49189m = emuVar.f49220e;
        this.f49190n = Collections.unmodifiableSet(emuVar.f49221f);
        this.f49191o = emuVar.f49231p;
        this.f49192p = emuVar.f49232q;
        this.f49193q = emuVar.f49233r;
        this.f49194r = emuVar.f49234s;
        this.f49195s = emuVar.f49235t;
    }

    @Deprecated
    /* renamed from: a */
    public final <T extends NetworkExtras> T m14777a(Class<T> cls) {
        return (T) this.f49184h.get(cls);
    }

    /* renamed from: a */
    public final List<String> m14779a() {
        return new ArrayList(this.f49196t);
    }

    /* renamed from: a */
    public final boolean m14778a(Context context) {
        RequestConfiguration requestConfiguration = emy.m14729a().f49256c;
        ekb.m14835a();
        String m13951a = C13077yq.m13951a(context);
        return this.f49197u.contains(m13951a) || requestConfiguration.getTestDeviceIds().contains(m13951a);
    }

    /* renamed from: b */
    public final Bundle m14776b(Class<? extends MediationExtrasReceiver> cls) {
        return this.f49183g.getBundle(cls.getName());
    }

    /* renamed from: c */
    public final Bundle m14775c(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.f49183g.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }
}
