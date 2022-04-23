package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.nc;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ib.class */
public final class ib implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29818a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29819b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzp f29820c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ nc f29821d;
    final /* synthetic */ ik e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ib(ik ikVar, String str, String str2, zzp zzpVar, nc ncVar) {
        this.e = ikVar;
        this.f29818a = str;
        this.f29819b = str2;
        this.f29820c = zzpVar;
        this.f29821d = ncVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v5 */
    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        es esVar = arrayList;
        ArrayList<Bundle> arrayList2 = arrayList;
        try {
            try {
                df dfVar = this.e.f29842b;
                if (dfVar == null) {
                    this.e.t.c().f29506c.a("Failed to get conditional properties; not connected to service", this.f29818a, this.f29819b);
                    arrayList2 = arrayList;
                    esVar = this.e.t;
                } else {
                    o.a(this.f29820c);
                    arrayList2 = ju.a(dfVar.a(this.f29818a, this.f29819b, this.f29820c));
                    this.e.i();
                    esVar = this.e.t;
                }
            } catch (RemoteException e) {
                esVar = arrayList2;
                this.e.t.c().f29506c.a("Failed to get conditional properties; remote exception", this.f29818a, this.f29819b, e);
                esVar = this.e.t;
            }
            esVar.g().a(this.f29821d, arrayList2);
        } catch (Throwable th) {
            this.e.t.g().a(this.f29821d, esVar);
            throw th;
        }
    }
}
