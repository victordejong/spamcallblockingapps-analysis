package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bur.class */
public final class bur implements bss<azi, cqe, buh> {

    /* renamed from: a  reason: collision with root package name */
    final zzbar f25152a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f25153b;

    /* renamed from: c  reason: collision with root package name */
    private final bai f25154c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f25155d;

    public bur(Context context, zzbar zzbarVar, bai baiVar, Executor executor) {
        this.f25153b = context;
        this.f25152a = zzbarVar;
        this.f25154c = baiVar;
        this.f25155d = executor;
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final void a(cpk cpkVar, cov covVar, bsn<cqe, buh> bsnVar) throws zzdpq {
        cqe cqeVar = bsnVar.f25013b;
        Context context = this.f25153b;
        try {
            cqeVar.f26255a.a(d.a(context), cpkVar.f26221a.f26209a.f26227d, covVar.u.toString(), zzbh.zza(covVar.r), bsnVar.f25014c);
        } catch (Throwable th) {
            throw new zzdpq(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.bss
    public final /* synthetic */ azi b(cpk cpkVar, cov covVar, final bsn<cqe, buh> bsnVar) throws zzdpq, zzcwo {
        azk a2 = this.f25154c.a(new aof(cpkVar, covVar, bsnVar.f25012a), new azj(new bap(this, bsnVar) { // from class: com.google.android.gms.internal.ads.buu

            /* renamed from: a  reason: collision with root package name */
            private final bur f25164a;

            /* renamed from: b  reason: collision with root package name */
            private final bsn f25165b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25164a = this;
                this.f25165b = bsnVar;
            }

            @Override // com.google.android.gms.internal.ads.bap
            public final void a(boolean z, Context context) {
                bur burVar = this.f25164a;
                bsn bsnVar2 = this.f25165b;
                try {
                    ((cqe) bsnVar2.f25013b).a(z);
                    if (burVar.f25152a.zzekb < ((Integer) ekb.e().a(aq.ar)).intValue()) {
                        ((cqe) bsnVar2.f25013b).f26255a.b();
                    } else {
                        ((cqe) bsnVar2.f25013b).f26255a.c(d.a(context));
                    }
                } catch (zzdpq e) {
                    zzd.zzey("Cannot show interstitial.");
                    throw new zzcbq(e.getCause());
                }
            }
        }));
        a2.a().a(new aji(bsnVar.f25013b), this.f25155d);
        bsnVar.f25014c.a((ms) a2.f());
        return a2.h();
    }
}
