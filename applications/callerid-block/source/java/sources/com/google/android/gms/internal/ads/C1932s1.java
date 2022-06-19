package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.C1495p;
import com.google.android.gms.ads.p077y.C1521a;
import com.google.android.gms.ads.search.C1502a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.internal.ads.s1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/s1.class */
public final class C1932s1 {

    /* renamed from: a */
    private final Date f8413a;

    /* renamed from: b */
    private final String f8414b;

    /* renamed from: c */
    private final List<String> f8415c;

    /* renamed from: d */
    private final int f8416d;

    /* renamed from: e */
    private final Set<String> f8417e;

    /* renamed from: f */
    private final Location f8418f;

    /* renamed from: g */
    private final Bundle f8419g;

    /* renamed from: h */
    private final Map<Class<? extends Object>, Object> f8420h;

    /* renamed from: i */
    private final String f8421i;

    /* renamed from: j */
    private final String f8422j;
    @NotOnlyInitialized

    /* renamed from: k */
    private final C1502a f8423k;

    /* renamed from: l */
    private final int f8424l;

    /* renamed from: m */
    private final Set<String> f8425m;

    /* renamed from: n */
    private final Bundle f8426n;

    /* renamed from: o */
    private final Set<String> f8427o;

    /* renamed from: p */
    private final boolean f8428p;

    /* renamed from: q */
    private final C1521a f8429q;

    /* renamed from: r */
    private final int f8430r;

    public C1932s1(C1915r1 c1915r1, C1502a c1502a) {
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
        int i3;
        C1521a unused;
        date = c1915r1.f8294g;
        this.f8413a = date;
        str = c1915r1.f8295h;
        this.f8414b = str;
        list = c1915r1.f8296i;
        this.f8415c = list;
        i = c1915r1.f8297j;
        this.f8416d = i;
        hashSet = c1915r1.f8288a;
        this.f8417e = Collections.unmodifiableSet(hashSet);
        location = c1915r1.f8298k;
        this.f8418f = location;
        bundle = c1915r1.f8289b;
        this.f8419g = bundle;
        hashMap = c1915r1.f8290c;
        this.f8420h = Collections.unmodifiableMap(hashMap);
        str2 = c1915r1.f8299l;
        this.f8421i = str2;
        str3 = c1915r1.f8300m;
        this.f8422j = str3;
        i2 = c1915r1.f8301n;
        this.f8424l = i2;
        hashSet2 = c1915r1.f8291d;
        this.f8425m = Collections.unmodifiableSet(hashSet2);
        bundle2 = c1915r1.f8292e;
        this.f8426n = bundle2;
        hashSet3 = c1915r1.f8293f;
        this.f8427o = Collections.unmodifiableSet(hashSet3);
        z = c1915r1.f8302o;
        this.f8428p = z;
        unused = c1915r1.f8303p;
        i3 = c1915r1.f8304q;
        this.f8430r = i3;
    }

    @Deprecated
    /* renamed from: a */
    public final Date m5836a() {
        return this.f8413a;
    }

    /* renamed from: b */
    public final String m5835b() {
        return this.f8414b;
    }

    /* renamed from: c */
    public final List<String> m5834c() {
        return new ArrayList(this.f8415c);
    }

    @Deprecated
    /* renamed from: d */
    public final int m5833d() {
        return this.f8416d;
    }

    /* renamed from: e */
    public final Set<String> m5832e() {
        return this.f8417e;
    }

    /* renamed from: f */
    public final Location m5831f() {
        return this.f8418f;
    }

    /* renamed from: g */
    public final Bundle m5830g(Class<? extends Object> cls) {
        return this.f8419g.getBundle(cls.getName());
    }

    /* renamed from: h */
    public final String m5829h() {
        return this.f8421i;
    }

    /* renamed from: i */
    public final String m5828i() {
        return this.f8422j;
    }

    /* renamed from: j */
    public final C1502a m5827j() {
        return this.f8423k;
    }

    /* renamed from: k */
    public final boolean m5826k(Context context) {
        C1495p m4673e = C2060z1.m4677a().m4673e();
        m03.m6636a();
        String m7124t = C1786io.m7124t(context);
        return this.f8425m.contains(m7124t) || m4673e.m8581d().contains(m7124t);
    }

    /* renamed from: l */
    public final Map<Class<? extends Object>, Object> m5825l() {
        return this.f8420h;
    }

    /* renamed from: m */
    public final Bundle m5824m() {
        return this.f8419g;
    }

    /* renamed from: n */
    public final int m5823n() {
        return this.f8424l;
    }

    /* renamed from: o */
    public final Bundle m5822o() {
        return this.f8426n;
    }

    /* renamed from: p */
    public final Set<String> m5821p() {
        return this.f8427o;
    }

    @Deprecated
    /* renamed from: q */
    public final boolean m5820q() {
        return this.f8428p;
    }

    /* renamed from: r */
    public final C1521a m5819r() {
        return this.f8429q;
    }

    /* renamed from: s */
    public final int m5818s() {
        return this.f8430r;
    }
}
