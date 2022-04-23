package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.AbstractC1610f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.un */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/un.class */
public final class C1978un {

    /* renamed from: a */
    private final AbstractC1610f f8802a;

    /* renamed from: b */
    private final do f8803b;

    /* renamed from: e */
    private final String f8806e;

    /* renamed from: f */
    private final String f8807f;

    /* renamed from: d */
    private final Object f8805d = new Object();
    @GuardedBy("lock")

    /* renamed from: g */
    private long f8808g = -1;
    @GuardedBy("lock")

    /* renamed from: h */
    private long f8809h = -1;
    @GuardedBy("lock")

    /* renamed from: i */
    private long f8810i = 0;
    @GuardedBy("lock")

    /* renamed from: j */
    private long f8811j = -1;
    @GuardedBy("lock")

    /* renamed from: k */
    private long f8812k = -1;
    @GuardedBy("lock")

    /* renamed from: c */
    private final LinkedList<C1962tn> f8804c = new LinkedList<>();

    C1978un(AbstractC1610f fVar, do doVar, String str, String str2) {
        this.f8802a = fVar;
        this.f8803b = doVar;
        this.f8806e = str;
        this.f8807f = str2;
    }

    /* renamed from: a */
    public final void m5369a(zzys zzysVar) {
        synchronized (this.f8805d) {
            long c = this.f8802a.m8245c();
            this.f8811j = c;
            this.f8803b.f(zzysVar, c);
        }
    }

    /* renamed from: b */
    public final void m5368b() {
        synchronized (this.f8805d) {
            this.f8803b.g();
        }
    }

    /* renamed from: c */
    public final void m5367c(long j) {
        synchronized (this.f8805d) {
            this.f8812k = j;
            if (j != -1) {
                this.f8803b.a(this);
            }
        }
    }

    /* renamed from: d */
    public final void m5366d() {
        synchronized (this.f8805d) {
            if (this.f8812k != -1 && this.f8808g == -1) {
                this.f8808g = this.f8802a.m8245c();
                this.f8803b.a(this);
            }
            this.f8803b.e();
        }
    }

    /* renamed from: e */
    public final void m5365e() {
        synchronized (this.f8805d) {
            if (this.f8812k != -1) {
                C1962tn tnVar = new C1962tn(this);
                tnVar.m5506c();
                this.f8804c.add(tnVar);
                this.f8810i++;
                this.f8803b.d();
                this.f8803b.a(this);
            }
        }
    }

    /* renamed from: f */
    public final void m5364f() {
        synchronized (this.f8805d) {
            if (this.f8812k != -1 && !this.f8804c.isEmpty()) {
                C1962tn last = this.f8804c.getLast();
                if (last.m5508a() == -1) {
                    last.m5507b();
                    this.f8803b.a(this);
                }
            }
        }
    }

    /* renamed from: g */
    public final void m5363g(boolean z) {
        synchronized (this.f8805d) {
            if (this.f8812k != -1) {
                this.f8809h = this.f8802a.m8245c();
            }
        }
    }

    /* renamed from: h */
    public final Bundle m5362h() {
        Bundle bundle;
        synchronized (this.f8805d) {
            try {
                bundle = new Bundle();
                bundle.putString("seq_num", this.f8806e);
                bundle.putString("slotid", this.f8807f);
                bundle.putBoolean("ismediation", false);
                bundle.putLong("treq", this.f8811j);
                bundle.putLong("tresponse", this.f8812k);
                bundle.putLong("timp", this.f8808g);
                bundle.putLong("tload", this.f8809h);
                bundle.putLong("pcc", this.f8810i);
                bundle.putLong("tfetch", -1L);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator<C1962tn> it = this.f8804c.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().m5505d());
                }
                bundle.putParcelableArrayList("tclick", arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    /* renamed from: i */
    public final String m5361i() {
        return this.f8806e;
    }
}
