package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.p023b.C0441g;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcr.class */
public final class bcr {

    /* renamed from: a */
    private int f43577a;

    /* renamed from: b */
    private emk f43578b;

    /* renamed from: c */
    private AbstractC12371dj f43579c;

    /* renamed from: d */
    private View f43580d;

    /* renamed from: e */
    private List<?> f43581e;

    /* renamed from: g */
    private ene f43583g;

    /* renamed from: h */
    private Bundle f43584h;

    /* renamed from: i */
    private adt f43585i;

    /* renamed from: j */
    private adt f43586j;

    /* renamed from: k */
    private AbstractC12126b f43587k;

    /* renamed from: l */
    private View f43588l;

    /* renamed from: m */
    private AbstractC12126b f43589m;

    /* renamed from: n */
    private double f43590n;

    /* renamed from: o */
    private AbstractC12394dr f43591o;

    /* renamed from: p */
    private AbstractC12394dr f43592p;

    /* renamed from: q */
    private String f43593q;

    /* renamed from: t */
    private float f43596t;

    /* renamed from: u */
    private String f43597u;

    /* renamed from: r */
    private C0441g<String, BinderC12325de> f43594r = new C0441g<>();

    /* renamed from: s */
    private C0441g<String, String> f43595s = new C0441g<>();

    /* renamed from: f */
    private List<ene> f43582f = Collections.emptyList();

    /* renamed from: a */
    private static bco m18187a(emk emkVar, AbstractC12769nh abstractC12769nh) {
        if (emkVar == null) {
            return null;
        }
        return new bco(emkVar, abstractC12769nh);
    }

    /* renamed from: a */
    private static bcr m18188a(emk emkVar, AbstractC12371dj abstractC12371dj, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, AbstractC12126b abstractC12126b, String str4, String str5, double d, AbstractC12394dr abstractC12394dr, String str6, float f) {
        bcr bcrVar = new bcr();
        bcrVar.f43577a = 6;
        bcrVar.f43578b = emkVar;
        bcrVar.f43579c = abstractC12371dj;
        bcrVar.f43580d = view;
        bcrVar.m18180a("headline", str);
        bcrVar.f43581e = list;
        bcrVar.m18180a("body", str2);
        bcrVar.f43584h = bundle;
        bcrVar.m18180a("call_to_action", str3);
        bcrVar.f43588l = view2;
        bcrVar.f43589m = abstractC12126b;
        bcrVar.m18180a(Payload.TYPE_STORE, str4);
        bcrVar.m18180a("price", str5);
        bcrVar.f43590n = d;
        bcrVar.f43591o = abstractC12394dr;
        bcrVar.m18180a("advertiser", str6);
        bcrVar.m18196a(f);
        return bcrVar;
    }

    /* renamed from: a */
    public static bcr m18185a(AbstractC12763nb abstractC12763nb) {
        try {
            bco m18187a = m18187a(abstractC12763nb.mo14375m(), (AbstractC12769nh) null);
            AbstractC12371dj mo14373o = abstractC12763nb.mo14373o();
            View view = (View) m18177b(abstractC12763nb.mo14374n());
            String mo14391a = abstractC12763nb.mo14391a();
            List<?> mo14388b = abstractC12763nb.mo14388b();
            String mo14386c = abstractC12763nb.mo14386c();
            Bundle mo14376l = abstractC12763nb.mo14376l();
            String mo14383e = abstractC12763nb.mo14383e();
            View view2 = (View) m18177b(abstractC12763nb.mo14372p());
            AbstractC12126b mo14371q = abstractC12763nb.mo14371q();
            String mo14381g = abstractC12763nb.mo14381g();
            String mo14380h = abstractC12763nb.mo14380h();
            double mo14382f = abstractC12763nb.mo14382f();
            AbstractC12394dr mo14384d = abstractC12763nb.mo14384d();
            bcr bcrVar = new bcr();
            bcrVar.f43577a = 2;
            bcrVar.f43578b = m18187a;
            bcrVar.f43579c = mo14373o;
            bcrVar.f43580d = view;
            bcrVar.m18180a("headline", mo14391a);
            bcrVar.f43581e = mo14388b;
            bcrVar.m18180a("body", mo14386c);
            bcrVar.f43584h = mo14376l;
            bcrVar.m18180a("call_to_action", mo14383e);
            bcrVar.f43588l = view2;
            bcrVar.f43589m = mo14371q;
            bcrVar.m18180a(Payload.TYPE_STORE, mo14381g);
            bcrVar.m18180a("price", mo14380h);
            bcrVar.f43590n = mo14382f;
            bcrVar.f43591o = mo14384d;
            return bcrVar;
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: a */
    public static bcr m18184a(AbstractC12764nc abstractC12764nc) {
        try {
            bco m18187a = m18187a(abstractC12764nc.mo14395l(), (AbstractC12769nh) null);
            AbstractC12371dj mo14394m = abstractC12764nc.mo14394m();
            View view = (View) m18177b(abstractC12764nc.mo14396k());
            String mo14410a = abstractC12764nc.mo14410a();
            List<?> mo14407b = abstractC12764nc.mo14407b();
            String mo14405c = abstractC12764nc.mo14405c();
            Bundle mo14397j = abstractC12764nc.mo14397j();
            String mo14402e = abstractC12764nc.mo14402e();
            View view2 = (View) m18177b(abstractC12764nc.mo14393n());
            AbstractC12126b mo14392o = abstractC12764nc.mo14392o();
            String mo14401f = abstractC12764nc.mo14401f();
            AbstractC12394dr mo14403d = abstractC12764nc.mo14403d();
            bcr bcrVar = new bcr();
            bcrVar.f43577a = 1;
            bcrVar.f43578b = m18187a;
            bcrVar.f43579c = mo14394m;
            bcrVar.f43580d = view;
            bcrVar.m18180a("headline", mo14410a);
            bcrVar.f43581e = mo14407b;
            bcrVar.m18180a("body", mo14405c);
            bcrVar.f43584h = mo14397j;
            bcrVar.m18180a("call_to_action", mo14402e);
            bcrVar.f43588l = view2;
            bcrVar.f43589m = mo14392o;
            bcrVar.m18180a("advertiser", mo14401f);
            bcrVar.f43592p = mo14403d;
            return bcrVar;
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: a */
    public static bcr m18183a(AbstractC12769nh abstractC12769nh) {
        try {
            return m18188a(m18187a(abstractC12769nh.mo14316j(), abstractC12769nh), abstractC12769nh.mo14315k(), (View) m18177b(abstractC12769nh.mo14314l()), abstractC12769nh.mo14328a(), abstractC12769nh.mo14325b(), abstractC12769nh.mo14323c(), abstractC12769nh.mo14311o(), abstractC12769nh.mo14321e(), (View) m18177b(abstractC12769nh.mo14313m()), abstractC12769nh.mo14312n(), abstractC12769nh.mo14318h(), abstractC12769nh.mo14317i(), abstractC12769nh.mo14319g(), abstractC12769nh.mo14322d(), abstractC12769nh.mo14320f(), abstractC12769nh.mo14307s());
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    /* renamed from: a */
    private final void m18196a(float f) {
        synchronized (this) {
            this.f43596t = f;
        }
    }

    /* renamed from: b */
    public static bcr m18174b(AbstractC12763nb abstractC12763nb) {
        try {
            return m18188a(m18187a(abstractC12763nb.mo14375m(), (AbstractC12769nh) null), abstractC12763nb.mo14373o(), (View) m18177b(abstractC12763nb.mo14374n()), abstractC12763nb.mo14391a(), abstractC12763nb.mo14388b(), abstractC12763nb.mo14386c(), abstractC12763nb.mo14376l(), abstractC12763nb.mo14383e(), (View) m18177b(abstractC12763nb.mo14372p()), abstractC12763nb.mo14371q(), abstractC12763nb.mo14381g(), abstractC12763nb.mo14380h(), abstractC12763nb.mo14382f(), abstractC12763nb.mo14384d(), null, BitmapDescriptorFactory.HUE_RED);
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    /* renamed from: b */
    public static bcr m18173b(AbstractC12764nc abstractC12764nc) {
        try {
            return m18188a(m18187a(abstractC12764nc.mo14395l(), (AbstractC12769nh) null), abstractC12764nc.mo14394m(), (View) m18177b(abstractC12764nc.mo14396k()), abstractC12764nc.mo14410a(), abstractC12764nc.mo14407b(), abstractC12764nc.mo14405c(), abstractC12764nc.mo14397j(), abstractC12764nc.mo14402e(), (View) m18177b(abstractC12764nc.mo14393n()), abstractC12764nc.mo14392o(), null, null, -1.0d, abstractC12764nc.mo14403d(), abstractC12764nc.mo14401f(), BitmapDescriptorFactory.HUE_RED);
        } catch (RemoteException e) {
            zzd.zzd("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    /* renamed from: b */
    private static <T> T m18177b(AbstractC12126b abstractC12126b) {
        if (abstractC12126b == null) {
            return null;
        }
        return (T) BinderC12129d.m18980a(abstractC12126b);
    }

    /* renamed from: c */
    private final String m18169c(String str) {
        String str2;
        synchronized (this) {
            str2 = this.f43595s.get(str);
        }
        return str2;
    }

    /* renamed from: A */
    public final String m18201A() {
        String str;
        synchronized (this) {
            str = this.f43597u;
        }
        return str;
    }

    /* renamed from: B */
    public final C0441g<String, String> m18200B() {
        C0441g<String, String> c0441g;
        synchronized (this) {
            c0441g = this.f43595s;
        }
        return c0441g;
    }

    /* renamed from: C */
    public final void m18199C() {
        synchronized (this) {
            adt adtVar = this.f43585i;
            if (adtVar != null) {
                adtVar.destroy();
                this.f43585i = null;
            }
            adt adtVar2 = this.f43586j;
            if (adtVar2 != null) {
                adtVar2.destroy();
                this.f43586j = null;
            }
            this.f43587k = null;
            this.f43594r.clear();
            this.f43595s.clear();
            this.f43578b = null;
            this.f43579c = null;
            this.f43580d = null;
            this.f43581e = null;
            this.f43584h = null;
            this.f43588l = null;
            this.f43589m = null;
            this.f43591o = null;
            this.f43592p = null;
            this.f43593q = null;
        }
    }

    /* renamed from: a */
    public final int m18198a() {
        int i;
        synchronized (this) {
            i = this.f43577a;
        }
        return i;
    }

    /* renamed from: a */
    public final void m18197a(double d) {
        synchronized (this) {
            this.f43590n = d;
        }
    }

    /* renamed from: a */
    public final void m18195a(int i) {
        synchronized (this) {
            this.f43577a = i;
        }
    }

    /* renamed from: a */
    public final void m18194a(View view) {
        synchronized (this) {
            this.f43588l = view;
        }
    }

    /* renamed from: a */
    public final void m18193a(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            this.f43587k = abstractC12126b;
        }
    }

    /* renamed from: a */
    public final void m18192a(adt adtVar) {
        synchronized (this) {
            this.f43585i = adtVar;
        }
    }

    /* renamed from: a */
    public final void m18191a(AbstractC12371dj abstractC12371dj) {
        synchronized (this) {
            this.f43579c = abstractC12371dj;
        }
    }

    /* renamed from: a */
    public final void m18190a(AbstractC12394dr abstractC12394dr) {
        synchronized (this) {
            this.f43591o = abstractC12394dr;
        }
    }

    /* renamed from: a */
    public final void m18189a(emk emkVar) {
        synchronized (this) {
            this.f43578b = emkVar;
        }
    }

    /* renamed from: a */
    public final void m18186a(ene eneVar) {
        synchronized (this) {
            this.f43583g = eneVar;
        }
    }

    /* renamed from: a */
    public final void m18182a(String str) {
        synchronized (this) {
            this.f43593q = str;
        }
    }

    /* renamed from: a */
    public final void m18181a(String str, BinderC12325de binderC12325de) {
        synchronized (this) {
            if (binderC12325de == null) {
                this.f43594r.remove(str);
            } else {
                this.f43594r.put(str, binderC12325de);
            }
        }
    }

    /* renamed from: a */
    public final void m18180a(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.f43595s.remove(str);
            } else {
                this.f43595s.put(str, str2);
            }
        }
    }

    /* renamed from: a */
    public final void m18179a(List<BinderC12325de> list) {
        synchronized (this) {
            this.f43581e = list;
        }
    }

    /* renamed from: b */
    public final emk m18178b() {
        emk emkVar;
        synchronized (this) {
            emkVar = this.f43578b;
        }
        return emkVar;
    }

    /* renamed from: b */
    public final void m18176b(adt adtVar) {
        synchronized (this) {
            this.f43586j = adtVar;
        }
    }

    /* renamed from: b */
    public final void m18175b(AbstractC12394dr abstractC12394dr) {
        synchronized (this) {
            this.f43592p = abstractC12394dr;
        }
    }

    /* renamed from: b */
    public final void m18172b(String str) {
        synchronized (this) {
            this.f43597u = str;
        }
    }

    /* renamed from: b */
    public final void m18171b(List<ene> list) {
        synchronized (this) {
            this.f43582f = list;
        }
    }

    /* renamed from: c */
    public final AbstractC12371dj m18170c() {
        AbstractC12371dj abstractC12371dj;
        synchronized (this) {
            abstractC12371dj = this.f43579c;
        }
        return abstractC12371dj;
    }

    /* renamed from: d */
    public final View m18168d() {
        View view;
        synchronized (this) {
            view = this.f43580d;
        }
        return view;
    }

    /* renamed from: e */
    public final String m18167e() {
        String m18169c;
        synchronized (this) {
            m18169c = m18169c("headline");
        }
        return m18169c;
    }

    /* renamed from: f */
    public final List<?> m18166f() {
        List<?> list;
        synchronized (this) {
            list = this.f43581e;
        }
        return list;
    }

    /* renamed from: g */
    public final AbstractC12394dr m18165g() {
        List<?> list = this.f43581e;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.f43581e.get(0);
        if (!(obj instanceof IBinder)) {
            return null;
        }
        return AbstractBinderC12426du.m15703a((IBinder) obj);
    }

    /* renamed from: h */
    public final List<ene> m18164h() {
        List<ene> list;
        synchronized (this) {
            list = this.f43582f;
        }
        return list;
    }

    /* renamed from: i */
    public final ene m18163i() {
        ene eneVar;
        synchronized (this) {
            eneVar = this.f43583g;
        }
        return eneVar;
    }

    /* renamed from: j */
    public final String m18162j() {
        String m18169c;
        synchronized (this) {
            m18169c = m18169c("body");
        }
        return m18169c;
    }

    /* renamed from: k */
    public final Bundle m18161k() {
        Bundle bundle;
        synchronized (this) {
            if (this.f43584h == null) {
                this.f43584h = new Bundle();
            }
            bundle = this.f43584h;
        }
        return bundle;
    }

    /* renamed from: l */
    public final String m18160l() {
        String m18169c;
        synchronized (this) {
            m18169c = m18169c("call_to_action");
        }
        return m18169c;
    }

    /* renamed from: m */
    public final View m18159m() {
        View view;
        synchronized (this) {
            view = this.f43588l;
        }
        return view;
    }

    /* renamed from: n */
    public final AbstractC12126b m18158n() {
        AbstractC12126b abstractC12126b;
        synchronized (this) {
            abstractC12126b = this.f43589m;
        }
        return abstractC12126b;
    }

    /* renamed from: o */
    public final String m18157o() {
        String m18169c;
        synchronized (this) {
            m18169c = m18169c(Payload.TYPE_STORE);
        }
        return m18169c;
    }

    /* renamed from: p */
    public final String m18156p() {
        String m18169c;
        synchronized (this) {
            m18169c = m18169c("price");
        }
        return m18169c;
    }

    /* renamed from: q */
    public final double m18155q() {
        double d;
        synchronized (this) {
            d = this.f43590n;
        }
        return d;
    }

    /* renamed from: r */
    public final AbstractC12394dr m18154r() {
        AbstractC12394dr abstractC12394dr;
        synchronized (this) {
            abstractC12394dr = this.f43591o;
        }
        return abstractC12394dr;
    }

    /* renamed from: s */
    public final String m18153s() {
        String m18169c;
        synchronized (this) {
            m18169c = m18169c("advertiser");
        }
        return m18169c;
    }

    /* renamed from: t */
    public final AbstractC12394dr m18152t() {
        AbstractC12394dr abstractC12394dr;
        synchronized (this) {
            abstractC12394dr = this.f43592p;
        }
        return abstractC12394dr;
    }

    /* renamed from: u */
    public final String m18151u() {
        String str;
        synchronized (this) {
            str = this.f43593q;
        }
        return str;
    }

    /* renamed from: v */
    public final adt m18150v() {
        adt adtVar;
        synchronized (this) {
            adtVar = this.f43585i;
        }
        return adtVar;
    }

    /* renamed from: w */
    public final adt m18149w() {
        adt adtVar;
        synchronized (this) {
            adtVar = this.f43586j;
        }
        return adtVar;
    }

    /* renamed from: x */
    public final AbstractC12126b m18148x() {
        AbstractC12126b abstractC12126b;
        synchronized (this) {
            abstractC12126b = this.f43587k;
        }
        return abstractC12126b;
    }

    /* renamed from: y */
    public final C0441g<String, BinderC12325de> m18147y() {
        C0441g<String, BinderC12325de> c0441g;
        synchronized (this) {
            c0441g = this.f43594r;
        }
        return c0441g;
    }

    /* renamed from: z */
    public final float m18146z() {
        float f;
        synchronized (this) {
            f = this.f43596t;
        }
        return f;
    }
}
