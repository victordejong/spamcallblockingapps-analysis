package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.d;
import java.io.IOException;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehb.class */
final class ehb implements d.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ egz f27827a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zzti f27828b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ zp f27829c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ehb(egz egzVar, zzti zztiVar, zp zpVar) {
        this.f27827a = egzVar;
        this.f27828b = zztiVar;
        this.f27829c = zpVar;
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        synchronized (this.f27827a.f27825c) {
            if (!this.f27827a.f27824b) {
                this.f27827a.f27824b = true;
                final egu eguVar = this.f27827a.f27823a;
                if (eguVar != null) {
                    dbs dbsVar = zd.f28573a;
                    final zzti zztiVar = this.f27828b;
                    final zp zpVar = this.f27829c;
                    final dbt<?> a2 = dbsVar.a(new Runnable(this, eguVar, zztiVar, zpVar) { // from class: com.google.android.gms.internal.ads.ehe

                        /* renamed from: a  reason: collision with root package name */
                        private final ehb f27833a;

                        /* renamed from: b  reason: collision with root package name */
                        private final egu f27834b;

                        /* renamed from: c  reason: collision with root package name */
                        private final zzti f27835c;

                        /* renamed from: d  reason: collision with root package name */
                        private final zp f27836d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f27833a = this;
                            this.f27834b = eguVar;
                            this.f27835c = zztiVar;
                            this.f27836d = zpVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            ehb ehbVar = this.f27833a;
                            egu eguVar2 = this.f27834b;
                            zzti zztiVar2 = this.f27835c;
                            zp zpVar2 = this.f27836d;
                            try {
                                egy a3 = eguVar2.a();
                                zzth b2 = eguVar2.b() ? a3.b(zztiVar2) : a3.a(zztiVar2);
                                if (!b2.zznc()) {
                                    zpVar2.setException(new RuntimeException("No entry contents."));
                                    egz.a(ehbVar.f27827a);
                                    return;
                                }
                                ehg ehgVar = new ehg(ehbVar, b2.zznd(), 1);
                                int read = ehgVar.read();
                                if (read != -1) {
                                    ehgVar.unread(read);
                                    zpVar2.set(new ehh(ehgVar, b2.zznf(), b2.zzni(), b2.zznh(), b2.zzng()));
                                    return;
                                }
                                throw new IOException("Unable to read from cache.");
                            } catch (RemoteException | IOException e) {
                                zzd.zzc("Unable to obtain a cache service instance.", e);
                                zpVar2.setException(e);
                                egz.a(ehbVar.f27827a);
                            }
                        }
                    });
                    final zp zpVar2 = this.f27829c;
                    zpVar2.addListener(new Runnable(zpVar2, a2) { // from class: com.google.android.gms.internal.ads.ehd

                        /* renamed from: a  reason: collision with root package name */
                        private final zp f27831a;

                        /* renamed from: b  reason: collision with root package name */
                        private final Future f27832b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f27831a = zpVar2;
                            this.f27832b = a2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zp zpVar3 = this.f27831a;
                            Future future = this.f27832b;
                            if (zpVar3.isCancelled()) {
                                future.cancel(true);
                            }
                        }
                    }, zd.f);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
    }
}
