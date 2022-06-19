package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznq.class */
public final class zznq implements zznp {
    public static final zzht<Long> zzA;
    public static final zzht<Long> zzB;
    public static final zzht<Long> zzC;
    public static final zzht<Long> zzD;
    public static final zzht<Long> zzE;
    public static final zzht<Long> zzF;
    public static final zzht<Long> zzG;
    public static final zzht<Long> zzH;
    public static final zzht<Long> zzI;
    public static final zzht<Long> zzJ;
    public static final zzht<String> zzK;
    public static final zzht<Long> zzL;
    public static final zzht<Long> zza;
    public static final zzht<Long> zzb;
    public static final zzht<Long> zzc;
    public static final zzht<String> zzd;
    public static final zzht<String> zze;
    public static final zzht<String> zzf;
    public static final zzht<Long> zzg;
    public static final zzht<Long> zzh;
    public static final zzht<Long> zzi;
    public static final zzht<Long> zzj;
    public static final zzht<Long> zzk;
    public static final zzht<Long> zzl;
    public static final zzht<Long> zzm;
    public static final zzht<Long> zzn;
    public static final zzht<Long> zzo;
    public static final zzht<Long> zzp;
    public static final zzht<Long> zzq;
    public static final zzht<Long> zzr;
    public static final zzht<String> zzs;
    public static final zzht<Long> zzt;
    public static final zzht<Long> zzu;
    public static final zzht<Long> zzv;
    public static final zzht<Long> zzw;
    public static final zzht<Long> zzx;
    public static final zzht<Long> zzy;
    public static final zzht<Long> zzz;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zza("measurement.ad_id_cache_time", 10000L);
        zzb = zzhrVar.zza("measurement.max_bundles_per_iteration", 100L);
        zzc = zzhrVar.zza("measurement.config.cache_time", 86400000L);
        zzd = zzhrVar.zzd("measurement.log_tag", "FA");
        zze = zzhrVar.zzd("measurement.config.url_authority", "app-measurement.com");
        zzf = zzhrVar.zzd("measurement.config.url_scheme", "https");
        zzg = zzhrVar.zza("measurement.upload.debug_upload_interval", 1000L);
        zzh = zzhrVar.zza("measurement.lifetimevalue.max_currency_tracked", 4L);
        zzi = zzhrVar.zza("measurement.store.max_stored_events_per_app", 100000L);
        zzj = zzhrVar.zza("measurement.experiment.max_ids", 50L);
        zzk = zzhrVar.zza("measurement.audience.filter_result_max_count", 200L);
        zzl = zzhrVar.zza("measurement.alarm_manager.minimum_interval", 60000L);
        zzm = zzhrVar.zza("measurement.upload.minimum_delay", 500L);
        zzn = zzhrVar.zza("measurement.monitoring.sample_period_millis", 86400000L);
        zzo = zzhrVar.zza("measurement.upload.realtime_upload_interval", 10000L);
        zzp = zzhrVar.zza("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        zzq = zzhrVar.zza("measurement.config.cache_time.service", 3600000L);
        zzr = zzhrVar.zza("measurement.service_client.idle_disconnect_millis", 5000L);
        zzs = zzhrVar.zzd("measurement.log_tag.service", "FA-SVC");
        zzt = zzhrVar.zza("measurement.upload.stale_data_deletion_interval", 86400000L);
        zzu = zzhrVar.zza("measurement.sdk.attribution.cache.ttl", 604800000L);
        zzv = zzhrVar.zza("measurement.upload.backoff_period", 43200000L);
        zzw = zzhrVar.zza("measurement.upload.initial_upload_delay_time", 15000L);
        zzx = zzhrVar.zza("measurement.upload.interval", 3600000L);
        zzy = zzhrVar.zza("measurement.upload.max_bundle_size", 65536L);
        zzz = zzhrVar.zza("measurement.upload.max_bundles", 100L);
        zzA = zzhrVar.zza("measurement.upload.max_conversions_per_day", 500L);
        zzB = zzhrVar.zza("measurement.upload.max_error_events_per_day", 1000L);
        zzC = zzhrVar.zza("measurement.upload.max_events_per_bundle", 1000L);
        zzD = zzhrVar.zza("measurement.upload.max_events_per_day", 100000L);
        zzE = zzhrVar.zza("measurement.upload.max_public_events_per_day", 50000L);
        zzF = zzhrVar.zza("measurement.upload.max_queue_time", 2419200000L);
        zzG = zzhrVar.zza("measurement.upload.max_realtime_events_per_day", 10L);
        zzH = zzhrVar.zza("measurement.upload.max_batch_size", 65536L);
        zzI = zzhrVar.zza("measurement.upload.retry_count", 6L);
        zzJ = zzhrVar.zza("measurement.upload.retry_time", 1800000L);
        zzK = zzhrVar.zzd("measurement.upload.url", "https://app-measurement.com/a");
        zzL = zzhrVar.zza("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzA() {
        return zzD.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzB() {
        return zzE.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzC() {
        return zzF.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzD() {
        return zzG.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzE() {
        return zzH.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzF() {
        return zzI.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzG() {
        return zzJ.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final String zzH() {
        return zzK.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzI() {
        return zzL.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zza() {
        return zza.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzb() {
        return zzb.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzc() {
        return zzc.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final String zzd() {
        return zze.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final String zze() {
        return zzf.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzf() {
        return zzg.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzg() {
        return zzh.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzh() {
        return zzi.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzi() {
        return zzj.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzj() {
        return zzk.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzk() {
        return zzl.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzl() {
        return zzm.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzm() {
        return zzn.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzn() {
        return zzo.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzo() {
        return zzp.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzp() {
        return zzr.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzq() {
        return zzt.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzr() {
        return zzu.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzs() {
        return zzv.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzt() {
        return zzw.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzu() {
        return zzx.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzv() {
        return zzy.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzw() {
        return zzz.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzx() {
        return zzA.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzy() {
        return zzB.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final long zzz() {
        return zzC.zze().longValue();
    }
}
