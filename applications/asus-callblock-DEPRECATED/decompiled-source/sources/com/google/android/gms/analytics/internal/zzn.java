package com.google.android.gms.analytics.internal;

import android.content.Context;
import com.google.android.gms.common.internal.b;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzn.class */
public class zzn extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private volatile String f3874a;

    /* renamed from: b  reason: collision with root package name */
    private Future<String> f3875b;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzn(zzf zzfVar) {
        super(zzfVar);
    }

    private boolean a(Context context, String str) {
        boolean z;
        b.a(str);
        b.c("ClientId should be saved from worker thread");
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                try {
                    zza("Storing clientId", str);
                    FileOutputStream openFileOutput = context.openFileOutput("gaClientId", 0);
                    fileOutputStream = openFileOutput;
                    fileOutputStream2 = openFileOutput;
                    fileOutputStream3 = openFileOutput;
                    openFileOutput.write(str.getBytes());
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e) {
                            zze("Failed to close clientId writing stream", e);
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (fileOutputStream3 != null) {
                        try {
                            fileOutputStream3.close();
                        } catch (IOException e2) {
                            zze("Failed to close clientId writing stream", e2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                fileOutputStream3 = fileOutputStream2;
                zze("Error writing to clientId file", e3);
                z = false;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                        z = false;
                    } catch (IOException e4) {
                        zze("Failed to close clientId writing stream", e4);
                        z = false;
                    }
                }
            }
        } catch (FileNotFoundException e5) {
            fileOutputStream3 = fileOutputStream;
            zze("Error creating clientId file", e5);
            z = false;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                    z = false;
                } catch (IOException e6) {
                    zze("Failed to close clientId writing stream", e6);
                    z = false;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        String zzmT = zzmT();
        String str = zzmT;
        try {
            if (!a(zzlT().getContext(), zzmT)) {
                str = "0";
            }
        } catch (Exception e) {
            zze("Error saving clientId file", e);
            str = "0";
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        synchronized (this) {
            this.f3874a = null;
            this.f3875b = zzlT().zzc(new Callable<String>() { // from class: com.google.android.gms.analytics.internal.zzn.2
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ String call() {
                    return zzn.this.c();
                }
            });
        }
        return zzmP();
    }

    final String b() {
        String zzZ = zzZ(zzlT().getContext());
        String str = zzZ;
        if (zzZ == null) {
            str = c();
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:91:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x011c -> B:86:0x0055). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0124 -> B:86:0x0055). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0129 -> B:86:0x0055). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String zzZ(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzn.zzZ(android.content.Context):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
    }

    public String zzmP() {
        String str;
        zzma();
        synchronized (this) {
            if (this.f3874a == null) {
                this.f3875b = zzlT().zzc(new Callable<String>() { // from class: com.google.android.gms.analytics.internal.zzn.1
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ String call() {
                        return zzn.this.b();
                    }
                });
            }
            if (this.f3875b != null) {
                try {
                    try {
                        this.f3874a = this.f3875b.get();
                    } catch (InterruptedException e) {
                        zzd("ClientId loading or generation was interrupted", e);
                        this.f3874a = "0";
                    }
                } catch (ExecutionException e2) {
                    zze("Failed to load or generate client id", e2);
                    this.f3874a = "0";
                }
                if (this.f3874a == null) {
                    this.f3874a = "0";
                }
                zza("Loaded clientId", this.f3874a);
                this.f3875b = null;
            }
            str = this.f3874a;
        }
        return str;
    }

    protected String zzmT() {
        return UUID.randomUUID().toString().toLowerCase();
    }
}
