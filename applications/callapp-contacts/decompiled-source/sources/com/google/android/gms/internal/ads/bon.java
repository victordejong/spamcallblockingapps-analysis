package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bon.class */
public final class bon extends bok {
    private String g;
    private int h = bos.f24807a;

    public bon(Context context) {
        this.f = new sg(context, zzr.zzlj().zzaai(), this, this);
    }

    public final dbt<InputStream> a(zzauj zzaujVar) {
        synchronized (this.f24798b) {
            if (this.h != bos.f24807a && this.h != bos.f24808b) {
                return dbh.a((Throwable) new zzcpo(cqj.INVALID_REQUEST));
            } else if (this.f24799c) {
                return this.f24797a;
            } else {
                this.h = bos.f24808b;
                this.f24799c = true;
                this.e = zzaujVar;
                this.f.checkAvailabilityAndConnect();
                this.f24797a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.boq

                    /* renamed from: a  reason: collision with root package name */
                    private final bon f24804a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24804a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24804a.b();
                    }
                }, zd.f);
                return this.f24797a;
            }
        }
    }

    public final dbt<InputStream> a(String str) {
        synchronized (this.f24798b) {
            if (this.h != bos.f24807a && this.h != bos.f24809c) {
                return dbh.a((Throwable) new zzcpo(cqj.INVALID_REQUEST));
            } else if (this.f24799c) {
                return this.f24797a;
            } else {
                this.h = bos.f24809c;
                this.f24799c = true;
                this.g = str;
                this.f.checkAvailabilityAndConnect();
                this.f24797a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bop

                    /* renamed from: a  reason: collision with root package name */
                    private final bon f24803a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24803a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24803a.b();
                    }
                }, zd.f);
                return this.f24797a;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        synchronized (this.f24798b) {
            if (!this.f24800d) {
                this.f24800d = true;
                try {
                    if (this.h == bos.f24808b) {
                        this.f.a().c(this.e, new boj(this));
                    } else if (this.h == bos.f24809c) {
                        this.f.a().a(this.g, new boj(this));
                    } else {
                        this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkz().a(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bok, com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        zzd.zzdz("Cannot connect to remote service, fallback to local instance.");
        this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
    }
}
