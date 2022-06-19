package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractC12428dv;
import com.google.android.gms.internal.ads.AbstractC12439ed;
import com.google.android.gms.internal.ads.AbstractC12746mm;
import com.google.android.gms.internal.ads.AbstractC12854ql;
import com.google.android.gms.internal.ads.AbstractC12868qz;
import com.google.android.gms.internal.ads.AbstractC12879rj;
import com.google.android.gms.internal.ads.AbstractC12942ts;
import com.google.android.gms.internal.ads.AbstractC12967uq;
import com.google.android.gms.internal.ads.AbstractC13048xo;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.afq;
import com.google.android.gms.internal.ads.bdj;
import com.google.android.gms.internal.ads.bdm;
import com.google.android.gms.internal.ads.byw;
import com.google.android.gms.internal.ads.cjs;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.ekp;
import com.google.android.gms.internal.ads.ekw;
import com.google.android.gms.internal.ads.eli;
import com.google.android.gms.internal.ads.eln;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvt;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends eli {
    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12428dv zza(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2) {
        return new bdm((FrameLayout) BinderC12129d.m18980a(abstractC12126b), (FrameLayout) BinderC12129d.m18980a(abstractC12126b2), 204890000);
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12439ed zza(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) {
        return new bdj((View) BinderC12129d.m18980a(abstractC12126b), (HashMap) BinderC12129d.m18980a(abstractC12126b2), (HashMap) BinderC12129d.m18980a(abstractC12126b3));
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekp zza(AbstractC12126b abstractC12126b, String str, AbstractC12746mm abstractC12746mm, int i) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        return new byw(afq.m18767a(context, abstractC12746mm, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, int i) {
        return new zzl((Context) BinderC12129d.m18980a(abstractC12126b), zzvtVar, str, new zzbar(204890000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        return afq.m18767a(context, abstractC12746mm, i).mo18718j().mo17422a(context).mo17421a(zzvtVar).mo17420a(str).mo17423a().mo17419a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zza(AbstractC12126b abstractC12126b, int i) {
        return afq.m18768a((Context) BinderC12129d.m18980a(abstractC12126b), i).mo18722h();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12942ts zza(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm, int i) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        return afq.m18767a(context, abstractC12746mm, i).mo18702r().mo17375a(context).mo17376a().mo17381a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzb(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        return afq.m18767a(context, abstractC12746mm, i).mo18708o().mo17395a(context).mo17394a(zzvtVar).mo17393a(str).mo17396a().mo17409a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12868qz zzb(AbstractC12126b abstractC12126b) {
        Activity activity = (Activity) BinderC12129d.m18980a(abstractC12126b);
        AdOverlayInfoParcel zzd = AdOverlayInfoParcel.zzd(activity.getIntent());
        if (zzd == null) {
            return new zzs(activity);
        }
        int i = zzd.zzduk;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new zzs(activity) : new zzy(activity) : new zzu(activity, zzd) : new zzac(activity) : new zzaa(activity) : new zzt(activity);
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12967uq zzb(AbstractC12126b abstractC12126b, String str, AbstractC12746mm abstractC12746mm, int i) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        return afq.m18767a(context, abstractC12746mm, i).mo18702r().mo17375a(context).mo17374a(str).mo17376a().mo17380b();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC13048xo zzb(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm, int i) {
        return afq.m18767a((Context) BinderC12129d.m18980a(abstractC12126b), abstractC12746mm, i).mo18698t();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzc(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        cjs mo17436a = afq.m18767a(context, abstractC12746mm, i).mo18712m().mo17434a(str).mo17435a(context).mo17436a();
        return i >= ((Integer) ekb.m14831e().m18571a(C12187aq.f42769cZ)).intValue() ? mo17436a.mo17439b() : mo17436a.mo17440a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zzc(AbstractC12126b abstractC12126b) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12854ql zzc(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm, int i) {
        return afq.m18767a((Context) BinderC12129d.m18980a(abstractC12126b), abstractC12746mm, i).mo18696u();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12879rj zzd(AbstractC12126b abstractC12126b) {
        return null;
    }
}
