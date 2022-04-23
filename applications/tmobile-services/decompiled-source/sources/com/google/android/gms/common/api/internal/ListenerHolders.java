package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolders.class */
public class ListenerHolders {

    /* renamed from: a */
    private final Set<ListenerHolder<?>> f7114a = Collections.newSetFromMap(new WeakHashMap());

    @KeepForSdk
    /* renamed from: a */
    public static <L> ListenerHolder<L> m14873a(@NonNull L l, @NonNull Looper looper, @NonNull String str) {
        Preconditions.m14522l(l, "Listener must not be null");
        Preconditions.m14522l(looper, "Looper must not be null");
        Preconditions.m14522l(str, "Listener type must not be null");
        return new ListenerHolder<>(looper, l, str);
    }

    /* renamed from: b */
    public final void m14872b() {
        for (ListenerHolder<?> listenerHolder : this.f7114a) {
            listenerHolder.m14878a();
        }
        this.f7114a.clear();
    }
}
