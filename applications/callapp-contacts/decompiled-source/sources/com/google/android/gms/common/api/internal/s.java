package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/s.class */
public abstract class s<A extends a.b, ResultT> {

    /* renamed from: a  reason: collision with root package name */
    final Feature[] f22761a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f22762b;

    /* renamed from: c  reason: collision with root package name */
    final int f22763c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/s$a.class */
    public static final class a<A extends a.b, ResultT> {

        /* renamed from: a  reason: collision with root package name */
        public p<A, i<ResultT>> f22764a;

        /* renamed from: c  reason: collision with root package name */
        public Feature[] f22766c;

        /* renamed from: b  reason: collision with root package name */
        public boolean f22765b = true;

        /* renamed from: d  reason: collision with root package name */
        private int f22767d = 0;

        private a() {
        }

        /* synthetic */ a(bd bdVar) {
        }

        public final a<A, ResultT> a() {
            this.f22767d = 2414;
            return this;
        }

        public final s<A, ResultT> b() {
            o.b(this.f22764a != null, "execute parameter required");
            return new be(this, this.f22766c, this.f22765b, this.f22767d);
        }
    }

    @Deprecated
    public s() {
        this.f22761a = null;
        this.f22762b = false;
        this.f22763c = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s(Feature[] featureArr, boolean z, int i) {
        this.f22761a = featureArr;
        boolean z2 = false;
        if (featureArr != null) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        this.f22762b = z2;
        this.f22763c = i;
    }

    public static <A extends a.b, ResultT> a<A, ResultT> a() {
        return new a<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(A a2, i<ResultT> iVar) throws RemoteException;
}
