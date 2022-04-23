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
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.afq;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.bdj;
import com.google.android.gms.internal.ads.bdm;
import com.google.android.gms.internal.ads.byw;
import com.google.android.gms.internal.ads.cjs;
import com.google.android.gms.internal.ads.dv;
import com.google.android.gms.internal.ads.ed;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.ekp;
import com.google.android.gms.internal.ads.ekw;
import com.google.android.gms.internal.ads.eli;
import com.google.android.gms.internal.ads.eln;
import com.google.android.gms.internal.ads.mm;
import com.google.android.gms.internal.ads.ql;
import com.google.android.gms.internal.ads.qz;
import com.google.android.gms.internal.ads.rj;
import com.google.android.gms.internal.ads.ts;
import com.google.android.gms.internal.ads.uq;
import com.google.android.gms.internal.ads.xo;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvt;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends eli {
    @Override // com.google.android.gms.internal.ads.elf
    public final dv zza(b bVar, b bVar2) {
        return new bdm((FrameLayout) d.a(bVar), (FrameLayout) d.a(bVar2), 204890000);
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ed zza(b bVar, b bVar2, b bVar3) {
        return new bdj((View) d.a(bVar), (HashMap) d.a(bVar2), (HashMap) d.a(bVar3));
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekp zza(b bVar, String str, mm mmVar, int i) {
        Context context = (Context) d.a(bVar);
        return new byw(afq.a(context, mmVar, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(b bVar, zzvt zzvtVar, String str, int i) {
        return new zzl((Context) d.a(bVar), zzvtVar, str, new zzbar(204890000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(b bVar, zzvt zzvtVar, String str, mm mmVar, int i) {
        Context context = (Context) d.a(bVar);
        return afq.a(context, mmVar, i).j().a(context).a(zzvtVar).a(str).a().a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zza(b bVar, int i) {
        return afq.a((Context) d.a(bVar), i).h();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ts zza(b bVar, mm mmVar, int i) {
        Context context = (Context) d.a(bVar);
        return afq.a(context, mmVar, i).r().a(context).a().a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzb(b bVar, zzvt zzvtVar, String str, mm mmVar, int i) {
        Context context = (Context) d.a(bVar);
        return afq.a(context, mmVar, i).o().a(context).a(zzvtVar).a(str).a().a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final qz zzb(b bVar) {
        Activity activity = (Activity) d.a(bVar);
        AdOverlayInfoParcel zzd = AdOverlayInfoParcel.zzd(activity.getIntent());
        if (zzd == null) {
            return new zzs(activity);
        }
        int i = zzd.zzduk;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new zzs(activity) : new zzy(activity) : new zzu(activity, zzd) : new zzac(activity) : new zzaa(activity) : new zzt(activity);
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final uq zzb(b bVar, String str, mm mmVar, int i) {
        Context context = (Context) d.a(bVar);
        return afq.a(context, mmVar, i).r().a(context).a(str).a().b();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final xo zzb(b bVar, mm mmVar, int i) {
        return afq.a((Context) d.a(bVar), mmVar, i).t();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzc(b bVar, zzvt zzvtVar, String str, mm mmVar, int i) {
        Context context = (Context) d.a(bVar);
        cjs a2 = afq.a(context, mmVar, i).m().a(str).a(context).a();
        return i >= ((Integer) ekb.e().a(aq.cZ)).intValue() ? a2.b() : a2.a();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zzc(b bVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ql zzc(b bVar, mm mmVar, int i) {
        return afq.a((Context) d.a(bVar), mmVar, i).u();
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final rj zzd(b bVar) {
        return null;
    }
}
