package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.gtm.zzad;
import com.google.android.gms.internal.gtm.zzao;
import com.google.android.gms.internal.gtm.zzas;
import com.google.android.gms.internal.gtm.zzcd;
import com.google.android.gms.internal.gtm.zzcz;
import com.google.android.gms.internal.gtm.zzq;
import com.millennialmedia.internal.adwrapper.AdWrapperType;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzp.class */
public final class zzp implements Runnable {
    private final /* synthetic */ Map zzti;
    private final /* synthetic */ boolean zztj;
    private final /* synthetic */ String zztk;
    private final /* synthetic */ long zztl;
    private final /* synthetic */ boolean zztm;
    private final /* synthetic */ boolean zztn;
    private final /* synthetic */ String zzto;
    private final /* synthetic */ Tracker zztp;

    public zzp(Tracker tracker, Map map, boolean z, String str, long j, boolean z2, boolean z3, String str2) {
        this.zztp = tracker;
        this.zzti = map;
        this.zztj = z;
        this.zztk = str;
        this.zztl = j;
        this.zztm = z2;
        this.zztn = z3;
        this.zzto = str2;
    }

    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    @Override // java.lang.Runnable
    public final void run() {
        if (Tracker.zza(this.zztp).zzax()) {
            this.zzti.put("sc", TtmlNode.START);
        }
        Map map = this.zzti;
        GoogleAnalytics zzcr = this.zztp.zzcr();
        Preconditions.checkNotMainThread("getClientId can not be called from the main thread");
        zzcz.zzc(map, "cid", zzcr.zzab().zzdh().zzeh());
        String str = (String) this.zzti.get("sf");
        if (str != null) {
            double zza = zzcz.zza(str, 100.0d);
            if (zzcz.zza(zza, (String) this.zzti.get("cid"))) {
                this.zztp.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(zza));
                return;
            }
        }
        zzad zzb = Tracker.zzb(this.zztp);
        if (this.zztj) {
            zzcz.zzb(this.zzti, "ate", zzb.zzbw());
            zzcz.zzb(this.zzti, "adid", zzb.zzcd());
        } else {
            this.zzti.remove("ate");
            this.zzti.remove("adid");
        }
        zzq zzdv = Tracker.zzc(this.zztp).zzdv();
        zzcz.zzb(this.zzti, "an", zzdv.zzaz());
        zzcz.zzb(this.zzti, "av", zzdv.zzba());
        zzcz.zzb(this.zzti, "aid", zzdv.zzbb());
        zzcz.zzb(this.zzti, "aiid", zzdv.zzbc());
        this.zzti.put("v", "1");
        this.zzti.put("_v", zzao.zzwe);
        zzcz.zzb(this.zzti, "ul", Tracker.zzd(this.zztp).zzfa().getLanguage());
        zzcz.zzb(this.zzti, "sr", Tracker.zze(this.zztp).zzfb());
        if (!(this.zztk.equals("transaction") || this.zztk.equals(AdWrapperType.ITEM_KEY)) && !Tracker.zzf(this.zztp).zzfm()) {
            Tracker.zzg(this.zztp).zza(this.zzti, "Too many hits sent too quickly, rate limiting invoked");
            return;
        }
        ?? zzag = zzcz.zzag((String) this.zzti.get("ht"));
        char c = zzag;
        if (zzag == 0) {
            c = this.zztl;
        }
        if (this.zztm) {
            Tracker.zzh(this.zztp).zzc("Dry run enabled. Would have sent hit", new zzcd(this.zztp, this.zzti, c, this.zztn));
            return;
        }
        String str2 = (String) this.zzti.get("cid");
        HashMap hashMap = new HashMap();
        zzcz.zza(hashMap, "uid", this.zzti);
        zzcz.zza(hashMap, "an", this.zzti);
        zzcz.zza(hashMap, "aid", this.zzti);
        zzcz.zza(hashMap, "av", this.zzti);
        zzcz.zza(hashMap, "aiid", this.zzti);
        this.zzti.put("_s", String.valueOf(Tracker.zzi(this.zztp).zza(new zzas(0L, str2, this.zzto, !TextUtils.isEmpty((CharSequence) this.zzti.get("adid")), 0L, hashMap))));
        Tracker.zzj(this.zztp).zza(new zzcd(this.zztp, this.zzti, c, this.zztn));
    }
}
