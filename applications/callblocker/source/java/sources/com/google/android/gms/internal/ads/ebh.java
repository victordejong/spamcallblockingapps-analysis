package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.p123f.C2292a;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebh.class */
public final class ebh {

    /* renamed from: g */
    private Date f16189g;

    /* renamed from: h */
    private String f16190h;

    /* renamed from: k */
    private Location f16193k;

    /* renamed from: m */
    private String f16195m;

    /* renamed from: n */
    private String f16196n;

    /* renamed from: p */
    private boolean f16198p;

    /* renamed from: q */
    private C2292a f16199q;

    /* renamed from: s */
    private String f16201s;

    /* renamed from: a */
    private final HashSet<String> f16183a = new HashSet<>();

    /* renamed from: b */
    private final Bundle f16184b = new Bundle();

    /* renamed from: c */
    private final HashMap<Class<? extends Object>, Object> f16185c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<String> f16186d = new HashSet<>();

    /* renamed from: e */
    private final Bundle f16187e = new Bundle();

    /* renamed from: f */
    private final HashSet<String> f16188f = new HashSet<>();

    /* renamed from: i */
    private final List<String> f16191i = new ArrayList();

    /* renamed from: j */
    private int f16192j = -1;

    /* renamed from: l */
    private boolean f16194l = false;

    /* renamed from: o */
    private int f16197o = -1;

    /* renamed from: r */
    private int f16200r = -1;

    @Deprecated
    /* renamed from: a */
    public final void m8091a(int i) {
        this.f16192j = i;
    }

    /* renamed from: a */
    public final void m8090a(Location location) {
        this.f16193k = location;
    }

    /* renamed from: a */
    public final void m8088a(Class<? extends Object> cls, Bundle bundle) {
        this.f16184b.putBundle(cls.getName(), bundle);
    }

    /* renamed from: a */
    public final void m8087a(String str) {
        this.f16183a.add(str);
    }

    @Deprecated
    /* renamed from: a */
    public final void m8086a(Date date) {
        this.f16189g = date;
    }

    @Deprecated
    /* renamed from: a */
    public final void m8085a(boolean z) {
        this.f16197o = z ? 1 : 0;
    }

    /* renamed from: b */
    public final void m8083b(String str) {
        this.f16186d.add(str);
    }

    @Deprecated
    /* renamed from: b */
    public final void m8082b(boolean z) {
        this.f16198p = z;
    }

    /* renamed from: c */
    public final void m8080c(String str) {
        this.f16186d.remove(str);
    }
}
