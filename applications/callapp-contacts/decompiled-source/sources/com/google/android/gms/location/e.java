package com.google.android.gms.location;

import android.content.Context;
import com.google.android.gms.common.api.a;
import com.google.android.gms.internal.location.an;
import com.google.android.gms.internal.location.c;
import com.google.android.gms.internal.location.p;
import com.google.android.gms.internal.location.v;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a<a.d.c> f29326a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final a f29327b = new an();
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final c f29328c = new c();
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public static final f f29329d = new v();
    private static final a.g<p> e;
    private static final a.AbstractC0453a<p, a.d.c> f;

    static {
        a.g<p> gVar = new a.g<>();
        e = gVar;
        aa aaVar = new aa();
        f = aaVar;
        f29326a = new a<>("LocationServices.API", aaVar, gVar);
    }

    private e() {
    }

    public static b a(Context context) {
        return new b(context);
    }
}
