package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.internal.AbstractC6019d;
import com.google.android.gms.common.api.internal.AbstractC6022e;
import com.google.android.gms.common.api.internal.AbstractC6040k;
import com.google.android.gms.common.api.internal.AbstractC6049n;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
@Deprecated
/* renamed from: com.google.android.gms.common.api.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d.class */
public abstract class AbstractC5999d {

    /* renamed from: a */
    private static final Set<AbstractC5999d> f19198a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* renamed from: com.google.android.gms.common.api.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d$a.class */
    public interface AbstractC6000a extends AbstractC6022e {
    }

    @Deprecated
    /* renamed from: com.google.android.gms.common.api.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d$b.class */
    public interface AbstractC6001b extends AbstractC6040k {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static Set<AbstractC5999d> m17458b() {
        Set<AbstractC5999d> set = f19198a;
        synchronized (set) {
        }
        return set;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public <A extends C5984a.AbstractC5986b, T extends AbstractC6019d<? extends AbstractC6007i, A>> T mo17334a(@RecentlyNonNull T t) {
        throw new UnsupportedOperationException();
    }

    @RecentlyNonNull
    /* renamed from: c */
    public Looper mo17333c() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public boolean m17457d(@RecentlyNonNull AbstractC6049n abstractC6049n) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public void m17456e() {
        throw new UnsupportedOperationException();
    }
}
