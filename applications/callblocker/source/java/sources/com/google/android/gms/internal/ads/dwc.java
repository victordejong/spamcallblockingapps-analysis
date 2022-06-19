package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AbstractC2623c;
import java.io.IOException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwc.class */
public final class dwc implements AbstractC2623c.AbstractC2624a {

    /* renamed from: a */
    final /* synthetic */ dwa f15868a;

    /* renamed from: b */
    private final /* synthetic */ dvu f15869b;

    /* renamed from: c */
    private final /* synthetic */ C3658yo f15870c;

    public dwc(dwa dwaVar, dvu dvuVar, C3658yo c3658yo) {
        this.f15868a = dwaVar;
        this.f15869b = dvuVar;
        this.f15870c = c3658yo;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4310a(int i) {
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        Object obj;
        boolean z;
        dvv dvvVar;
        obj = this.f15868a.f15867d;
        synchronized (obj) {
            z = this.f15868a.f15865b;
            if (z) {
                return;
            }
            this.f15868a.f15865b = true;
            dvvVar = this.f15868a.f15864a;
            if (dvvVar == null) {
                return;
            }
            this.f15870c.mo6734a(new Runnable(this.f15870c, C3650yg.f17642a.mo10768a(new Runnable(this, dvvVar, this.f15869b, this.f15870c) { // from class: com.google.android.gms.internal.ads.dwf

                /* renamed from: a */
                private final dwc f15874a;

                /* renamed from: b */
                private final dvv f15875b;

                /* renamed from: c */
                private final dvu f15876c;

                /* renamed from: d */
                private final C3658yo f15877d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f15874a = this;
                    this.f15875b = dvvVar;
                    this.f15876c = dvuVar;
                    this.f15877d = c3658yo;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    dwc dwcVar = this.f15874a;
                    dvv dvvVar2 = this.f15875b;
                    dvu dvuVar2 = this.f15876c;
                    C3658yo c3658yo2 = this.f15877d;
                    try {
                        dvt mo8483a = dvvVar2.m8484c().mo8483a(dvuVar2);
                        if (!mo8483a.m8489a()) {
                            c3658yo2.m6733a(new RuntimeException("No entry contents."));
                            dwcVar.f15868a.m8451a();
                            return;
                        }
                        dwh dwhVar = new dwh(dwcVar, mo8483a.m8488b(), 1);
                        int read = dwhVar.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        dwhVar.unread(read);
                        c3658yo2.m6731b(dwhVar);
                    } catch (RemoteException | IOException e) {
                        C3556uu.m6748c("Unable to obtain a cache service instance.", e);
                        c3658yo2.m6733a(e);
                        dwcVar.f15868a.m8451a();
                    }
                }
            })) { // from class: com.google.android.gms.internal.ads.dwe

                /* renamed from: a */
                private final C3658yo f15872a;

                /* renamed from: b */
                private final Future f15873b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f15872a = c3658yo3;
                    this.f15873b = mo10768a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C3658yo c3658yo4 = this.f15872a;
                    Future future = this.f15873b;
                    if (c3658yo4.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, C3650yg.f17647f);
        }
    }
}
