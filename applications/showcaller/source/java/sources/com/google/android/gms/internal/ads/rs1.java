package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rs1.class */
public final class rs1 extends ls1 {

    /* renamed from: g */
    private String f29217g;

    /* renamed from: h */
    private int f29218h = 1;

    public rs1(Context context) {
        this.f26268f = new lc0(context, C5667s.m18146r().m17910a(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.ls1, com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        ei0.m15469a("Cannot connect to remote service, fallback to local instance.");
        this.f26263a.m10014f(new zzeap(1));
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        synchronized (this.f26264b) {
            if (!this.f26266d) {
                this.f26266d = true;
                try {
                    int i = this.f29218h;
                    if (i == 2) {
                        this.f26268f.m13586i0().mo11612Z2(this.f26267e, new is1(this));
                    } else if (i == 3) {
                        this.f26268f.m13586i0().mo11614E1(this.f29217g, new is1(this));
                    } else {
                        this.f26263a.m10014f(new zzeap(1));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f26263a.m10014f(new zzeap(1));
                }
            }
        }
    }

    /* renamed from: b */
    public final r03<InputStream> m11300b(zzcbj zzcbjVar) {
        synchronized (this.f26264b) {
            int i = this.f29218h;
            if (i != 1 && i != 2) {
                return k03.m14001c(new zzeap(2));
            } else if (this.f26265c) {
                return this.f26263a;
            } else {
                this.f29218h = 2;
                this.f26265c = true;
                this.f26267e = zzcbjVar;
                this.f26268f.m17093q();
                this.f26263a.mo10015d(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ps1

                    /* renamed from: d */
                    private final rs1 f28116d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28116d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f28116d.m13420a();
                    }
                }, qi0.f28500f);
                return this.f26263a;
            }
        }
    }

    /* renamed from: c */
    public final r03<InputStream> m11299c(String str) {
        synchronized (this.f26264b) {
            int i = this.f29218h;
            if (i != 1 && i != 3) {
                return k03.m14001c(new zzeap(2));
            } else if (this.f26265c) {
                return this.f26263a;
            } else {
                this.f29218h = 3;
                this.f26265c = true;
                this.f29217g = str;
                this.f26268f.m17093q();
                this.f26263a.mo10015d(new Runnable(this) { // from class: com.google.android.gms.internal.ads.qs1

                    /* renamed from: d */
                    private final rs1 f28623d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f28623d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f28623d.m13420a();
                    }
                }, qi0.f28500f);
                return this.f26263a;
            }
        }
    }
}
