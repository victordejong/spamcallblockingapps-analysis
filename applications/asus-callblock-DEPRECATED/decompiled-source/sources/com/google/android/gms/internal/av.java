package com.google.android.gms.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.internal.bf;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/av.class */
public final class av {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/av$a.class */
    public static abstract class a<R extends e, A extends a.c> extends ax<R> {
        private AtomicReference<bf.a> d;

        public static void a() {
        }

        public final void a(bf.a aVar) {
            this.d.set(aVar);
        }
    }
}
