package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.b.g;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcr.class */
public final class bcr {

    /* renamed from: a  reason: collision with root package name */
    private int f24182a;

    /* renamed from: b  reason: collision with root package name */
    private emk f24183b;

    /* renamed from: c  reason: collision with root package name */
    private dj f24184c;

    /* renamed from: d  reason: collision with root package name */
    private View f24185d;
    private List<?> e;
    private ene g;
    private Bundle h;
    private adt i;
    private adt j;
    private b k;
    private View l;
    private b m;
    private double n;
    private dr o;
    private dr p;
    private String q;
    private float t;
    private String u;
    private g<String, de> r = new g<>();
    private g<String, String> s = new g<>();
    private List<ene> f = Collections.emptyList();

    private static bco a(emk emkVar, nh nhVar) {
        if (emkVar == null) {
            return null;
        }
        return new bco(emkVar, nhVar);
    }

    private static bcr a(emk emkVar, dj djVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, b bVar, String str4, String str5, double d2, dr drVar, String str6, float f) {
        bcr bcrVar = new bcr();
        bcrVar.f24182a = 6;
        bcrVar.f24183b = emkVar;
        bcrVar.f24184c = djVar;
        bcrVar.f24185d = view;
        bcrVar.a("headline", str);
        bcrVar.e = list;
        bcrVar.a("body", str2);
        bcrVar.h = bundle;
        bcrVar.a("call_to_action", str3);
        bcrVar.l = view2;
        bcrVar.m = bVar;
        bcrVar.a(Payload.TYPE_STORE, str4);
        bcrVar.a("price", str5);
        bcrVar.n = d2;
        bcrVar.o = drVar;
        bcrVar.a("advertiser", str6);
        bcrVar.a(f);
        return bcrVar;
    }

    public static bcr a(nb nbVar) {
        try {
            bco a2 = a(nbVar.m(), (nh) null);
            dj o = nbVar.o();
            View view = (View) b(nbVar.n());
            String a3 = nbVar.a();
            List<?> b2 = nbVar.b();
            String c2 = nbVar.c();
            Bundle l = nbVar.l();
            String e = nbVar.e();
            View view2 = (View) b(nbVar.p());
            b q = nbVar.q();
            String g = nbVar.g();
            String h = nbVar.h();
            double f = nbVar.f();
            dr d2 = nbVar.d();
            bcr bcrVar = new bcr();
            bcrVar.f24182a = 2;
            bcrVar.f24183b = a2;
            bcrVar.f24184c = o;
            bcrVar.f24185d = view;
            bcrVar.a("headline", a3);
            bcrVar.e = b2;
            bcrVar.a("body", c2);
            bcrVar.h = l;
            bcrVar.a("call_to_action", e);
            bcrVar.l = view2;
            bcrVar.m = q;
            bcrVar.a(Payload.TYPE_STORE, g);
            bcrVar.a("price", h);
            bcrVar.n = f;
            bcrVar.o = d2;
            return bcrVar;
        } catch (RemoteException e2) {
            zzd.zzd("Failed to get native ad from app install ad mapper", e2);
            return null;
        }
    }

    public static bcr a(nc ncVar) {
        try {
            bco a2 = a(ncVar.l(), (nh) null);
            dj m = ncVar.m();
            View view = (View) b(ncVar.k());
            String a3 = ncVar.a();
            List<?> b2 = ncVar.b();
            String c2 = ncVar.c();
            Bundle j = ncVar.j();
            String e = ncVar.e();
            View view2 = (View) b(ncVar.n());
            b o = ncVar.o();
            String f = ncVar.f();
            dr d2 = ncVar.d();
            bcr bcrVar = new bcr();
            bcrVar.f24182a = 1;
            bcrVar.f24183b = a2;
            bcrVar.f24184c = m;
            bcrVar.f24185d = view;
            bcrVar.a("headline", a3);
            bcrVar.e = b2;
            bcrVar.a("body", c2);
            bcrVar.h = j;
            bcrVar.a("call_to_action", e);
            bcrVar.l = view2;
            bcrVar.m = o;
            bcrVar.a("advertiser", f);
            bcrVar.p = d2;
            return bcrVar;
        } catch (RemoteException e2) {
            zzd.zzd("Failed to get native ad from content ad mapper", e2);
            return null;
        }
    }

    public static bcr a(nh nhVar) {
        try {
            return a(a(nhVar.j(), nhVar), nhVar.k(), (View) b(nhVar.l()), nhVar.a(), nhVar.b(), nhVar.c(), nhVar.o(), nhVar.e(), (View) b(nhVar.m()), nhVar.n(), nhVar.h(), nhVar.i(), nhVar.g(), nhVar.d(), nhVar.f(), nhVar.s());
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    private final void a(float f) {
        synchronized (this) {
            this.t = f;
        }
    }

    public static bcr b(nb nbVar) {
        try {
            return a(a(nbVar.m(), (nh) null), nbVar.o(), (View) b(nbVar.n()), nbVar.a(), nbVar.b(), nbVar.c(), nbVar.l(), nbVar.e(), (View) b(nbVar.p()), nbVar.q(), nbVar.g(), nbVar.h(), nbVar.f(), nbVar.d(), null, BitmapDescriptorFactory.HUE_RED);
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static bcr b(nc ncVar) {
        try {
            return a(a(ncVar.l(), (nh) null), ncVar.m(), (View) b(ncVar.k()), ncVar.a(), ncVar.b(), ncVar.c(), ncVar.j(), ncVar.e(), (View) b(ncVar.n()), ncVar.o(), null, null, -1.0d, ncVar.d(), ncVar.f(), BitmapDescriptorFactory.HUE_RED);
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    private static <T> T b(b bVar) {
        if (bVar == null) {
            return null;
        }
        return (T) d.a(bVar);
    }

    private final String c(String str) {
        String str2;
        synchronized (this) {
            str2 = this.s.get(str);
        }
        return str2;
    }

    public final String A() {
        String str;
        synchronized (this) {
            str = this.u;
        }
        return str;
    }

    public final g<String, String> B() {
        g<String, String> gVar;
        synchronized (this) {
            gVar = this.s;
        }
        return gVar;
    }

    public final void C() {
        synchronized (this) {
            adt adtVar = this.i;
            if (adtVar != null) {
                adtVar.destroy();
                this.i = null;
            }
            adt adtVar2 = this.j;
            if (adtVar2 != null) {
                adtVar2.destroy();
                this.j = null;
            }
            this.k = null;
            this.r.clear();
            this.s.clear();
            this.f24183b = null;
            this.f24184c = null;
            this.f24185d = null;
            this.e = null;
            this.h = null;
            this.l = null;
            this.m = null;
            this.o = null;
            this.p = null;
            this.q = null;
        }
    }

    public final int a() {
        int i;
        synchronized (this) {
            i = this.f24182a;
        }
        return i;
    }

    public final void a(double d2) {
        synchronized (this) {
            this.n = d2;
        }
    }

    public final void a(int i) {
        synchronized (this) {
            this.f24182a = i;
        }
    }

    public final void a(View view) {
        synchronized (this) {
            this.l = view;
        }
    }

    public final void a(b bVar) {
        synchronized (this) {
            this.k = bVar;
        }
    }

    public final void a(adt adtVar) {
        synchronized (this) {
            this.i = adtVar;
        }
    }

    public final void a(dj djVar) {
        synchronized (this) {
            this.f24184c = djVar;
        }
    }

    public final void a(dr drVar) {
        synchronized (this) {
            this.o = drVar;
        }
    }

    public final void a(emk emkVar) {
        synchronized (this) {
            this.f24183b = emkVar;
        }
    }

    public final void a(ene eneVar) {
        synchronized (this) {
            this.g = eneVar;
        }
    }

    public final void a(String str) {
        synchronized (this) {
            this.q = str;
        }
    }

    public final void a(String str, de deVar) {
        synchronized (this) {
            if (deVar == null) {
                this.r.remove(str);
            } else {
                this.r.put(str, deVar);
            }
        }
    }

    public final void a(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.s.remove(str);
            } else {
                this.s.put(str, str2);
            }
        }
    }

    public final void a(List<de> list) {
        synchronized (this) {
            this.e = list;
        }
    }

    public final emk b() {
        emk emkVar;
        synchronized (this) {
            emkVar = this.f24183b;
        }
        return emkVar;
    }

    public final void b(adt adtVar) {
        synchronized (this) {
            this.j = adtVar;
        }
    }

    public final void b(dr drVar) {
        synchronized (this) {
            this.p = drVar;
        }
    }

    public final void b(String str) {
        synchronized (this) {
            this.u = str;
        }
    }

    public final void b(List<ene> list) {
        synchronized (this) {
            this.f = list;
        }
    }

    public final dj c() {
        dj djVar;
        synchronized (this) {
            djVar = this.f24184c;
        }
        return djVar;
    }

    public final View d() {
        View view;
        synchronized (this) {
            view = this.f24185d;
        }
        return view;
    }

    public final String e() {
        String c2;
        synchronized (this) {
            c2 = c("headline");
        }
        return c2;
    }

    public final List<?> f() {
        List<?> list;
        synchronized (this) {
            list = this.e;
        }
        return list;
    }

    public final dr g() {
        List<?> list = this.e;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.e.get(0);
        if (obj instanceof IBinder) {
            return du.a((IBinder) obj);
        }
        return null;
    }

    public final List<ene> h() {
        List<ene> list;
        synchronized (this) {
            list = this.f;
        }
        return list;
    }

    public final ene i() {
        ene eneVar;
        synchronized (this) {
            eneVar = this.g;
        }
        return eneVar;
    }

    public final String j() {
        String c2;
        synchronized (this) {
            c2 = c("body");
        }
        return c2;
    }

    public final Bundle k() {
        Bundle bundle;
        synchronized (this) {
            if (this.h == null) {
                this.h = new Bundle();
            }
            bundle = this.h;
        }
        return bundle;
    }

    public final String l() {
        String c2;
        synchronized (this) {
            c2 = c("call_to_action");
        }
        return c2;
    }

    public final View m() {
        View view;
        synchronized (this) {
            view = this.l;
        }
        return view;
    }

    public final b n() {
        b bVar;
        synchronized (this) {
            bVar = this.m;
        }
        return bVar;
    }

    public final String o() {
        String c2;
        synchronized (this) {
            c2 = c(Payload.TYPE_STORE);
        }
        return c2;
    }

    public final String p() {
        String c2;
        synchronized (this) {
            c2 = c("price");
        }
        return c2;
    }

    public final double q() {
        double d2;
        synchronized (this) {
            d2 = this.n;
        }
        return d2;
    }

    public final dr r() {
        dr drVar;
        synchronized (this) {
            drVar = this.o;
        }
        return drVar;
    }

    public final String s() {
        String c2;
        synchronized (this) {
            c2 = c("advertiser");
        }
        return c2;
    }

    public final dr t() {
        dr drVar;
        synchronized (this) {
            drVar = this.p;
        }
        return drVar;
    }

    public final String u() {
        String str;
        synchronized (this) {
            str = this.q;
        }
        return str;
    }

    public final adt v() {
        adt adtVar;
        synchronized (this) {
            adtVar = this.i;
        }
        return adtVar;
    }

    public final adt w() {
        adt adtVar;
        synchronized (this) {
            adtVar = this.j;
        }
        return adtVar;
    }

    public final b x() {
        b bVar;
        synchronized (this) {
            bVar = this.k;
        }
        return bVar;
    }

    public final g<String, de> y() {
        g<String, de> gVar;
        synchronized (this) {
            gVar = this.r;
        }
        return gVar;
    }

    public final float z() {
        float f;
        synchronized (this) {
            f = this.t;
        }
        return f;
    }
}
