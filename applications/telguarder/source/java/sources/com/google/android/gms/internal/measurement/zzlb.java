package com.google.android.gms.internal.measurement;

import android.support.p001v4.media.session.PlaybackStateCompat;
import androidx.webkit.ProxyConfig;
import androidx.work.WorkRequest;
import com.telguarder.ApplicationConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlb.class */
public final class zzlb implements zzla {
    public static final zzfg<Long> zzA;
    public static final zzfg<Long> zzB;
    public static final zzfg<Long> zzC;
    public static final zzfg<Long> zzD;
    public static final zzfg<Long> zzE;
    public static final zzfg<Long> zzF;
    public static final zzfg<Long> zzG;
    public static final zzfg<Long> zzH;
    public static final zzfg<Long> zzI;
    public static final zzfg<Long> zzJ;
    public static final zzfg<String> zzK;
    public static final zzfg<Long> zzL;
    public static final zzfg<Long> zza;
    public static final zzfg<Long> zzb;
    public static final zzfg<Long> zzc;
    public static final zzfg<String> zzd;
    public static final zzfg<String> zze;
    public static final zzfg<String> zzf;
    public static final zzfg<Long> zzg;
    public static final zzfg<Long> zzh;
    public static final zzfg<Long> zzi;
    public static final zzfg<Long> zzj;
    public static final zzfg<Long> zzk;
    public static final zzfg<Long> zzl;
    public static final zzfg<Long> zzm;
    public static final zzfg<Long> zzn;
    public static final zzfg<Long> zzo;
    public static final zzfg<Long> zzp;
    public static final zzfg<Long> zzq;
    public static final zzfg<Long> zzr;
    public static final zzfg<String> zzs;
    public static final zzfg<Long> zzt;
    public static final zzfg<Long> zzu;
    public static final zzfg<Long> zzv;
    public static final zzfg<Long> zzw;
    public static final zzfg<Long> zzx;
    public static final zzfg<Long> zzy;
    public static final zzfg<Long> zzz;

    static {
        zzfe zzfeVar = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfeVar.zza("measurement.ad_id_cache_time", WorkRequest.MIN_BACKOFF_MILLIS);
        zzb = zzfeVar.zza("measurement.max_bundles_per_iteration", 100L);
        zzc = zzfeVar.zza("measurement.config.cache_time", ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE);
        zzd = zzfeVar.zzd("measurement.log_tag", "FA");
        zze = zzfeVar.zzd("measurement.config.url_authority", "app-measurement.com");
        zzf = zzfeVar.zzd("measurement.config.url_scheme", ProxyConfig.MATCH_HTTPS);
        zzg = zzfeVar.zza("measurement.upload.debug_upload_interval", 1000L);
        zzh = zzfeVar.zza("measurement.lifetimevalue.max_currency_tracked", 4L);
        zzi = zzfeVar.zza("measurement.store.max_stored_events_per_app", 100000L);
        zzj = zzfeVar.zza("measurement.experiment.max_ids", 50L);
        zzk = zzfeVar.zza("measurement.audience.filter_result_max_count", 200L);
        zzl = zzfeVar.zza("measurement.alarm_manager.minimum_interval", 60000L);
        zzm = zzfeVar.zza("measurement.upload.minimum_delay", 500L);
        zzn = zzfeVar.zza("measurement.monitoring.sample_period_millis", ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE);
        zzo = zzfeVar.zza("measurement.upload.realtime_upload_interval", WorkRequest.MIN_BACKOFF_MILLIS);
        zzp = zzfeVar.zza("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        zzq = zzfeVar.zza("measurement.config.cache_time.service", 3600000L);
        zzr = zzfeVar.zza("measurement.service_client.idle_disconnect_millis", ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY);
        zzs = zzfeVar.zzd("measurement.log_tag.service", "FA-SVC");
        zzt = zzfeVar.zza("measurement.upload.stale_data_deletion_interval", ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE);
        zzu = zzfeVar.zza("measurement.sdk.attribution.cache.ttl", 604800000L);
        zzv = zzfeVar.zza("measurement.upload.backoff_period", 43200000L);
        zzw = zzfeVar.zza("measurement.upload.initial_upload_delay_time", 15000L);
        zzx = zzfeVar.zza("measurement.upload.interval", 3600000L);
        zzy = zzfeVar.zza("measurement.upload.max_bundle_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        zzz = zzfeVar.zza("measurement.upload.max_bundles", 100L);
        zzA = zzfeVar.zza("measurement.upload.max_conversions_per_day", 500L);
        zzB = zzfeVar.zza("measurement.upload.max_error_events_per_day", 1000L);
        zzC = zzfeVar.zza("measurement.upload.max_events_per_bundle", 1000L);
        zzD = zzfeVar.zza("measurement.upload.max_events_per_day", 100000L);
        zzE = zzfeVar.zza("measurement.upload.max_public_events_per_day", 50000L);
        zzF = zzfeVar.zza("measurement.upload.max_queue_time", 2419200000L);
        zzG = zzfeVar.zza("measurement.upload.max_realtime_events_per_day", 10L);
        zzH = zzfeVar.zza("measurement.upload.max_batch_size", PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
        zzI = zzfeVar.zza("measurement.upload.retry_count", 6L);
        zzJ = zzfeVar.zza("measurement.upload.retry_time", 1800000L);
        zzK = zzfeVar.zzd("measurement.upload.url", "https://app-measurement.com/a");
        zzL = zzfeVar.zza("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzA() {
        return zzD.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzB() {
        return zzE.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzC() {
        return zzF.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzD() {
        return zzG.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzE() {
        return zzH.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzF() {
        return zzI.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzG() {
        return zzJ.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final String zzH() {
        return zzK.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzI() {
        return zzL.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zza() {
        return zza.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzb() {
        return zzb.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzc() {
        return zzc.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final String zzd() {
        return zze.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final String zze() {
        return zzf.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzf() {
        return zzg.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzg() {
        return zzh.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzh() {
        return zzi.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzi() {
        return zzj.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzj() {
        return zzk.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzk() {
        return zzl.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzl() {
        return zzm.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzm() {
        return zzn.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzn() {
        return zzo.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzo() {
        return zzp.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzp() {
        return zzr.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzq() {
        return zzt.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzr() {
        return zzu.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzs() {
        return zzv.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzt() {
        return zzw.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzu() {
        return zzx.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzv() {
        return zzy.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzw() {
        return zzz.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzx() {
        return zzA.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzy() {
        return zzB.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzla
    public final long zzz() {
        return zzC.zze().longValue();
    }
}
