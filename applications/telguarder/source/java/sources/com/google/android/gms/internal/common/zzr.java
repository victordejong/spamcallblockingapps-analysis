package com.google.android.gms.internal.common;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzr.class */
public final class zzr<E> extends zzo<E> {
    public zzr() {
        super(4);
    }

    public zzr(int i) {
        super(4);
    }

    public final zzr<E> zzb(E e) {
        super.zza(e);
        return this;
    }

    public final zzr<E> zzc(Iterator<? extends E> it) {
        while (it.hasNext()) {
            super.zza(it.next());
        }
        return this;
    }
}
