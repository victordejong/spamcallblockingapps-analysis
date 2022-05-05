package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo.class */
public final class zzbo extends zzau {
    private volatile String zzup;
    private Future<String> zzyd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbo(zzaw zzawVar) {
        super(zzawVar);
    }

    private final boolean zzb(Context context, String str) {
        Throwable th;
        FileNotFoundException e;
        IOException e2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotMainThread("ClientId should be saved from worker thread");
        r5 = null;
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                zza("Storing clientId", str);
                fileOutputStream = context.openFileOutput("gaClientId", 0);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e3) {
            e = e3;
        } catch (IOException e4) {
            e2 = e4;
        }
        try {
            fileOutputStream.write(str.getBytes());
            if (fileOutputStream == null) {
                return true;
            }
            try {
                fileOutputStream.close();
                return true;
            } catch (IOException e5) {
                zze("Failed to close clientId writing stream", e5);
                return true;
            }
        } catch (FileNotFoundException e6) {
            e = e6;
            zze("Error creating clientId file", e);
            if (fileOutputStream == null) {
                return false;
            }
            try {
                fileOutputStream.close();
                return false;
            } catch (IOException e7) {
                zze("Failed to close clientId writing stream", e7);
                return false;
            }
        } catch (IOException e8) {
            e2 = e8;
            zze("Error writing to clientId file", e2);
            if (fileOutputStream == null) {
                return false;
            }
            try {
                fileOutputStream.close();
                return false;
            } catch (IOException e9) {
                zze("Failed to close clientId writing stream", e9);
                return false;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e10) {
                    zze("Failed to close clientId writing stream", e10);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzd(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbo.zzd(android.content.Context):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @VisibleForTesting
    public final String zzdu() {
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        try {
            return !zzb(zzca().getContext(), lowerCase) ? "0" : lowerCase;
        } catch (Exception e) {
            zze("Error saving clientId file", e);
            return "0";
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
    }

    public final String zzdr() {
        String str;
        zzcl();
        synchronized (this) {
            if (this.zzup == null) {
                this.zzyd = zzca().zza(new zzbp(this));
            }
            if (this.zzyd != null) {
                try {
                    try {
                        this.zzup = this.zzyd.get();
                    } catch (InterruptedException e) {
                        zzd("ClientId loading or generation was interrupted", e);
                        this.zzup = "0";
                    }
                } catch (ExecutionException e2) {
                    zze("Failed to load or generate client id", e2);
                    this.zzup = "0";
                }
                if (this.zzup == null) {
                    this.zzup = "0";
                }
                zza("Loaded clientId", this.zzup);
                this.zzyd = null;
            }
            str = this.zzup;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzds() {
        synchronized (this) {
            this.zzup = null;
            this.zzyd = zzca().zza(new zzbq(this));
        }
        return zzdr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final String zzdt() {
        String zzd = zzd(zzca().getContext());
        String str = zzd;
        if (zzd == null) {
            str = zzdu();
        }
        return str;
    }
}
