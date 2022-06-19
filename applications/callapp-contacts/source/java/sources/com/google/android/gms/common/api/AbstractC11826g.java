package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.internal.AbstractC11895e;
import com.google.android.gms.common.api.internal.AbstractC11904l;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.common.api.internal.C11899i;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
@Deprecated
/* renamed from: com.google.android.gms.common.api.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/g.class */
public abstract class AbstractC11826g {

    /* renamed from: a */
    private static final Set<AbstractC11826g> f39194a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* renamed from: com.google.android.gms.common.api.g$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/g$a.class */
    public interface AbstractC11827a extends AbstractC11895e {
    }

    @Deprecated
    /* renamed from: com.google.android.gms.common.api.g$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/g$b.class */
    public interface AbstractC11828b extends AbstractC11904l {
    }

    /* renamed from: a */
    public static Set<AbstractC11826g> m19445a() {
        Set<AbstractC11826g> set = f39194a;
        synchronized (set) {
        }
        return set;
    }

    /* renamed from: b */
    public static <L> C11899i<L> m19444b() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public static boolean m19443d() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public static void m19442e() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public <A extends C11808a.AbstractC11810b, R extends AbstractC11925m, T extends C11892d.AbstractC11893a<R, A>> T mo19405a(T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public <A extends C11808a.AbstractC11810b, T extends C11892d.AbstractC11893a<? extends AbstractC11925m, A>> T mo19404b(T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public Looper mo19403c() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    public void mo19402f() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: g */
    public void mo19401g() {
        throw new UnsupportedOperationException();
    }
}
