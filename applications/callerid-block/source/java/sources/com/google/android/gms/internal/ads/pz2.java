package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pz2.class */
public final class pz2 {

    /* renamed from: a */
    private Bundle f8178a = new Bundle();

    /* renamed from: b */
    private List<String> f8179b = new ArrayList();

    /* renamed from: c */
    private boolean f8180c = false;

    /* renamed from: d */
    private int f8181d = -1;

    /* renamed from: e */
    private final Bundle f8182e = new Bundle();

    /* renamed from: f */
    private final Bundle f8183f = new Bundle();

    /* renamed from: g */
    private final List<String> f8184g = new ArrayList();

    /* renamed from: h */
    private int f8185h = -1;

    /* renamed from: i */
    private String f8186i = null;

    /* renamed from: j */
    private final List<String> f8187j = new ArrayList();

    /* renamed from: k */
    private int f8188k = 60000;

    /* renamed from: a */
    public final zzys m6152a() {
        return new zzys(8, -1L, this.f8178a, -1, this.f8179b, this.f8180c, this.f8181d, false, (String) null, (zzadu) null, (Location) null, (String) null, this.f8182e, this.f8183f, this.f8184g, (String) null, (String) null, false, (zzyk) null, this.f8185h, this.f8186i, this.f8187j, this.f8188k);
    }

    /* renamed from: b */
    public final pz2 m6151b(Bundle bundle) {
        this.f8178a = bundle;
        return this;
    }

    /* renamed from: c */
    public final pz2 m6150c(List<String> list) {
        this.f8179b = list;
        return this;
    }

    /* renamed from: d */
    public final pz2 m6149d(boolean z) {
        this.f8180c = z;
        return this;
    }

    /* renamed from: e */
    public final pz2 m6148e(int i) {
        this.f8181d = i;
        return this;
    }

    /* renamed from: f */
    public final pz2 m6147f(int i) {
        this.f8185h = i;
        return this;
    }

    /* renamed from: g */
    public final pz2 m6146g(String str) {
        this.f8186i = str;
        return this;
    }

    /* renamed from: h */
    public final pz2 m6145h(int i) {
        this.f8188k = i;
        return this;
    }
}
