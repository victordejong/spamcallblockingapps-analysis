package com.google.android.gms.internal.firebase_messaging;

import e.m.d.r.c;
import e.m.d.r.e;
import e.m.d.r.f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzv.class */
public final /* synthetic */ class zzv implements e {
    public static final /* synthetic */ zzv zza = new zzv();

    private /* synthetic */ zzv() {
    }

    public final void encode(Object obj, Object obj2) {
        f fVar = (f) obj2;
        int i = zzw.zza;
        String valueOf = String.valueOf(obj.getClass().getCanonicalName());
        throw new c(valueOf.length() != 0 ? "Couldn't find encoder for type ".concat(valueOf) : new String("Couldn't find encoder for type "));
    }
}
