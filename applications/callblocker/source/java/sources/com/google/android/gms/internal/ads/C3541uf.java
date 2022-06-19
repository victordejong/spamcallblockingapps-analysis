package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.internal.ads.uf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uf.class */
public final class C3541uf {

    /* renamed from: a */
    private final AbstractC2708e f17398a;

    /* renamed from: b */
    private final C3553ur f17399b;

    /* renamed from: e */
    private final String f17402e;

    /* renamed from: f */
    private final String f17403f;

    /* renamed from: d */
    private final Object f17401d = new Object();
    @GuardedBy("lock")

    /* renamed from: g */
    private long f17404g = -1;
    @GuardedBy("lock")

    /* renamed from: h */
    private long f17405h = -1;
    @GuardedBy("lock")

    /* renamed from: i */
    private boolean f17406i = false;
    @GuardedBy("lock")

    /* renamed from: j */
    private long f17407j = -1;
    @GuardedBy("lock")

    /* renamed from: k */
    private long f17408k = 0;
    @GuardedBy("lock")

    /* renamed from: l */
    private long f17409l = -1;
    @GuardedBy("lock")

    /* renamed from: m */
    private long f17410m = -1;
    @GuardedBy("lock")

    /* renamed from: c */
    private final LinkedList<C3540ue> f17400c = new LinkedList<>();

    public C3541uf(AbstractC2708e abstractC2708e, C3553ur c3553ur, String str, String str2) {
        this.f17398a = abstractC2708e;
        this.f17399b = c3553ur;
        this.f17402e = str;
        this.f17403f = str2;
    }

    /* renamed from: a */
    public final void m7109a() {
        synchronized (this.f17401d) {
            if (this.f17410m != -1 && this.f17405h == -1) {
                this.f17405h = this.f17398a.mo13861b();
                this.f17399b.m7058a(this);
            }
            this.f17399b.m7055b();
        }
    }

    /* renamed from: a */
    public final void m7108a(long j) {
        synchronized (this.f17401d) {
            this.f17410m = j;
            if (this.f17410m != -1) {
                this.f17399b.m7058a(this);
            }
        }
    }

    /* renamed from: a */
    public final void m7107a(dya dyaVar) {
        synchronized (this.f17401d) {
            this.f17409l = this.f17398a.mo13861b();
            this.f17399b.m7059a(dyaVar, this.f17409l);
        }
    }

    /* renamed from: a */
    public final void m7105a(boolean z) {
        synchronized (this.f17401d) {
            if (this.f17410m != -1) {
                this.f17407j = this.f17398a.mo13861b();
            }
        }
    }

    /* renamed from: b */
    public final void m7104b() {
        synchronized (this.f17401d) {
            if (this.f17410m != -1) {
                C3540ue c3540ue = new C3540ue(this);
                c3540ue.m7111c();
                this.f17400c.add(c3540ue);
                this.f17408k++;
                this.f17399b.m7062a();
                this.f17399b.m7058a(this);
            }
        }
    }

    /* renamed from: c */
    public final void m7103c() {
        synchronized (this.f17401d) {
            if (this.f17410m != -1 && !this.f17400c.isEmpty()) {
                C3540ue last = this.f17400c.getLast();
                if (last.m7113a() == -1) {
                    last.m7112b();
                    this.f17399b.m7058a(this);
                }
            }
        }
    }

    /* renamed from: d */
    public final Bundle m7102d() {
        Bundle bundle;
        synchronized (this.f17401d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f17402e);
            bundle.putString("slotid", this.f17403f);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.f17409l);
            bundle.putLong("tresponse", this.f17410m);
            bundle.putLong("timp", this.f17405h);
            bundle.putLong("tload", this.f17407j);
            bundle.putLong("pcc", this.f17408k);
            bundle.putLong("tfetch", this.f17404g);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<C3540ue> it = this.f17400c.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().m7110d());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    /* renamed from: e */
    public final String m7101e() {
        return this.f17402e;
    }
}
