package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.internal.o;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final Set<i<?>> f22744a = Collections.newSetFromMap(new WeakHashMap());

    public static <L> i.a<L> a(L l, String str) {
        o.a(l, "Listener must not be null");
        o.a(str, (Object) "Listener type must not be null");
        o.a(str, (Object) "Listener type must not be empty");
        return new i.a<>(l, str);
    }

    public static <L> i<L> a(L l, Looper looper, String str) {
        o.a(l, "Listener must not be null");
        o.a(looper, "Looper must not be null");
        o.a(str, (Object) "Listener type must not be null");
        return new i<>(looper, l, str);
    }
}
