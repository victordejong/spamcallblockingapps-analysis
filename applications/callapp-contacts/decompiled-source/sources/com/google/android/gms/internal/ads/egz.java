package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egz.class */
public final class egz {

    /* renamed from: a  reason: collision with root package name */
    egu f27823a;

    /* renamed from: b  reason: collision with root package name */
    boolean f27824b;

    /* renamed from: c  reason: collision with root package name */
    final Object f27825c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Context f27826d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public egz(Context context) {
        this.f27826d = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(egz egzVar) {
        synchronized (egzVar.f27825c) {
            egu eguVar = egzVar.f27823a;
            if (eguVar != null) {
                eguVar.disconnect();
                egzVar.f27823a = null;
                Binder.flushPendingCommands();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Future<ehh> a(zzti zztiVar) {
        ehc ehcVar = new ehc(this);
        ehb ehbVar = new ehb(this, zztiVar, ehcVar);
        ehf ehfVar = new ehf(this, ehcVar);
        synchronized (this.f27825c) {
            egu eguVar = new egu(this.f27826d, zzr.zzlj().zzaai(), ehbVar, ehfVar);
            this.f27823a = eguVar;
            eguVar.checkAvailabilityAndConnect();
        }
        return ehcVar;
    }
}
