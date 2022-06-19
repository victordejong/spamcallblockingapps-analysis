package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ih0.class */
public final class ih0 {

    /* renamed from: a */
    private final AbstractC6227e f24269a;

    /* renamed from: b */
    private final th0 f24270b;

    /* renamed from: e */
    private final String f24273e;

    /* renamed from: f */
    private final String f24274f;

    /* renamed from: d */
    private final Object f24272d = new Object();

    /* renamed from: g */
    private long f24275g = -1;

    /* renamed from: h */
    private long f24276h = -1;

    /* renamed from: i */
    private long f24277i = 0;

    /* renamed from: j */
    private long f24278j = -1;

    /* renamed from: k */
    private long f24279k = -1;

    /* renamed from: c */
    private final LinkedList<hh0> f24271c = new LinkedList<>();

    public ih0(AbstractC6227e abstractC6227e, th0 th0Var, String str, String str2) {
        this.f24269a = abstractC6227e;
        this.f24270b = th0Var;
        this.f24273e = str;
        this.f24274f = str2;
    }

    /* renamed from: b */
    public final void m14401b(zzbdg zzbdgVar) {
        synchronized (this.f24272d) {
            long mo16806b = this.f24269a.mo16806b();
            this.f24278j = mo16806b;
            this.f24270b.m10682f(zzbdgVar, mo16806b);
        }
    }

    /* renamed from: c */
    public final void m14400c() {
        synchronized (this.f24272d) {
            this.f24270b.m10681g();
        }
    }

    /* renamed from: d */
    public final void m14399d() {
        synchronized (this.f24272d) {
            this.f24270b.m10680h();
        }
    }

    /* renamed from: e */
    public final void m14398e(long j) {
        synchronized (this.f24272d) {
            this.f24279k = j;
            if (j != -1) {
                this.f24270b.m10686a(this);
            }
        }
    }

    /* renamed from: f */
    public final void m14397f() {
        synchronized (this.f24272d) {
            if (this.f24279k != -1 && this.f24275g == -1) {
                this.f24275g = this.f24269a.mo16806b();
                this.f24270b.m10686a(this);
            }
            this.f24270b.m10683e();
        }
    }

    /* renamed from: g */
    public final void m14396g() {
        synchronized (this.f24272d) {
            if (this.f24279k != -1) {
                hh0 hh0Var = new hh0(this);
                hh0Var.m14663c();
                this.f24271c.add(hh0Var);
                this.f24277i++;
                this.f24270b.m10684d();
                this.f24270b.m10686a(this);
            }
        }
    }

    /* renamed from: h */
    public final void m14395h() {
        synchronized (this.f24272d) {
            if (this.f24279k != -1 && !this.f24271c.isEmpty()) {
                hh0 last = this.f24271c.getLast();
                if (last.m14665a() == -1) {
                    last.m14664b();
                    this.f24270b.m10686a(this);
                }
            }
        }
    }

    /* renamed from: i */
    public final void m14394i(boolean z) {
        synchronized (this.f24272d) {
            if (this.f24279k != -1) {
                this.f24276h = this.f24269a.mo16806b();
            }
        }
    }

    /* renamed from: j */
    public final Bundle m14393j() {
        Bundle bundle;
        synchronized (this.f24272d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f24273e);
            bundle.putString("slotid", this.f24274f);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.f24278j);
            bundle.putLong("tresponse", this.f24279k);
            bundle.putLong("timp", this.f24275g);
            bundle.putLong("tload", this.f24276h);
            bundle.putLong("pcc", this.f24277i);
            bundle.putLong("tfetch", -1L);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<hh0> it = this.f24271c.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().m14662d());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    /* renamed from: k */
    public final String m14392k() {
        return this.f24273e;
    }
}
