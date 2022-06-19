package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.C5842q;
import com.google.android.gms.ads.p266y.C5861a;
import com.google.android.gms.ads.search.C5847a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.internal.ads.pu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pu.class */
public final class C6862pu {

    /* renamed from: a */
    private final Date f28139a;

    /* renamed from: b */
    private final String f28140b;

    /* renamed from: c */
    private final List<String> f28141c;

    /* renamed from: d */
    private final int f28142d;

    /* renamed from: e */
    private final Set<String> f28143e;

    /* renamed from: f */
    private final Location f28144f;

    /* renamed from: g */
    private final Bundle f28145g;

    /* renamed from: h */
    private final Map<Class<?>, ?> f28146h;

    /* renamed from: i */
    private final String f28147i;

    /* renamed from: j */
    private final String f28148j;
    @NotOnlyInitialized

    /* renamed from: k */
    private final C5847a f28149k;

    /* renamed from: l */
    private final int f28150l;

    /* renamed from: m */
    private final Set<String> f28151m;

    /* renamed from: n */
    private final Bundle f28152n;

    /* renamed from: o */
    private final Set<String> f28153o;

    /* renamed from: p */
    private final boolean f28154p;

    /* renamed from: q */
    private final C5861a f28155q;

    /* renamed from: r */
    private final String f28156r;

    /* renamed from: s */
    private final int f28157s;

    public C6862pu(C6825ou c6825ou, C5847a c5847a) {
        Date date;
        String str;
        List<String> list;
        int i;
        HashSet hashSet;
        Location location;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z;
        String str4;
        int i3;
        C5861a unused;
        date = c6825ou.f27717g;
        this.f28139a = date;
        str = c6825ou.f27718h;
        this.f28140b = str;
        list = c6825ou.f27719i;
        this.f28141c = list;
        i = c6825ou.f27720j;
        this.f28142d = i;
        hashSet = c6825ou.f27711a;
        this.f28143e = Collections.unmodifiableSet(hashSet);
        location = c6825ou.f27721k;
        this.f28144f = location;
        bundle = c6825ou.f27712b;
        this.f28145g = bundle;
        hashMap = c6825ou.f27713c;
        this.f28146h = Collections.unmodifiableMap(hashMap);
        str2 = c6825ou.f27722l;
        this.f28147i = str2;
        str3 = c6825ou.f27723m;
        this.f28148j = str3;
        i2 = c6825ou.f27724n;
        this.f28150l = i2;
        hashSet2 = c6825ou.f27714d;
        this.f28151m = Collections.unmodifiableSet(hashSet2);
        bundle2 = c6825ou.f27715e;
        this.f28152n = bundle2;
        hashSet3 = c6825ou.f27716f;
        this.f28153o = Collections.unmodifiableSet(hashSet3);
        z = c6825ou.f27725o;
        this.f28154p = z;
        unused = c6825ou.f27726p;
        str4 = c6825ou.f27727q;
        this.f28156r = str4;
        i3 = c6825ou.f27728r;
        this.f28157s = i3;
    }

    @Deprecated
    /* renamed from: a */
    public final Date m12150a() {
        return this.f28139a;
    }

    /* renamed from: b */
    public final String m12149b() {
        return this.f28140b;
    }

    /* renamed from: c */
    public final List<String> m12148c() {
        return new ArrayList(this.f28141c);
    }

    @Deprecated
    /* renamed from: d */
    public final int m12147d() {
        return this.f28142d;
    }

    /* renamed from: e */
    public final Set<String> m12146e() {
        return this.f28143e;
    }

    /* renamed from: f */
    public final Location m12145f() {
        return this.f28144f;
    }

    /* renamed from: g */
    public final Bundle m12144g(Class<?> cls) {
        return this.f28145g.getBundle(cls.getName());
    }

    /* renamed from: h */
    public final String m12143h() {
        return this.f28147i;
    }

    /* renamed from: i */
    public final String m12142i() {
        return this.f28148j;
    }

    /* renamed from: j */
    public final C5847a m12141j() {
        return this.f28149k;
    }

    /* renamed from: k */
    public final boolean m12140k(Context context) {
        C5842q m9447i = C7121wu.m9452d().m9447i();
        C7118wr.m9485a();
        String m9160r = xh0.m9160r(context);
        return this.f28151m.contains(m9160r) || m9447i.m17774d().contains(m9160r);
    }

    /* renamed from: l */
    public final Map<Class<?>, ?> m12139l() {
        return this.f28146h;
    }

    /* renamed from: m */
    public final Bundle m12138m() {
        return this.f28145g;
    }

    /* renamed from: n */
    public final int m12137n() {
        return this.f28150l;
    }

    /* renamed from: o */
    public final Bundle m12136o() {
        return this.f28152n;
    }

    /* renamed from: p */
    public final Set<String> m12135p() {
        return this.f28153o;
    }

    @Deprecated
    /* renamed from: q */
    public final boolean m12134q() {
        return this.f28154p;
    }

    /* renamed from: r */
    public final C5861a m12133r() {
        return this.f28155q;
    }

    /* renamed from: s */
    public final String m12132s() {
        return this.f28156r;
    }

    /* renamed from: t */
    public final int m12131t() {
        return this.f28157s;
    }
}
