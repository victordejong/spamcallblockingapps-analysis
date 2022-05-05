package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzsw;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbz.class */
final class zzbz extends Thread implements zzby {
    private static zzbz zzbce;
    private volatile zzcb zzbcf;
    private final Context zzri;
    private final LinkedBlockingQueue<Runnable> zzbcc = new LinkedBlockingQueue<>();
    private volatile boolean zzbcd = false;
    private volatile boolean closed = false;

    private zzbz(Context context) {
        super("GAThread");
        if (context != null) {
            this.zzri = context.getApplicationContext();
        } else {
            this.zzri = context;
        }
        start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbz zzu(Context context) {
        if (zzbce == null) {
            zzbce = new zzbz(context);
        }
        return zzbce;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            boolean z = this.closed;
            try {
                try {
                    Runnable take = this.zzbcc.take();
                    if (!this.zzbcd) {
                        take.run();
                    }
                } catch (InterruptedException e) {
                    zzdi.zzdi(e.toString());
                }
            } catch (Exception e2) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream = new PrintStream(byteArrayOutputStream);
                zzsw.zza(e2, printStream);
                printStream.flush();
                String valueOf = String.valueOf(new String(byteArrayOutputStream.toByteArray()));
                zzdi.m329e(valueOf.length() != 0 ? "Error on Google TagManager Thread: ".concat(valueOf) : new String("Error on Google TagManager Thread: "));
                zzdi.m329e("Google TagManager is shutting down.");
                this.zzbcd = true;
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzby
    public final void zzdp(String str) {
        zzh(new zzca(this, this, System.currentTimeMillis(), str));
    }

    @Override // com.google.android.gms.tagmanager.zzby
    public final void zzh(Runnable runnable) {
        this.zzbcc.add(runnable);
    }
}
