package com.google.android.gms.internal.firebase_messaging;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.f;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzc.class */
public final class zzc implements e<zze> {
    public static final zzc zza = new zzc();
    private static final d zzb = d.a("messagingClientEventExtension");

    private zzc() {
    }

    public final /* bridge */ /* synthetic */ void encode(Object obj, Object obj2) throws IOException {
        ((f) obj2).add(zzb, ((zze) obj).zza());
    }
}
