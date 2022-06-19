package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.C11808a.AbstractC11810b;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/s.class */
public abstract class AbstractC11912s<A extends C11808a.AbstractC11810b, ResultT> {

    /* renamed from: a */
    final Feature[] f39398a;

    /* renamed from: b */
    final boolean f39399b;

    /* renamed from: c */
    final int f39400c;

    /* renamed from: com.google.android.gms.common.api.internal.s$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/s$a.class */
    public static final class C11913a<A extends C11808a.AbstractC11810b, ResultT> {

        /* renamed from: a */
        public AbstractC11909p<A, C14186i<ResultT>> f39401a;

        /* renamed from: c */
        public Feature[] f39403c;

        /* renamed from: b */
        public boolean f39402b = true;

        /* renamed from: d */
        private int f39404d = 0;

        private C11913a() {
        }

        /* synthetic */ C11913a(C11863bd c11863bd) {
        }

        /* renamed from: a */
        public final C11913a<A, ResultT> m19314a() {
            this.f39404d = 2414;
            return this;
        }

        /* renamed from: b */
        public final AbstractC11912s<A, ResultT> m19313b() {
            C12045o.m19153b(this.f39401a != null, "execute parameter required");
            return new C11864be(this, this.f39403c, this.f39402b, this.f39404d);
        }
    }

    @Deprecated
    public AbstractC11912s() {
        this.f39398a = null;
        this.f39399b = false;
        this.f39400c = 0;
    }

    public AbstractC11912s(Feature[] featureArr, boolean z, int i) {
        this.f39398a = featureArr;
        boolean z2 = false;
        if (featureArr != null) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        this.f39399b = z2;
        this.f39400c = i;
    }

    /* renamed from: a */
    public static <A extends C11808a.AbstractC11810b, ResultT> C11913a<A, ResultT> m19316a() {
        return new C11913a<>(null);
    }

    /* renamed from: a */
    public abstract void mo19315a(A a, C14186i<ResultT> c14186i) throws RemoteException;
}
