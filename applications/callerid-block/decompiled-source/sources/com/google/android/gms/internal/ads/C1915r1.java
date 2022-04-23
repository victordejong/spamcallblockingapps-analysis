package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.p077y.C1521a;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.r1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r1.class */
public final class C1915r1 {

    /* renamed from: g */
    private Date f8294g;

    /* renamed from: h */
    private String f8295h;

    /* renamed from: k */
    private Location f8298k;

    /* renamed from: l */
    private String f8299l;

    /* renamed from: m */
    private String f8300m;

    /* renamed from: o */
    private boolean f8302o;

    /* renamed from: p */
    private C1521a f8303p;

    /* renamed from: a */
    private final HashSet<String> f8288a = new HashSet<>();

    /* renamed from: b */
    private final Bundle f8289b = new Bundle();

    /* renamed from: c */
    private final HashMap<Class<? extends Object>, Object> f8290c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<String> f8291d = new HashSet<>();

    /* renamed from: e */
    private final Bundle f8292e = new Bundle();

    /* renamed from: f */
    private final HashSet<String> f8293f = new HashSet<>();

    /* renamed from: i */
    private final List<String> f8296i = new ArrayList();

    /* renamed from: j */
    private int f8297j = -1;

    /* renamed from: n */
    private int f8301n = -1;

    /* renamed from: q */
    private int f8304q = 60000;

    /* renamed from: k */
    public final void m6015k(String str) {
        this.f8288a.add(str);
    }

    /* renamed from: l */
    public final void m6014l(Class<? extends Object> cls, Bundle bundle) {
        this.f8289b.putBundle(cls.getName(), bundle);
    }

    /* renamed from: m */
    public final void m6013m(String str) {
        this.f8291d.add(str);
    }

    /* renamed from: n */
    public final void m6012n(String str) {
        this.f8291d.remove("B3EEABB8EE11C2BE770B684D95219ECB");
    }

    @Deprecated
    /* renamed from: o */
    public final void m6011o(Date date) {
        this.f8294g = date;
    }

    @Deprecated
    /* renamed from: p */
    public final void m6010p(int i) {
        this.f8297j = i;
    }

    /* renamed from: q */
    public final void m6009q(Location location) {
        this.f8298k = location;
    }

    @Deprecated
    /* renamed from: r */
    public final void m6008r(boolean z) {
        this.f8301n = z ? 1 : 0;
    }

    @Deprecated
    /* renamed from: s */
    public final void m6007s(boolean z) {
        this.f8302o = z;
    }
}
