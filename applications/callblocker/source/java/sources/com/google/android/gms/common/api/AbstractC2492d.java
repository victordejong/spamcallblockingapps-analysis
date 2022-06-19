package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.internal.AbstractC2547e;
import com.google.android.gms.common.api.internal.AbstractC2557k;
import com.google.android.gms.common.api.internal.AbstractC2559m;
import com.google.android.gms.common.api.internal.C2521aq;
import com.google.android.gms.common.api.internal.C2545d;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;
@Deprecated
/* renamed from: com.google.android.gms.common.api.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d.class */
public abstract class AbstractC2492d {
    @GuardedBy("sAllClients")

    /* renamed from: a */
    private static final Set<AbstractC2492d> f7060a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* renamed from: com.google.android.gms.common.api.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d$a.class */
    public interface AbstractC2493a extends AbstractC2547e {
    }

    @Deprecated
    /* renamed from: com.google.android.gms.common.api.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d$b.class */
    public interface AbstractC2494b extends AbstractC2557k {
    }

    /* renamed from: a */
    public static Set<AbstractC2492d> m14421a() {
        Set<AbstractC2492d> set;
        synchronized (f7060a) {
            set = f7060a;
        }
        return set;
    }

    /* renamed from: a */
    public <A extends C2471a.AbstractC2473b, T extends C2545d.AbstractC2546a<? extends AbstractC2500h, A>> T mo14398a(T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public void mo14399a(C2521aq c2521aq) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public boolean m14420a(AbstractC2559m abstractC2559m) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public Looper mo14397b() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public void mo14396b(C2521aq c2521aq) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public void m14419c() {
        throw new UnsupportedOperationException();
    }
}
