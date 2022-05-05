package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzw;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzix.class */
public final class zzix implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9550f;

    /* renamed from: g */
    private final /* synthetic */ zzw f9551g;

    /* renamed from: h */
    private final /* synthetic */ zzio f9552h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzix(zzio zzioVar, zzn zznVar, zzw zzwVar) {
        this.f9552h = zzioVar;
        this.f9550f = zznVar;
        this.f9551g = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        String str = null;
        str = null;
        try {
            if (!zzmj.m11898a() || !this.f9552h.m11311l().m10880r(zzat.f8902H0) || this.f9552h.m11312k().m11453J().m11721q()) {
                zzejVar = this.f9552h.f9521d;
                if (zzejVar == null) {
                    this.f9552h.mo11081c().m11560D().m11540a("Failed to get app instance id");
                    this.f9552h.m11313j().m10976P(this.f9551g, null);
                    return;
                }
                str = zzejVar.mo11343I(this.f9550f);
                if (str != null) {
                    this.f9552h.m11600o().m11277T(str);
                    this.f9552h.m11312k().f9193l.m11427b(str);
                }
                this.f9552h.m11179e0();
                return;
            }
            this.f9552h.mo11081c().m11555I().m11540a("Analytics storage consent denied; will not get app instance id");
            this.f9552h.m11600o().m11277T(null);
            this.f9552h.m11312k().f9193l.m11427b(null);
            this.f9552h.m11313j().m10976P(this.f9551g, null);
        } catch (RemoteException e) {
            this.f9552h.mo11081c().m11560D().m11539b("Failed to get app instance id", e);
        } finally {
            this.f9552h.m11313j().m10976P(this.f9551g, str);
        }
    }
}
