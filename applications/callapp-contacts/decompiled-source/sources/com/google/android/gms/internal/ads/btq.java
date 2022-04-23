package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.ExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btq.class */
public final class btq implements bss<alq, os, buh> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25078a;

    /* renamed from: b  reason: collision with root package name */
    View f25079b;

    /* renamed from: c  reason: collision with root package name */
    mt f25080c;

    /* renamed from: d  reason: collision with root package name */
    private final amn f25081d;

    public btq(Context context, amn amnVar) {
        this.f25078a = context;
        this.f25081d = amnVar;
    }

    private final View a(final cov covVar) throws zzdpq {
        try {
            final View view = (View) d.a(this.f25080c.a());
            boolean b2 = this.f25080c.b();
            if (view == null) {
                throw new zzdpq(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
            } else if (!b2) {
                return view;
            } else {
                try {
                    return (View) daj.a(dbh.a((Object) null), new daq(this, view, covVar) { // from class: com.google.android.gms.internal.ads.bts

                        /* renamed from: a  reason: collision with root package name */
                        private final btq f25085a;

                        /* renamed from: b  reason: collision with root package name */
                        private final View f25086b;

                        /* renamed from: c  reason: collision with root package name */
                        private final cov f25087c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f25085a = this;
                            this.f25086b = view;
                            this.f25087c = covVar;
                        }

                        @Override // com.google.android.gms.internal.ads.daq
                        public final dbt zzf(Object obj) {
                            btq btqVar = this.f25085a;
                            return dbh.a(zzbos.a(btqVar.f25078a, this.f25086b, this.f25087c));
                        }
                    }, zd.e).get();
                } catch (InterruptedException | ExecutionException e) {
                    throw new zzdpq(e);
                }
            }
        } catch (RemoteException e2) {
            throw new zzdpq(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ emk a(bsn bsnVar) throws zzdpq {
        try {
            return ((os) bsnVar.f25013b).c();
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<os, buh> bsnVar) throws zzdpq {
        try {
            bsnVar.f25013b.a(covVar.T);
            if (!((Boolean) ekb.e().a(aq.ey)).booleanValue() || !covVar.ab) {
                bsnVar.f25013b.a(covVar.O, covVar.u.toString(), cpkVar.f26221a.f26209a.f26227d, d.a(this.f25078a), new btu(this, bsnVar), bsnVar.f25014c, cpkVar.f26221a.f26209a.e);
            } else {
                bsnVar.f25013b.b(covVar.O, covVar.u.toString(), cpkVar.f26221a.f26209a.f26227d, d.a(this.f25078a), new btu(this, bsnVar), bsnVar.f25014c, cpkVar.f26221a.f26209a.e);
            }
        } catch (RemoteException e) {
            throw new zzdpq(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ alq b(cpk cpkVar, cov covVar, final bsn<os, buh> bsnVar) throws zzdpq, zzcwo {
        View a2 = (!((Boolean) ekb.e().a(aq.ey)).booleanValue() || !covVar.ab) ? this.f25079b : a(covVar);
        alt a3 = this.f25081d.a(new aof(cpkVar, covVar, bsnVar.f25012a), new alx(a2, null, new anq(bsnVar) { // from class: com.google.android.gms.internal.ads.btt

            /* renamed from: a  reason: collision with root package name */
            private final bsn f25088a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25088a = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.anq
            public final emk a() {
                return btq.a(this.f25088a);
            }
        }, covVar.t.get(0)));
        a3.j().a(a2);
        bsnVar.f25014c.a((ms) a3.g());
        return a3.h();
    }
}
