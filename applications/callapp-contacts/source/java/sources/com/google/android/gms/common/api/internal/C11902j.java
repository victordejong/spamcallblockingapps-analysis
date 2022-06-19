package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.internal.C12045o;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/j.class */
public final class C11902j {

    /* renamed from: a */
    private final Set<C11899i<?>> f39370a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: a */
    public static <L> C11899i.C11900a<L> m19321a(L l, String str) {
        C12045o.m19161a(l, "Listener must not be null");
        C12045o.m19161a(str, (Object) "Listener type must not be null");
        C12045o.m19159a(str, (Object) "Listener type must not be empty");
        return new C11899i.C11900a<>(l, str);
    }

    /* renamed from: a */
    public static <L> C11899i<L> m19322a(L l, Looper looper, String str) {
        C12045o.m19161a(l, "Listener must not be null");
        C12045o.m19161a(looper, "Looper must not be null");
        C12045o.m19161a(str, (Object) "Listener type must not be null");
        return new C11899i<>(looper, l, str);
    }
}
