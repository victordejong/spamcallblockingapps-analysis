package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjf.class */
public final class zzjf implements zzjg {
    private static final zzcl<Long> zza;
    private static final zzcl<Long> zzaa;
    private static final zzcl<Long> zzab;
    private static final zzcl<Long> zzac;
    private static final zzcl<Long> zzad;
    private static final zzcl<Long> zzae;
    private static final zzcl<Long> zzaf;
    private static final zzcl<Long> zzag;
    private static final zzcl<Long> zzah;
    private static final zzcl<String> zzai;
    private static final zzcl<Long> zzaj;
    private static final zzcl<Long> zzb;
    private static final zzcl<String> zzc;
    private static final zzcl<String> zzd;
    private static final zzcl<String> zze;
    private static final zzcl<Long> zzf;
    private static final zzcl<Long> zzg;
    private static final zzcl<Long> zzh;
    private static final zzcl<Long> zzi;
    private static final zzcl<Long> zzj;
    private static final zzcl<Long> zzk;
    private static final zzcl<Long> zzl;
    private static final zzcl<Long> zzm;
    private static final zzcl<Long> zzn;
    private static final zzcl<Long> zzo;
    private static final zzcl<Long> zzp;
    private static final zzcl<Long> zzq;
    private static final zzcl<String> zzr;
    private static final zzcl<Long> zzs;
    private static final zzcl<Long> zzt;
    private static final zzcl<Long> zzu;
    private static final zzcl<Long> zzv;
    private static final zzcl<Long> zzw;
    private static final zzcl<Long> zzx;
    private static final zzcl<Long> zzy;
    private static final zzcl<Long> zzz;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.ad_id_cache_time", 10000L);
        zzb = zzcrVar.zza("measurement.config.cache_time", 86400000L);
        zzc = zzcrVar.zza("measurement.log_tag", "FA");
        zzd = zzcrVar.zza("measurement.config.url_authority", "app-measurement.com");
        zze = zzcrVar.zza("measurement.config.url_scheme", "https");
        zzf = zzcrVar.zza("measurement.upload.debug_upload_interval", 1000L);
        zzg = zzcrVar.zza("measurement.lifetimevalue.max_currency_tracked", 4L);
        zzh = zzcrVar.zza("measurement.store.max_stored_events_per_app", 100000L);
        zzi = zzcrVar.zza("measurement.experiment.max_ids", 50L);
        zzj = zzcrVar.zza("measurement.audience.filter_result_max_count", 200L);
        zzk = zzcrVar.zza("measurement.alarm_manager.minimum_interval", 60000L);
        zzl = zzcrVar.zza("measurement.upload.minimum_delay", 500L);
        zzm = zzcrVar.zza("measurement.monitoring.sample_period_millis", 86400000L);
        zzn = zzcrVar.zza("measurement.upload.realtime_upload_interval", 10000L);
        zzo = zzcrVar.zza("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        zzp = zzcrVar.zza("measurement.config.cache_time.service", 3600000L);
        zzq = zzcrVar.zza("measurement.service_client.idle_disconnect_millis", 5000L);
        zzr = zzcrVar.zza("measurement.log_tag.service", "FA-SVC");
        zzs = zzcrVar.zza("measurement.upload.stale_data_deletion_interval", 86400000L);
        zzt = zzcrVar.zza("measurement.upload.backoff_period", 43200000L);
        zzu = zzcrVar.zza("measurement.upload.initial_upload_delay_time", 15000L);
        zzv = zzcrVar.zza("measurement.upload.interval", 3600000L);
        zzw = zzcrVar.zza("measurement.upload.max_bundle_size", 65536L);
        zzx = zzcrVar.zza("measurement.upload.max_bundles", 100L);
        zzy = zzcrVar.zza("measurement.upload.max_conversions_per_day", 500L);
        zzz = zzcrVar.zza("measurement.upload.max_error_events_per_day", 1000L);
        zzaa = zzcrVar.zza("measurement.upload.max_events_per_bundle", 1000L);
        zzab = zzcrVar.zza("measurement.upload.max_events_per_day", 100000L);
        zzac = zzcrVar.zza("measurement.upload.max_public_events_per_day", 50000L);
        zzad = zzcrVar.zza("measurement.upload.max_queue_time", 2419200000L);
        zzae = zzcrVar.zza("measurement.upload.max_realtime_events_per_day", 10L);
        zzaf = zzcrVar.zza("measurement.upload.max_batch_size", 65536L);
        zzag = zzcrVar.zza("measurement.upload.retry_count", 6L);
        zzah = zzcrVar.zza("measurement.upload.retry_time", 1800000L);
        zzai = zzcrVar.zza("measurement.upload.url", "https://app-measurement.com/a");
        zzaj = zzcrVar.zza("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zza() {
        return zza.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzaa() {
        return zzad.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzab() {
        return zzae.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzac() {
        return zzaf.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzad() {
        return zzag.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzae() {
        return zzah.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final String zzaf() {
        return zzai.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzag() {
        return zzaj.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzb() {
        return zzb.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final String zzc() {
        return zzd.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final String zzd() {
        return zze.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zze() {
        return zzf.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzf() {
        return zzg.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzg() {
        return zzh.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzh() {
        return zzi.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzi() {
        return zzj.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzj() {
        return zzk.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzk() {
        return zzl.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzl() {
        return zzm.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzm() {
        return zzn.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzn() {
        return zzo.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzo() {
        return zzq.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzp() {
        return zzs.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzq() {
        return zzt.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzr() {
        return zzu.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzs() {
        return zzv.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzt() {
        return zzw.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzu() {
        return zzx.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzv() {
        return zzy.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzw() {
        return zzz.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzx() {
        return zzaa.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzy() {
        return zzab.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzz() {
        return zzac.zzc().longValue();
    }
}
