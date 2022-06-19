package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.flurry.sdk.iy */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/iy.class */
public class C0424iy {

    /* renamed from: a */
    public static final String f3284a = "iy";

    /* renamed from: b */
    public static int f3285b;

    /* renamed from: c */
    public static int f3286c;

    /* renamed from: d */
    public static AtomicInteger f3287d;

    /* renamed from: e */
    public static C0469kn<List<C0429iz>> f3288e;

    /* renamed from: f */
    private static C0424iy f3289f;

    /* renamed from: g */
    private static Map<Integer, C0429iz> f3290g;

    /* renamed from: i */
    private long f3292i;

    /* renamed from: j */
    private AbstractC0471kp<jy> f3293j = new 1(this);

    /* renamed from: h */
    private final AtomicInteger f3291h = new AtomicInteger(0);

    private C0424iy() {
        f3290g = new HashMap();
        f3287d = new AtomicInteger(0);
        if (f3286c == 0) {
            f3286c = 600000;
        }
        if (f3285b == 0) {
            f3285b = 15;
        }
        this.f3292i = C0462kg.m4652a().f3460a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getLong("timeToSendNextPulseReport", 0L);
        if (f3288e == null) {
            m4743f();
        }
        C0472kq.m4617a().m4613a("com.flurry.android.sdk.NetworkStateEvent", this.f3293j);
    }

    /* renamed from: a */
    public static void m4758a(int i) {
        f3285b = i;
    }

    /* renamed from: b */
    public static List<C0429iz> m4753b() {
        return new ArrayList(f3290g.values());
    }

    /* renamed from: b */
    public static void m4752b(int i) {
        f3286c = i;
    }

    /* renamed from: c */
    public static C0424iy m4748c() {
        C0424iy c0424iy;
        synchronized (C0424iy.class) {
            try {
                if (f3289f == null) {
                    f3289f = new C0424iy();
                }
                c0424iy = f3289f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0424iy;
    }

    /* renamed from: c */
    private void m4747c(int i) {
        synchronized (this) {
            String str = f3284a;
            C0478ku.m4596a(3, str, "Removing report " + i + " from PulseCallbackManager");
            f3290g.remove(Integer.valueOf(i));
        }
    }

    /* renamed from: c */
    private void m4746c(C0422iw c0422iw) {
        c0422iw.f3267d = true;
        c0422iw.m4761a();
        f3287d.incrementAndGet();
        c0422iw.f3275l.c();
        String str = f3284a;
        C0478ku.m4596a(3, str, c0422iw.f3275l.g.f3303c + " report to " + c0422iw.f3275l.l + " finalized.");
        m4759a();
        m4740i();
    }

    /* renamed from: d */
    public static List<C0429iz> m4745d() {
        if (f3288e == null) {
            m4743f();
        }
        return f3288e.m4623a();
    }

    /* renamed from: f */
    public static void m4743f() {
        f3288e = new C0469kn<>(C0462kg.m4652a().f3460a.getFileStreamPath(".yflurryanongoingpulsecallbackreporter"), ".yflurryanongoingpulsecallbackreporter", 2, new 2());
    }

    /* renamed from: g */
    public void m4742g() {
        SharedPreferences.Editor edit = C0462kg.m4652a().f3460a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putLong("timeToSendNextPulseReport", this.f3292i);
        edit.apply();
    }

    /* renamed from: h */
    private int m4741h() {
        int incrementAndGet;
        synchronized (this) {
            incrementAndGet = this.f3291h.incrementAndGet();
        }
        return incrementAndGet;
    }

    /* renamed from: i */
    private void m4740i() {
        if (m4739j() || m4738k()) {
            C0478ku.m4596a(3, f3284a, "Threshold reached. Sending callback logging reports");
            m4737l();
        }
    }

    /* renamed from: j */
    private static boolean m4739j() {
        return f3287d.intValue() >= f3285b;
    }

    /* renamed from: k */
    private boolean m4738k() {
        return System.currentTimeMillis() > this.f3292i;
    }

    /* renamed from: l */
    private void m4737l() {
        Iterator<C0429iz> it = m4753b().iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                break;
            }
            C0429iz next = it.next();
            for (iv ivVar : next.m4736a()) {
                Iterator it2 = ivVar.f.iterator();
                boolean z2 = z;
                while (true) {
                    z = z2;
                    if (it2.hasNext()) {
                        C0422iw c0422iw = (C0422iw) it2.next();
                        if (c0422iw.f3273j) {
                            it2.remove();
                        } else if (!c0422iw.f3269f.equals(EnumC0423ix.PENDING_COMPLETION)) {
                            c0422iw.f3273j = true;
                            z2 = true;
                        }
                    }
                }
            }
            if (z) {
                C0430ja.m4717a().m4716a(next);
            }
        }
        C0430ja.m4717a().m4713b();
        this.f3292i = System.currentTimeMillis() + f3286c;
        m4742g();
        for (C0429iz c0429iz : m4753b()) {
            if (c0429iz.m4730b()) {
                m4747c(c0429iz.f3302b);
            } else {
                for (iv ivVar2 : c0429iz.m4736a()) {
                    if (ivVar2.m) {
                        c0429iz.f3304d.remove(Long.valueOf(ivVar2.a));
                    } else {
                        Iterator it3 = ivVar2.f.iterator();
                        while (it3.hasNext()) {
                            if (((C0422iw) it3.next()).f3273j) {
                                it3.remove();
                            }
                        }
                    }
                }
            }
        }
        f3287d = new AtomicInteger(0);
        m4759a();
    }

    /* renamed from: a */
    public final void m4759a() {
        C0462kg.m4652a().m4647b(new Runnable() { // from class: com.flurry.sdk.iy.6
            @Override // java.lang.Runnable
            public final void run() {
                C0424iy.m4748c();
                List<C0429iz> m4753b = C0424iy.m4753b();
                if (C0424iy.f3288e == null) {
                    C0424iy.m4743f();
                }
                C0424iy.f3288e.m4622a(m4753b);
            }
        });
    }

    /* renamed from: a */
    public final void m4757a(final C0422iw c0422iw) {
        synchronized (this) {
            String str = f3284a;
            C0478ku.m4596a(3, str, c0422iw.f3275l.g.f3303c + " report sent successfully to " + c0422iw.f3275l.l);
            c0422iw.f3269f = EnumC0423ix.COMPLETE;
            c0422iw.f3270g = "";
            m4746c(c0422iw);
            if (C0478ku.m4589c() <= 3 && C0478ku.m4586d()) {
                C0462kg.m4652a().m4649a(new Runnable() { // from class: com.flurry.sdk.iy.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context = C0462kg.m4652a().f3460a;
                        Toast.makeText(context, "PulseCallbackReportInfo HTTP Response Code: " + c0422iw.f3268e + " for url: " + c0422iw.f3275l.f3533r, 1).show();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m4754a(C0429iz c0429iz) {
        synchronized (this) {
            if (c0429iz == null) {
                C0478ku.m4596a(3, f3284a, "Must add valid PulseCallbackAsyncReportInfo");
                return;
            }
            String str = f3284a;
            C0478ku.m4596a(3, str, "Adding and sending " + c0429iz.f3303c + " report to PulseCallbackManager.");
            if (c0429iz.m4736a().size() != 0) {
                if (this.f3292i == 0) {
                    this.f3292i = System.currentTimeMillis() + f3286c;
                    C0462kg.m4652a().m4647b(new Runnable() { // from class: com.flurry.sdk.iy.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            C0424iy.this.m4742g();
                        }
                    });
                }
                int m4741h = m4741h();
                c0429iz.f3302b = m4741h;
                f3290g.put(Integer.valueOf(m4741h), c0429iz);
                for (iv ivVar : c0429iz.m4736a()) {
                    hx.a().c.m4556b(ivVar);
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m4756a(C0422iw c0422iw, String str) {
        synchronized (this) {
            c0422iw.f3271h++;
            c0422iw.f3272i = System.currentTimeMillis();
            if (!(c0422iw.f3271h > c0422iw.f3275l.c) && !TextUtils.isEmpty(str)) {
                C0478ku.m4596a(3, f3284a, "Report to " + c0422iw.f3275l.l + " redirecting to url: " + str);
                c0422iw.f3275l.f3533r = str;
                m4759a();
                return true;
            }
            C0478ku.m4596a(3, f3284a, "Maximum number of redirects attempted. Aborting: " + c0422iw.f3275l.g.f3303c + " report to " + c0422iw.f3275l.l);
            c0422iw.f3269f = EnumC0423ix.INVALID_RESPONSE;
            c0422iw.f3270g = "";
            m4746c(c0422iw);
            return false;
        }
    }

    /* renamed from: b */
    public final void m4751b(C0422iw c0422iw) {
        synchronized (this) {
            String str = f3284a;
            C0478ku.m4596a(3, str, "Maximum number of attempts reached. Aborting: " + c0422iw.f3275l.g.f3303c);
            c0422iw.f3269f = EnumC0423ix.TIMEOUT;
            c0422iw.f3272i = System.currentTimeMillis();
            c0422iw.f3270g = "";
            m4746c(c0422iw);
        }
    }

    /* renamed from: b */
    public final void m4749b(C0429iz c0429iz) {
        synchronized (this) {
            if (c0429iz == null) {
                C0478ku.m4596a(3, f3284a, "Must add valid PulseCallbackAsyncReportInfo");
                return;
            }
            if (this.f3292i == 0) {
                this.f3292i = System.currentTimeMillis() + f3286c;
                C0462kg.m4652a().m4647b(new Runnable() { // from class: com.flurry.sdk.iy.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0424iy.this.m4742g();
                    }
                });
            }
            int m4741h = m4741h();
            c0429iz.f3302b = m4741h;
            f3290g.put(Integer.valueOf(m4741h), c0429iz);
            for (iv ivVar : c0429iz.m4736a()) {
                Iterator it = ivVar.f.iterator();
                while (it.hasNext()) {
                    it.next();
                    f3287d.incrementAndGet();
                    if (m4739j()) {
                        C0478ku.m4596a(3, f3284a, "Max Callback Attempts threshold reached. Sending callback logging reports");
                        m4737l();
                    }
                }
            }
            if (m4738k()) {
                C0478ku.m4596a(3, f3284a, "Time threshold reached. Sending callback logging reports");
                m4737l();
            }
            String str = f3284a;
            C0478ku.m4596a(3, str, "Restoring " + c0429iz.f3303c + " report to PulseCallbackManager. Number of stored completed callbacks: " + f3287d.get());
        }
    }

    /* renamed from: b */
    public final boolean m4750b(C0422iw c0422iw, String str) {
        boolean z;
        synchronized (this) {
            c0422iw.f3269f = EnumC0423ix.INVALID_RESPONSE;
            c0422iw.f3272i = System.currentTimeMillis();
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            c0422iw.f3270g = str2;
            iv ivVar = c0422iw.f3275l;
            z = true;
            if (ivVar.f3531p >= ivVar.b) {
                C0478ku.m4596a(3, f3284a, "Maximum number of attempts reached. Aborting: " + c0422iw.f3275l.g.f3303c + " report to " + c0422iw.f3275l.l);
            } else if (!C0508mh.m4455h(ivVar.f3533r)) {
                C0478ku.m4596a(3, f3284a, "Url: " + c0422iw.f3275l.f3533r + " is invalid.");
            } else {
                C0478ku.m4596a(3, f3284a, "Retrying callback to " + c0422iw.f3275l.g.f3303c + " in: " + (c0422iw.f3275l.h / 1000) + " seconds.");
                c0422iw.m4761a();
                f3287d.incrementAndGet();
                m4759a();
                m4740i();
            }
            m4746c(c0422iw);
            z = false;
        }
        return z;
    }
}
