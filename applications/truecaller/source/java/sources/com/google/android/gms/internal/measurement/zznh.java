package com.google.android.gms.internal.measurement;

import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zznh.class */
public final class zznh implements zzng {
    public static final zzhu zzA;
    public static final zzhu zzB;
    public static final zzhu zzC;
    public static final zzhu zzD;
    public static final zzhu zzE;
    public static final zzhu zzF;
    public static final zzhu zzG;
    public static final zzhu zzH;
    public static final zzhu zzI;
    public static final zzhu zzJ;
    public static final zzhu zzK;
    public static final zzhu zzL;
    public static final zzhu zza;
    public static final zzhu zzb;
    public static final zzhu zzc;
    public static final zzhu zzd;
    public static final zzhu zze;
    public static final zzhu zzf;
    public static final zzhu zzg;
    public static final zzhu zzh;
    public static final zzhu zzi;
    public static final zzhu zzj;
    public static final zzhu zzk;
    public static final zzhu zzl;
    public static final zzhu zzm;
    public static final zzhu zzn;
    public static final zzhu zzo;
    public static final zzhu zzp;
    public static final zzhu zzq;
    public static final zzhu zzr;
    public static final zzhu zzs;
    public static final zzhu zzt;
    public static final zzhu zzu;
    public static final zzhu zzv;
    public static final zzhu zzw;
    public static final zzhu zzx;
    public static final zzhu zzy;
    public static final zzhu zzz;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzc("measurement.ad_id_cache_time", 10000L);
        zzb = zzhrVar.zzc("measurement.max_bundles_per_iteration", 100L);
        zzc = zzhrVar.zzc("measurement.config.cache_time", DtbConstants.SIS_CHECKIN_INTERVAL);
        zzd = zzhrVar.zzd("measurement.log_tag", "FA");
        zze = zzhrVar.zzd("measurement.config.url_authority", "app-measurement.com");
        zzf = zzhrVar.zzd("measurement.config.url_scheme", "https");
        zzg = zzhrVar.zzc("measurement.upload.debug_upload_interval", 1000L);
        zzh = zzhrVar.zzc("measurement.lifetimevalue.max_currency_tracked", 4L);
        zzi = zzhrVar.zzc("measurement.store.max_stored_events_per_app", 100000L);
        zzj = zzhrVar.zzc("measurement.experiment.max_ids", 50L);
        zzk = zzhrVar.zzc("measurement.audience.filter_result_max_count", 200L);
        zzl = zzhrVar.zzc("measurement.alarm_manager.minimum_interval", DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
        zzm = zzhrVar.zzc("measurement.upload.minimum_delay", 500L);
        zzn = zzhrVar.zzc("measurement.monitoring.sample_period_millis", DtbConstants.SIS_CHECKIN_INTERVAL);
        zzo = zzhrVar.zzc("measurement.upload.realtime_upload_interval", 10000L);
        zzp = zzhrVar.zzc("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        zzq = zzhrVar.zzc("measurement.config.cache_time.service", DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL);
        zzr = zzhrVar.zzc("measurement.service_client.idle_disconnect_millis", 5000L);
        zzs = zzhrVar.zzd("measurement.log_tag.service", "FA-SVC");
        zzt = zzhrVar.zzc("measurement.upload.stale_data_deletion_interval", DtbConstants.SIS_CHECKIN_INTERVAL);
        zzu = zzhrVar.zzc("measurement.sdk.attribution.cache.ttl", 604800000L);
        zzv = zzhrVar.zzc("measurement.upload.backoff_period", 43200000L);
        zzw = zzhrVar.zzc("measurement.upload.initial_upload_delay_time", DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD);
        zzx = zzhrVar.zzc("measurement.upload.interval", DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL);
        zzy = zzhrVar.zzc("measurement.upload.max_bundle_size", 65536L);
        zzz = zzhrVar.zzc("measurement.upload.max_bundles", 100L);
        zzA = zzhrVar.zzc("measurement.upload.max_conversions_per_day", 500L);
        zzB = zzhrVar.zzc("measurement.upload.max_error_events_per_day", 1000L);
        zzC = zzhrVar.zzc("measurement.upload.max_events_per_bundle", 1000L);
        zzD = zzhrVar.zzc("measurement.upload.max_events_per_day", 100000L);
        zzE = zzhrVar.zzc("measurement.upload.max_public_events_per_day", 50000L);
        zzF = zzhrVar.zzc("measurement.upload.max_queue_time", 2419200000L);
        zzG = zzhrVar.zzc("measurement.upload.max_realtime_events_per_day", 10L);
        zzH = zzhrVar.zzc("measurement.upload.max_batch_size", 65536L);
        zzI = zzhrVar.zzc("measurement.upload.retry_count", 6L);
        zzJ = zzhrVar.zzc("measurement.upload.retry_time", 1800000L);
        zzK = zzhrVar.zzd("measurement.upload.url", "https://app-measurement.com/a");
        zzL = zzhrVar.zzc("measurement.upload.window_interval", DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL);
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzA() {
        return ((Long) zzF.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzB() {
        return ((Long) zzG.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzC() {
        return ((Long) zzH.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzD() {
        return ((Long) zzI.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzE() {
        return ((Long) zzJ.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzF() {
        return ((Long) zzL.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final String zzG() {
        return (String) zze.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final String zzH() {
        return (String) zzf.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final String zzI() {
        return (String) zzK.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zza() {
        return ((Long) zza.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzb() {
        return ((Long) zzb.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzc() {
        return ((Long) zzc.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzd() {
        return ((Long) zzg.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zze() {
        return ((Long) zzh.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzf() {
        return ((Long) zzi.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzg() {
        return ((Long) zzj.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzh() {
        return ((Long) zzk.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzi() {
        return ((Long) zzl.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzj() {
        return ((Long) zzm.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzk() {
        return ((Long) zzn.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzl() {
        return ((Long) zzo.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzm() {
        return ((Long) zzp.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzn() {
        return ((Long) zzr.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzo() {
        return ((Long) zzt.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzp() {
        return ((Long) zzu.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzq() {
        return ((Long) zzv.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzr() {
        return ((Long) zzw.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzs() {
        return ((Long) zzx.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzt() {
        return ((Long) zzy.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzu() {
        return ((Long) zzz.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzv() {
        return ((Long) zzA.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzw() {
        return ((Long) zzB.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzx() {
        return ((Long) zzC.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzy() {
        return ((Long) zzD.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final long zzz() {
        return ((Long) zzE.zzb()).longValue();
    }
}
