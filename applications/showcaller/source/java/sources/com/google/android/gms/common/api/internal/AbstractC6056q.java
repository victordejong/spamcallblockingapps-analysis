package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.C5984a.AbstractC5986b;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.common.api.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/q.class */
public abstract class AbstractC6056q<A extends C5984a.AbstractC5986b, ResultT> {

    /* renamed from: a */
    private final Feature[] f19339a;

    /* renamed from: b */
    private final boolean f19340b;

    /* renamed from: c */
    private final int f19341c;

    /* renamed from: com.google.android.gms.common.api.internal.q$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/q$a.class */
    public static class C6057a<A extends C5984a.AbstractC5986b, ResultT> {

        /* renamed from: a */
        private AbstractC6046m<A, C7968h<ResultT>> f19342a;

        /* renamed from: c */
        private Feature[] f19344c;

        /* renamed from: b */
        private boolean f19343b = true;

        /* renamed from: d */
        private int f19345d = 0;

        /* synthetic */ C6057a(C6064t0 c6064t0) {
        }

        @RecentlyNonNull
        /* renamed from: a */
        public AbstractC6056q<A, ResultT> m17292a() {
            C6155o.m17026b(this.f19342a != null, "execute parameter required");
            return new C6066u0(this, this.f19344c, this.f19343b, this.f19345d);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C6057a<A, ResultT> m17291b(@RecentlyNonNull AbstractC6046m<A, C7968h<ResultT>> abstractC6046m) {
            this.f19342a = abstractC6046m;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C6057a<A, ResultT> m17290c(boolean z) {
            this.f19343b = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C6057a<A, ResultT> m17289d(@RecentlyNonNull Feature... featureArr) {
            this.f19344c = featureArr;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C6057a<A, ResultT> m17288e(int i) {
            this.f19345d = i;
            return this;
        }
    }

    public AbstractC6056q(Feature[] featureArr, boolean z, int i) {
        this.f19339a = featureArr;
        boolean z2 = false;
        if (featureArr != null) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        this.f19340b = z2;
        this.f19341c = i;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static <A extends C5984a.AbstractC5986b, ResultT> C6057a<A, ResultT> m17296a() {
        return new C6057a<>(null);
    }

    /* renamed from: b */
    public abstract void mo17258b(@RecentlyNonNull A a, @RecentlyNonNull C7968h<ResultT> c7968h);

    /* renamed from: c */
    public boolean m17295c() {
        return this.f19340b;
    }

    @RecentlyNullable
    /* renamed from: d */
    public final Feature[] m17294d() {
        return this.f19339a;
    }

    /* renamed from: e */
    public final int m17293e() {
        return this.f19341c;
    }
}
