package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.AbstractC5788s;
import com.google.android.gms.ads.nativead.C5800b;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v80.class */
public final class v80 implements AbstractC5788s {

    /* renamed from: a */
    private final Date f31091a;

    /* renamed from: b */
    private final int f31092b;

    /* renamed from: c */
    private final Set<String> f31093c;

    /* renamed from: d */
    private final boolean f31094d;

    /* renamed from: e */
    private final Location f31095e;

    /* renamed from: f */
    private final int f31096f;

    /* renamed from: g */
    private final zzblv f31097g;

    /* renamed from: i */
    private final boolean f31099i;

    /* renamed from: k */
    private final String f31101k;

    /* renamed from: h */
    private final List<String> f31098h = new ArrayList();

    /* renamed from: j */
    private final Map<String, Boolean> f31100j = new HashMap();

    public v80(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzblv zzblvVar, List<String> list, boolean z2, int i3, String str) {
        this.f31091a = date;
        this.f31092b = i;
        this.f31093c = set;
        this.f31095e = location;
        this.f31094d = z;
        this.f31096f = i2;
        this.f31097g = zzblvVar;
        this.f31099i = z2;
        this.f31101k = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.f31100j.put(split[1], Boolean.TRUE);
                        } else if ("false".equals(split[2])) {
                            this.f31100j.put(split[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.f31098h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5788s
    /* renamed from: a */
    public final C5800b mo10077a() {
        return zzblv.m8073k0(this.f31097g);
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5788s
    /* renamed from: b */
    public final Map<String, Boolean> mo10076b() {
        return this.f31100j;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: c */
    public final int mo10075c() {
        return this.f31096f;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5788s
    /* renamed from: d */
    public final boolean mo10074d() {
        return this.f31098h.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    @Deprecated
    /* renamed from: e */
    public final boolean mo10073e() {
        return this.f31099i;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    @Deprecated
    /* renamed from: f */
    public final Date mo10072f() {
        return this.f31091a;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: g */
    public final boolean mo10071g() {
        return this.f31094d;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: h */
    public final Set<String> mo10070h() {
        return this.f31093c;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5788s
    /* renamed from: i */
    public final C5608c mo10069i() {
        C5608c c5608c;
        zzblv zzblvVar = this.f31097g;
        C5608c.C5609a c5609a = new C5608c.C5609a();
        if (zzblvVar == null) {
            c5608c = c5609a.m18250a();
        } else {
            int i = zzblvVar.f33717d;
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        c5609a.m18246e(zzblvVar.f33723j);
                        c5609a.m18247d(zzblvVar.f33724k);
                    }
                    c5609a.m18244g(zzblvVar.f33718e);
                    c5609a.m18248c(zzblvVar.f33719f);
                    c5609a.m18245f(zzblvVar.f33720g);
                    c5608c = c5609a.m18250a();
                }
                zzbis zzbisVar = zzblvVar.f33722i;
                if (zzbisVar != null) {
                    c5609a.m18243h(new C5848t(zzbisVar));
                }
            }
            c5609a.m18249b(zzblvVar.f33721h);
            c5609a.m18244g(zzblvVar.f33718e);
            c5609a.m18248c(zzblvVar.f33719f);
            c5609a.m18245f(zzblvVar.f33720g);
            c5608c = c5609a.m18250a();
        }
        return c5608c;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: j */
    public final Location mo10068j() {
        return this.f31095e;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    @Deprecated
    /* renamed from: k */
    public final int mo10067k() {
        return this.f31092b;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5788s
    public final boolean zza() {
        return this.f31098h.contains("3");
    }
}
