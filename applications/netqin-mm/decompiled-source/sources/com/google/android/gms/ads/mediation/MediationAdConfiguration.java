package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration.class */
public class MediationAdConfiguration {

    /* renamed from: a */
    public final String f22849a;

    /* renamed from: b */
    public final Bundle f22850b;

    /* renamed from: c */
    public final Bundle f22851c;

    /* renamed from: d */
    public final Context f22852d;

    /* renamed from: e */
    public final Location f22853e;

    /* renamed from: f */
    public final int f22854f;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment.class */
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, String str3) {
        this.f22849a = str;
        this.f22850b = bundle;
        this.f22851c = bundle2;
        this.f22852d = context;
        this.f22853e = location;
        this.f22854f = i;
    }

    /* renamed from: a */
    public String m17943a() {
        return this.f22849a;
    }

    /* renamed from: b */
    public Context m17942b() {
        return this.f22852d;
    }

    /* renamed from: c */
    public Location m17941c() {
        return this.f22853e;
    }

    /* renamed from: d */
    public Bundle m17940d() {
        return this.f22851c;
    }

    /* renamed from: e */
    public Bundle m17939e() {
        return this.f22850b;
    }

    /* renamed from: f */
    public int m17938f() {
        return this.f22854f;
    }
}
