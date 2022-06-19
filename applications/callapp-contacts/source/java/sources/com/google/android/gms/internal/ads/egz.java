package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egz.class */
public final class egz {

    /* renamed from: a */
    egu f49013a;

    /* renamed from: b */
    boolean f49014b;

    /* renamed from: c */
    final Object f49015c = new Object();

    /* renamed from: d */
    private final Context f49016d;

    public egz(Context context) {
        this.f49016d = context;
    }

    /* renamed from: a */
    public static /* synthetic */ void m15054a(egz egzVar) {
        synchronized (egzVar.f49015c) {
            egu eguVar = egzVar.f49013a;
            if (eguVar == null) {
                return;
            }
            eguVar.disconnect();
            egzVar.f49013a = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: a */
    public final Future<ehh> m15053a(zzti zztiVar) {
        ehc ehcVar = new ehc(this);
        ehb ehbVar = new ehb(this, zztiVar, ehcVar);
        ehf ehfVar = new ehf(this, ehcVar);
        synchronized (this.f49015c) {
            egu eguVar = new egu(this.f49016d, zzr.zzlj().zzaai(), ehbVar, ehfVar);
            this.f49013a = eguVar;
            eguVar.checkAvailabilityAndConnect();
        }
        return ehcVar;
    }
}
