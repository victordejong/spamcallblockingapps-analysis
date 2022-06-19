package com.google.android.gms.internal.firebase_remote_config;

import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzet.class */
public final class zzet {
    private final int status;
    private final Date zzks;
    private final zzen zzlh;

    private zzet(Date date, int i, zzen zzenVar) {
        this.zzks = date;
        this.status = i;
        this.zzlh = zzenVar;
    }

    public static zzet zzd(Date date) {
        return new zzet(date, 1, null);
    }

    public static zzet zze(Date date) {
        return new zzet(date, 2, null);
    }

    public static zzet zzg(zzen zzenVar) {
        return new zzet(zzenVar.zzcr(), 0, zzenVar);
    }

    public final zzen zzcx() {
        return this.zzlh;
    }
}
