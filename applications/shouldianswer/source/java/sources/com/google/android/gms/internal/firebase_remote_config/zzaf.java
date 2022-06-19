package com.google.android.gms.internal.firebase_remote_config;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzaf.class */
public class zzaf extends IOException {
    private final int statusCode;
    private final transient zzw zzbc;
    private final String zzbv;
    private final String zzby;

    public zzaf(zzac zzacVar) {
        this(new zzae(zzacVar));
    }

    public zzaf(zzae zzaeVar) {
        super(zzaeVar.message);
        this.statusCode = zzaeVar.statusCode;
        this.zzbv = zzaeVar.zzbv;
        this.zzbc = zzaeVar.zzbc;
        this.zzby = zzaeVar.zzby;
    }

    public static StringBuilder zzc(zzac zzacVar) {
        StringBuilder sb = new StringBuilder();
        int statusCode = zzacVar.getStatusCode();
        if (statusCode != 0) {
            sb.append(statusCode);
        }
        String statusMessage = zzacVar.getStatusMessage();
        if (statusMessage != null) {
            if (statusCode != 0) {
                sb.append(' ');
            }
            sb.append(statusMessage);
        }
        return sb;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }
}
