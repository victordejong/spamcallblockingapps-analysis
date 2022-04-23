package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolders.class */
public class ListenerHolders {

    /* renamed from: a */
    public final Set<ListenerHolder<?>> f23162a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: a */
    public final void m17623a() {
        for (ListenerHolder<?> listenerHolder : this.f23162a) {
            listenerHolder.m17626a();
        }
        this.f23162a.clear();
    }
}
