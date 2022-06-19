package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzcn.class */
public final class zzcn implements Iterable<T> {
    final /* synthetic */ Object zzgh;

    public zzcn(Object obj) {
        this.zzgh = obj;
    }

    @Override // java.lang.Iterable
    public final Iterator<T> iterator() {
        return new zzcq(this);
    }
}
