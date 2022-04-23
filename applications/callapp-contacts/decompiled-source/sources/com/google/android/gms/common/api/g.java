package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.l;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/g.class */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<g> f22622a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/g$a.class */
    public interface a extends e {
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/g$b.class */
    public interface b extends l {
    }

    public static Set<g> a() {
        Set<g> set = f22622a;
        synchronized (set) {
        }
        return set;
    }

    public static <L> i<L> b() {
        throw new UnsupportedOperationException();
    }

    public static boolean d() {
        throw new UnsupportedOperationException();
    }

    public static void e() {
        throw new UnsupportedOperationException();
    }

    public <A extends a.b, R extends m, T extends d.a<R, A>> T a(T t) {
        throw new UnsupportedOperationException();
    }

    public <A extends a.b, T extends d.a<? extends m, A>> T b(T t) {
        throw new UnsupportedOperationException();
    }

    public Looper c() {
        throw new UnsupportedOperationException();
    }

    public void f() {
        throw new UnsupportedOperationException();
    }

    public void g() {
        throw new UnsupportedOperationException();
    }
}
