package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.C2384n;
import com.google.android.gms.ads.p123f.C2292a;
import com.google.android.gms.ads.p124g.C2295a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebi.class */
public final class ebi {

    /* renamed from: a */
    private final Date f16202a;

    /* renamed from: b */
    private final String f16203b;

    /* renamed from: c */
    private final List<String> f16204c;

    /* renamed from: d */
    private final int f16205d;

    /* renamed from: e */
    private final Set<String> f16206e;

    /* renamed from: f */
    private final Location f16207f;

    /* renamed from: g */
    private final boolean f16208g;

    /* renamed from: h */
    private final Bundle f16209h;

    /* renamed from: i */
    private final Map<Class<? extends Object>, Object> f16210i;

    /* renamed from: j */
    private final String f16211j;

    /* renamed from: k */
    private final String f16212k;

    /* renamed from: l */
    private final C2295a f16213l;

    /* renamed from: m */
    private final int f16214m;

    /* renamed from: n */
    private final Set<String> f16215n;

    /* renamed from: o */
    private final Bundle f16216o;

    /* renamed from: p */
    private final Set<String> f16217p;

    /* renamed from: q */
    private final boolean f16218q;

    /* renamed from: r */
    private final C2292a f16219r;

    /* renamed from: s */
    private final int f16220s;

    /* renamed from: t */
    private final String f16221t;

    public ebi(ebh ebhVar) {
        this(ebhVar, null);
    }

    public ebi(ebh ebhVar, C2295a c2295a) {
        Date date;
        String str;
        List<String> list;
        int i;
        HashSet hashSet;
        Location location;
        boolean z;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z2;
        C2292a c2292a;
        int i3;
        String str4;
        date = ebhVar.f16189g;
        this.f16202a = date;
        str = ebhVar.f16190h;
        this.f16203b = str;
        list = ebhVar.f16191i;
        this.f16204c = list;
        i = ebhVar.f16192j;
        this.f16205d = i;
        hashSet = ebhVar.f16183a;
        this.f16206e = Collections.unmodifiableSet(hashSet);
        location = ebhVar.f16193k;
        this.f16207f = location;
        z = ebhVar.f16194l;
        this.f16208g = z;
        bundle = ebhVar.f16184b;
        this.f16209h = bundle;
        hashMap = ebhVar.f16185c;
        this.f16210i = Collections.unmodifiableMap(hashMap);
        str2 = ebhVar.f16195m;
        this.f16211j = str2;
        str3 = ebhVar.f16196n;
        this.f16212k = str3;
        this.f16213l = c2295a;
        i2 = ebhVar.f16197o;
        this.f16214m = i2;
        hashSet2 = ebhVar.f16186d;
        this.f16215n = Collections.unmodifiableSet(hashSet2);
        bundle2 = ebhVar.f16187e;
        this.f16216o = bundle2;
        hashSet3 = ebhVar.f16188f;
        this.f16217p = Collections.unmodifiableSet(hashSet3);
        z2 = ebhVar.f16198p;
        this.f16218q = z2;
        c2292a = ebhVar.f16199q;
        this.f16219r = c2292a;
        i3 = ebhVar.f16200r;
        this.f16220s = i3;
        str4 = ebhVar.f16201s;
        this.f16221t = str4;
    }

    /* renamed from: a */
    public final Bundle m8061a(Class<? extends Object> cls) {
        return this.f16209h.getBundle(cls.getName());
    }

    @Deprecated
    /* renamed from: a */
    public final Date m8063a() {
        return this.f16202a;
    }

    /* renamed from: a */
    public final boolean m8062a(Context context) {
        C2384n m8004c = ebl.m8012a().m8004c();
        dyx.m8162a();
        String m6802a = C3634xr.m6802a(context);
        return this.f16215n.contains(m6802a) || m8004c.m14620d().contains(m6802a);
    }

    /* renamed from: b */
    public final String m8060b() {
        return this.f16203b;
    }

    /* renamed from: c */
    public final List<String> m8059c() {
        return new ArrayList(this.f16204c);
    }

    @Deprecated
    /* renamed from: d */
    public final int m8058d() {
        return this.f16205d;
    }

    /* renamed from: e */
    public final Set<String> m8057e() {
        return this.f16206e;
    }

    /* renamed from: f */
    public final Location m8056f() {
        return this.f16207f;
    }

    /* renamed from: g */
    public final boolean m8055g() {
        return this.f16208g;
    }

    /* renamed from: h */
    public final String m8054h() {
        return this.f16211j;
    }

    /* renamed from: i */
    public final String m8053i() {
        return this.f16212k;
    }

    /* renamed from: j */
    public final C2295a m8052j() {
        return this.f16213l;
    }

    /* renamed from: k */
    public final Map<Class<? extends Object>, Object> m8051k() {
        return this.f16210i;
    }

    /* renamed from: l */
    public final Bundle m8050l() {
        return this.f16209h;
    }

    /* renamed from: m */
    public final int m8049m() {
        return this.f16214m;
    }

    /* renamed from: n */
    public final Bundle m8048n() {
        return this.f16216o;
    }

    /* renamed from: o */
    public final Set<String> m8047o() {
        return this.f16217p;
    }

    @Deprecated
    /* renamed from: p */
    public final boolean m8046p() {
        return this.f16218q;
    }

    /* renamed from: q */
    public final C2292a m8045q() {
        return this.f16219r;
    }

    /* renamed from: r */
    public final int m8044r() {
        return this.f16220s;
    }

    /* renamed from: s */
    public final String m8043s() {
        return this.f16221t;
    }
}
