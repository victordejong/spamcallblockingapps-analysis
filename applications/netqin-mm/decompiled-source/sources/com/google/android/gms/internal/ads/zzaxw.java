package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import p131c.p161d.p170b.p224d.p252g.p253a.C4165w4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxw.class */
public final class zzaxw {

    /* renamed from: a */
    public final Clock f24590a;

    /* renamed from: b */
    public final zzayi f24591b;

    /* renamed from: e */
    public final String f24594e;

    /* renamed from: f */
    public final String f24595f;

    /* renamed from: d */
    public final Object f24593d = new Object();

    /* renamed from: g */
    public long f24596g = -1;

    /* renamed from: h */
    public long f24597h = -1;

    /* renamed from: i */
    public long f24598i = -1;

    /* renamed from: j */
    public long f24599j = 0;

    /* renamed from: k */
    public long f24600k = -1;

    /* renamed from: l */
    public long f24601l = -1;

    /* renamed from: c */
    public final LinkedList<C4165w4> f24592c = new LinkedList<>();

    public zzaxw(Clock clock, zzayi zzayiVar, String str, String str2) {
        this.f24590a = clock;
        this.f24591b = zzayiVar;
        this.f24594e = str;
        this.f24595f = str2;
    }

    /* renamed from: a */
    public final Bundle m16211a() {
        Bundle bundle;
        synchronized (this.f24593d) {
            try {
                bundle = new Bundle();
                bundle.putString("seq_num", this.f24594e);
                bundle.putString("slotid", this.f24595f);
                bundle.putBoolean("ismediation", false);
                bundle.putLong("treq", this.f24600k);
                bundle.putLong("tresponse", this.f24601l);
                bundle.putLong("timp", this.f24597h);
                bundle.putLong("tload", this.f24598i);
                bundle.putLong("pcc", this.f24599j);
                bundle.putLong("tfetch", this.f24596g);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator<C4165w4> it = this.f24592c.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().m26186a());
                }
                bundle.putParcelableArrayList("tclick", arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public final void m16210a(long j) {
        synchronized (this.f24593d) {
            this.f24601l = j;
            if (j != -1) {
                this.f24591b.m16162a(this);
            }
        }
    }

    /* renamed from: a */
    public final void m16208a(zzvg zzvgVar) {
        synchronized (this.f24593d) {
            long a = this.f24590a.mo17092a();
            this.f24600k = a;
            this.f24591b.m16161a(zzvgVar, a);
        }
    }

    /* renamed from: a */
    public final void m16207a(boolean z) {
        synchronized (this.f24593d) {
            if (this.f24601l != -1) {
                this.f24598i = this.f24590a.mo17092a();
            }
        }
    }

    /* renamed from: b */
    public final void m16206b() {
        synchronized (this.f24593d) {
            if (this.f24601l != -1 && this.f24597h == -1) {
                this.f24597h = this.f24590a.mo17092a();
                this.f24591b.m16162a(this);
            }
            this.f24591b.m16165a();
        }
    }

    /* renamed from: c */
    public final void m16205c() {
        synchronized (this.f24593d) {
            if (this.f24601l != -1) {
                C4165w4 w4Var = new C4165w4(this);
                w4Var.m26183d();
                this.f24592c.add(w4Var);
                this.f24599j++;
                this.f24591b.m16159b();
                this.f24591b.m16162a(this);
            }
        }
    }

    /* renamed from: d */
    public final void m16204d() {
        synchronized (this.f24593d) {
            if (this.f24601l != -1 && !this.f24592c.isEmpty()) {
                C4165w4 last = this.f24592c.getLast();
                if (last.m26185b() == -1) {
                    last.m26184c();
                    this.f24591b.m16162a(this);
                }
            }
        }
    }

    /* renamed from: e */
    public final String m16203e() {
        return this.f24594e;
    }
}
