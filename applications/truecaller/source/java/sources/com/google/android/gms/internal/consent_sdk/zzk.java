package com.google.android.gms.internal.consent_sdk;

import e.m.a.i.f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzk.class */
public final class zzk extends Exception {
    private final int zza;

    public zzk(int i, String str) {
        super(str);
        this.zza = i;
    }

    public zzk(int i, String str, Throwable th) {
        super(str, th);
        this.zza = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return super.getMessage();
    }

    public final f zza() {
        if (getCause() == null) {
            getMessage();
        } else {
            getMessage();
            getCause();
        }
        return new f(this.zza, getMessage());
    }
}
