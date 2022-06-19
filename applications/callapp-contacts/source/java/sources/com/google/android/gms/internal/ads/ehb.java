package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.AbstractC12025d;
import java.io.IOException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehb.class */
public final class ehb implements AbstractC12025d.AbstractC12026a {

    /* renamed from: a */
    final /* synthetic */ egz f49017a;

    /* renamed from: b */
    private final /* synthetic */ zzti f49018b;

    /* renamed from: c */
    private final /* synthetic */ C13103zp f49019c;

    public ehb(egz egzVar, zzti zztiVar, C13103zp c13103zp) {
        this.f49017a = egzVar;
        this.f49018b = zztiVar;
        this.f49019c = c13103zp;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        synchronized (this.f49017a.f49015c) {
            if (this.f49017a.f49014b) {
                return;
            }
            this.f49017a.f49014b = true;
            egu eguVar = this.f49017a.f49013a;
            if (eguVar == null) {
                return;
            }
            dbt<?> mo16891a = C13091zd.f50118a.mo16891a(new Runnable(this, eguVar, this.f49018b, this.f49019c) { // from class: com.google.android.gms.internal.ads.ehe

                /* renamed from: a */
                private final ehb f49023a;

                /* renamed from: b */
                private final egu f49024b;

                /* renamed from: c */
                private final zzti f49025c;

                /* renamed from: d */
                private final C13103zp f49026d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49023a = this;
                    this.f49024b = eguVar;
                    this.f49025c = zztiVar;
                    this.f49026d = c13103zp;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ehb ehbVar = this.f49023a;
                    egu eguVar2 = this.f49024b;
                    zzti zztiVar2 = this.f49025c;
                    C13103zp c13103zp2 = this.f49026d;
                    try {
                        egy m15059a = eguVar2.m15059a();
                        zzth mo15056b = eguVar2.m15058b() ? m15059a.mo15056b(zztiVar2) : m15059a.mo15057a(zztiVar2);
                        if (!mo15056b.zznc()) {
                            c13103zp2.setException(new RuntimeException("No entry contents."));
                            egz.m15054a(ehbVar.f49017a);
                            return;
                        }
                        ehg ehgVar = new ehg(ehbVar, mo15056b.zznd(), 1);
                        int read = ehgVar.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        ehgVar.unread(read);
                        c13103zp2.set(new ehh(ehgVar, mo15056b.zznf(), mo15056b.zzni(), mo15056b.zznh(), mo15056b.zzng()));
                    } catch (RemoteException | IOException e) {
                        zzd.zzc("Unable to obtain a cache service instance.", e);
                        c13103zp2.setException(e);
                        egz.m15054a(ehbVar.f49017a);
                    }
                }
            });
            C13103zp c13103zp = this.f49019c;
            c13103zp.addListener(new Runnable(c13103zp, mo16891a) { // from class: com.google.android.gms.internal.ads.ehd

                /* renamed from: a */
                private final C13103zp f49021a;

                /* renamed from: b */
                private final Future f49022b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49021a = c13103zp;
                    this.f49022b = mo16891a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C13103zp c13103zp3 = this.f49021a;
                    Future future = this.f49022b;
                    if (c13103zp3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, C13091zd.f50123f);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
    }
}
