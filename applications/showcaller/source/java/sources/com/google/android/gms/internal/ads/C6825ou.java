package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.p266y.C5861a;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ou */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ou.class */
public final class C6825ou {

    /* renamed from: g */
    private Date f27717g;

    /* renamed from: h */
    private String f27718h;

    /* renamed from: k */
    private Location f27721k;

    /* renamed from: l */
    private String f27722l;

    /* renamed from: m */
    private String f27723m;

    /* renamed from: o */
    private boolean f27725o;

    /* renamed from: p */
    private C5861a f27726p;

    /* renamed from: q */
    private String f27727q;

    /* renamed from: a */
    private final HashSet<String> f27711a = new HashSet<>();

    /* renamed from: b */
    private final Bundle f27712b = new Bundle();

    /* renamed from: c */
    private final HashMap<Class<?>, ?> f27713c = new HashMap<>();

    /* renamed from: d */
    private final HashSet<String> f27714d = new HashSet<>();

    /* renamed from: e */
    private final Bundle f27715e = new Bundle();

    /* renamed from: f */
    private final HashSet<String> f27716f = new HashSet<>();

    /* renamed from: i */
    private final List<String> f27719i = new ArrayList();

    /* renamed from: j */
    private int f27720j = -1;

    /* renamed from: n */
    private int f27724n = -1;

    /* renamed from: r */
    private int f27728r = 60000;

    @Deprecated
    /* renamed from: A */
    public final void m12529A(Date date) {
        this.f27717g = date;
    }

    @Deprecated
    /* renamed from: a */
    public final void m12528a(int i) {
        this.f27720j = i;
    }

    /* renamed from: b */
    public final void m12527b(Location location) {
        this.f27721k = location;
    }

    @Deprecated
    /* renamed from: c */
    public final void m12526c(boolean z) {
        this.f27724n = z ? 1 : 0;
    }

    @Deprecated
    /* renamed from: d */
    public final void m12525d(boolean z) {
        this.f27725o = z;
    }

    /* renamed from: w */
    public final void m12506w(String str) {
        this.f27711a.add(str);
    }

    /* renamed from: x */
    public final void m12505x(Class<?> cls, Bundle bundle) {
        this.f27712b.putBundle(cls.getName(), bundle);
    }

    /* renamed from: y */
    public final void m12504y(String str) {
        this.f27714d.add(str);
    }

    /* renamed from: z */
    public final void m12503z(String str) {
        this.f27714d.remove("B3EEABB8EE11C2BE770B684D95219ECB");
    }
}
