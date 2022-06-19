package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolders.class */
public class ListenerHolders {

    /* renamed from: a */
    public final Set<ListenerHolder<?>> f5768a = Collections.newSetFromMap(new WeakHashMap());

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: a */
    public static <L> ListenerHolder<L> m39021a(@RecentlyNonNull L l, @RecentlyNonNull Looper looper, @RecentlyNonNull String str) {
        Preconditions.m38897k(l, "Listener must not be null");
        Preconditions.m38897k(looper, "Looper must not be null");
        Preconditions.m38897k(str, "Listener type must not be null");
        return new ListenerHolder<>(looper, l, str);
    }

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: b */
    public static <L> ListenerHolder.ListenerKey<L> m39020b(@RecentlyNonNull L l, @RecentlyNonNull String str) {
        Preconditions.m38897k(l, "Listener must not be null");
        Preconditions.m38897k(str, "Listener type must not be null");
        Preconditions.m38900h(str, "Listener type must not be empty");
        return new ListenerHolder.ListenerKey<>(l, str);
    }
}
