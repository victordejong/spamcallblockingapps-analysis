package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.nc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hu.class */
public final class hu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzas f29793a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29794b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ nc f29795c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ik f29796d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hu(ik ikVar, zzas zzasVar, String str, nc ncVar) {
        this.f29796d = ikVar;
        this.f29793a = zzasVar;
        this.f29794b = str;
        this.f29795c = ncVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v5 */
    @Override // java.lang.Runnable
    public final void run() {
        r9 = null;
        es esVar = null;
        byte[] bArr = null;
        try {
            try {
                df dfVar = this.f29796d.f29842b;
                if (dfVar == null) {
                    this.f29796d.t.c().f29506c.a("Discarding data. Failed to send event to service to bundle");
                    esVar = this.f29796d.t;
                } else {
                    bArr = dfVar.b(this.f29793a, this.f29794b);
                    this.f29796d.i();
                    esVar = this.f29796d.t;
                }
            } catch (RemoteException e) {
                esVar = bArr;
                this.f29796d.t.c().f29506c.a("Failed to send event to the service to bundle", e);
                esVar = this.f29796d.t;
            }
            esVar.g().a(this.f29795c, bArr);
        } catch (Throwable th) {
            this.f29796d.t.g().a(this.f29795c, esVar);
            throw th;
        }
    }
}
