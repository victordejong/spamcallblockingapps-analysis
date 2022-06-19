package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.internal.logging.monitor.MonitorLogServerProtocol;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzbw;
import com.google.android.gms.internal.measurement.zzby;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzcx;
import com.google.android.gms.internal.measurement.zzcz;
import com.google.android.gms.internal.measurement.zzda;
import com.google.android.gms.internal.measurement.zzdb;
import com.google.android.gms.internal.measurement.zzde;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzdh;
import com.google.android.gms.internal.measurement.zzdi;
import com.google.android.gms.internal.measurement.zzdj;
import com.google.android.gms.internal.measurement.zzdq;
import com.google.android.gms.internal.measurement.zzds;
import com.google.android.gms.internal.measurement.zzdt;
import com.google.android.gms.internal.measurement.zzdu;
import com.google.android.gms.internal.measurement.zzhe;
import com.google.android.gms.internal.measurement.zzic;
import com.google.android.gms.internal.measurement.zziw;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzkf.class */
public final class zzkf extends zzjv {
    public zzkf(zzkd zzkdVar) {
        super(zzkdVar);
    }

    public static final Object zzA(zzdb zzdbVar, String str) {
        zzdf zzz = zzz(zzdbVar, str);
        if (zzz != null) {
            if (zzz.zzc()) {
                return zzz.zzd();
            }
            if (zzz.zze()) {
                return Long.valueOf(zzz.zzf());
            }
            if (zzz.zzi()) {
                return Double.valueOf(zzz.zzj());
            }
            if (zzz.zzm() <= 0) {
                return null;
            }
            List<zzdf> zzk = zzz.zzk();
            ArrayList arrayList = new ArrayList();
            for (zzdf zzdfVar : zzk) {
                if (zzdfVar != null) {
                    Bundle bundle = new Bundle();
                    for (zzdf zzdfVar2 : zzdfVar.zzk()) {
                        if (zzdfVar2.zzc()) {
                            bundle.putString(zzdfVar2.zzb(), zzdfVar2.zzd());
                        } else if (zzdfVar2.zze()) {
                            bundle.putLong(zzdfVar2.zzb(), zzdfVar2.zzf());
                        } else if (zzdfVar2.zzi()) {
                            bundle.putDouble(zzdfVar2.zzb(), zzdfVar2.zzj());
                        }
                    }
                    if (!bundle.isEmpty()) {
                        arrayList.add(bundle);
                    }
                }
            }
            return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
        }
        return null;
    }

    private final void zzB(StringBuilder sb, int i, List<zzdf> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (zzdf zzdfVar : list) {
            if (zzdfVar != null) {
                zzD(sb, i2);
                sb.append("param {\n");
                zzG(sb, i2, "name", zzdfVar.zza() ? this.zzx.zzm().zzd(zzdfVar.zzb()) : null);
                zzG(sb, i2, "string_value", zzdfVar.zzc() ? zzdfVar.zzd() : null);
                zzG(sb, i2, "int_value", zzdfVar.zze() ? Long.valueOf(zzdfVar.zzf()) : null);
                Double d = null;
                if (zzdfVar.zzi()) {
                    d = Double.valueOf(zzdfVar.zzj());
                }
                zzG(sb, i2, "double_value", d);
                if (zzdfVar.zzm() > 0) {
                    zzB(sb, i2, zzdfVar.zzk());
                }
                zzD(sb, i2);
                sb.append("}\n");
            }
        }
    }

    private final void zzC(StringBuilder sb, int i, zzby zzbyVar) {
        if (zzbyVar == null) {
            return;
        }
        zzD(sb, i);
        sb.append("filter {\n");
        if (zzbyVar.zze()) {
            zzG(sb, i, "complement", Boolean.valueOf(zzbyVar.zzf()));
        }
        if (zzbyVar.zzg()) {
            zzG(sb, i, "param_name", this.zzx.zzm().zzd(zzbyVar.zzh()));
        }
        if (zzbyVar.zza()) {
            int i2 = i + 1;
            zzck zzb = zzbyVar.zzb();
            if (zzb != null) {
                zzD(sb, i2);
                sb.append("string_filter {\n");
                if (zzb.zza()) {
                    zzG(sb, i2, "match_type", zzb.zzb().name());
                }
                if (zzb.zzc()) {
                    zzG(sb, i2, "expression", zzb.zzd());
                }
                if (zzb.zze()) {
                    zzG(sb, i2, "case_sensitive", Boolean.valueOf(zzb.zzf()));
                }
                if (zzb.zzh() > 0) {
                    zzD(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : zzb.zzg()) {
                        zzD(sb, i2 + 2);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                zzD(sb, i2);
                sb.append("}\n");
            }
        }
        if (zzbyVar.zzc()) {
            zzH(sb, i + 1, "number_filter", zzbyVar.zzd());
        }
        zzD(sb, i);
        sb.append("}\n");
    }

    private static final void zzD(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static final String zzE(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    private static final void zzF(StringBuilder sb, int i, String str, zzdq zzdqVar, String str2) {
        if (zzdqVar == null) {
            return;
        }
        zzD(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzdqVar.zzd() != 0) {
            zzD(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : zzdqVar.zzc()) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2++;
            }
            sb.append('\n');
        }
        if (zzdqVar.zzb() != 0) {
            zzD(sb, 4);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : zzdqVar.zza()) {
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3++;
            }
            sb.append('\n');
        }
        if (zzdqVar.zzf() != 0) {
            zzD(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i4 = 0;
            for (zzcz zzczVar : zzdqVar.zze()) {
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(zzczVar.zza() ? Integer.valueOf(zzczVar.zzb()) : null);
                sb.append(":");
                sb.append(zzczVar.zzc() ? Long.valueOf(zzczVar.zzd()) : null);
                i4++;
            }
            sb.append("}\n");
        }
        if (zzdqVar.zzi() != 0) {
            zzD(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i5 = 0;
            for (zzds zzdsVar : zzdqVar.zzh()) {
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(zzdsVar.zza() ? Integer.valueOf(zzdsVar.zzb()) : null);
                sb.append(": [");
                int i6 = 0;
                for (Long l3 : zzdsVar.zzc()) {
                    long longValue = l3.longValue();
                    if (i6 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i6++;
                }
                sb.append("]");
                i5++;
            }
            sb.append("}\n");
        }
        zzD(sb, 3);
        sb.append("}\n");
    }

    private static final void zzG(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zzD(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    private static final void zzH(StringBuilder sb, int i, String str, zzcd zzcdVar) {
        if (zzcdVar == null) {
            return;
        }
        zzD(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzcdVar.zza()) {
            zzG(sb, i, "comparison_type", zzcdVar.zzb().name());
        }
        if (zzcdVar.zzc()) {
            zzG(sb, i, "match_as_float", Boolean.valueOf(zzcdVar.zzd()));
        }
        if (zzcdVar.zze()) {
            zzG(sb, i, "comparison_value", zzcdVar.zzf());
        }
        if (zzcdVar.zzg()) {
            zzG(sb, i, "min_comparison_value", zzcdVar.zzh());
        }
        if (zzcdVar.zzi()) {
            zzG(sb, i, "max_comparison_value", zzcdVar.zzj());
        }
        zzD(sb, i);
        sb.append("}\n");
    }

    public static boolean zzl(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static boolean zzm(List<Long> list, int i) {
        return i < list.size() * 64 && ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    public static List<Long> zzn(BitSet bitSet) {
        int i;
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            char c = 0;
            int i3 = 0;
            while (i3 < 64 && (i = (i2 * 64) + i3) < bitSet.length()) {
                char c2 = c;
                if (bitSet.get(i)) {
                    c2 = c | (1 << i3);
                }
                i3++;
                c = c2;
            }
            arrayList.add(Long.valueOf(c));
        }
        return arrayList;
    }

    public static <Builder extends zziw> Builder zzt(Builder builder, byte[] bArr) throws zzic {
        zzhe zzb = zzhe.zzb();
        return zzb != null ? (Builder) builder.zzav(bArr, zzb) : (Builder) builder.zzaw(bArr);
    }

    public static int zzu(zzdi zzdiVar, String str) {
        for (int i = 0; i < zzdiVar.zzk(); i++) {
            if (str.equals(zzdiVar.zzl(i).zzc())) {
                return i;
            }
        }
        return -1;
    }

    static List<zzdf> zzv(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                zzde zzn = zzdf.zzn();
                for (String str : bundle.keySet()) {
                    zzde zzn2 = zzdf.zzn();
                    zzn2.zza(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        zzn2.zzd(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        zzn2.zzb((String) obj);
                    } else if (obj instanceof Double) {
                        zzn2.zzf(((Double) obj).doubleValue());
                    }
                    zzn.zzi(zzn2);
                }
                if (zzn.zzh() > 0) {
                    arrayList.add(zzn.zzaA());
                }
            }
        }
        return arrayList;
    }

    public static final void zzx(zzda zzdaVar, String str, Object obj) {
        List<zzdf> zza = zzdaVar.zza();
        int i = 0;
        while (true) {
            if (i >= zza.size()) {
                i = -1;
                break;
            } else if (str.equals(zza.get(i).zzb())) {
                break;
            } else {
                i++;
            }
        }
        zzde zzn = zzdf.zzn();
        zzn.zza(str);
        if (obj instanceof Long) {
            zzn.zzd(((Long) obj).longValue());
        } else if (obj instanceof String) {
            zzn.zzb((String) obj);
        } else if (obj instanceof Double) {
            zzn.zzf(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzn.zzj(zzv((Bundle[]) obj));
        }
        if (i >= 0) {
            zzdaVar.zze(i, zzn);
        } else {
            zzdaVar.zzg(zzn);
        }
    }

    public static final boolean zzy(zzas zzasVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzasVar);
        Preconditions.checkNotNull(zzpVar);
        return !TextUtils.isEmpty(zzpVar.zzb) || !TextUtils.isEmpty(zzpVar.zzq);
    }

    public static final zzdf zzz(zzdb zzdbVar, String str) {
        for (zzdf zzdfVar : zzdbVar.zza()) {
            if (zzdfVar.zzb().equals(str)) {
                return zzdfVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    protected final boolean zzaz() {
        return false;
    }

    public final void zzc(zzdt zzdtVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzdtVar.zzd();
        zzdtVar.zzf();
        zzdtVar.zzh();
        if (obj instanceof String) {
            zzdtVar.zzc((String) obj);
        } else if (obj instanceof Long) {
            zzdtVar.zze(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzdtVar.zzg(((Double) obj).doubleValue());
        } else {
            this.zzx.zzat().zzb().zzb("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void zzd(zzde zzdeVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzdeVar.zzc();
        zzdeVar.zze();
        zzdeVar.zzg();
        zzdeVar.zzk();
        if (obj instanceof String) {
            zzdeVar.zzb((String) obj);
        } else if (obj instanceof Long) {
            zzdeVar.zzd(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzdeVar.zzf(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzdeVar.zzj(zzv((Bundle[]) obj));
        } else {
            this.zzx.zzat().zzb().zzb("Ignoring invalid (type) event param value", obj);
        }
    }

    public final zzdb zzf(zzan zzanVar) {
        zzda zzk = zzdb.zzk();
        zzk.zzq(zzanVar.zze);
        zzap zzapVar = new zzap(zzanVar.zzf);
        while (zzapVar.hasNext()) {
            String next = zzapVar.next();
            zzde zzn = zzdf.zzn();
            zzn.zza(next);
            Object zza = zzanVar.zzf.zza(next);
            Preconditions.checkNotNull(zza);
            zzd(zzn, zza);
            zzk.zzg(zzn);
        }
        return zzk.zzaA();
    }

    public final String zzh(zzdh zzdhVar) {
        if (zzdhVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (zzdj zzdjVar : zzdhVar.zza()) {
            if (zzdjVar != null) {
                zzD(sb, 1);
                sb.append("bundle {\n");
                if (zzdjVar.zza()) {
                    zzG(sb, 1, "protocol_version", Integer.valueOf(zzdjVar.zzb()));
                }
                zzG(sb, 1, "platform", zzdjVar.zzt());
                if (zzdjVar.zzC()) {
                    zzG(sb, 1, "gmp_version", Long.valueOf(zzdjVar.zzD()));
                }
                if (zzdjVar.zzE()) {
                    zzG(sb, 1, "uploading_gmp_version", Long.valueOf(zzdjVar.zzF()));
                }
                if (zzdjVar.zzae()) {
                    zzG(sb, 1, "dynamite_version", Long.valueOf(zzdjVar.zzaf()));
                }
                if (zzdjVar.zzW()) {
                    zzG(sb, 1, "config_version", Long.valueOf(zzdjVar.zzX()));
                }
                zzG(sb, 1, "gmp_app_id", zzdjVar.zzP());
                zzG(sb, 1, "admob_app_id", zzdjVar.zzad());
                zzG(sb, 1, "app_id", zzdjVar.zzA());
                zzG(sb, 1, "app_version", zzdjVar.zzB());
                if (zzdjVar.zzU()) {
                    zzG(sb, 1, "app_version_major", Integer.valueOf(zzdjVar.zzV()));
                }
                zzG(sb, 1, "firebase_instance_id", zzdjVar.zzT());
                if (zzdjVar.zzK()) {
                    zzG(sb, 1, "dev_cert_hash", Long.valueOf(zzdjVar.zzL()));
                }
                zzG(sb, 1, "app_store", zzdjVar.zzz());
                if (zzdjVar.zzi()) {
                    zzG(sb, 1, "upload_timestamp_millis", Long.valueOf(zzdjVar.zzj()));
                }
                if (zzdjVar.zzk()) {
                    zzG(sb, 1, "start_timestamp_millis", Long.valueOf(zzdjVar.zzm()));
                }
                if (zzdjVar.zzn()) {
                    zzG(sb, 1, "end_timestamp_millis", Long.valueOf(zzdjVar.zzo()));
                }
                if (zzdjVar.zzp()) {
                    zzG(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzdjVar.zzq()));
                }
                if (zzdjVar.zzr()) {
                    zzG(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzdjVar.zzs()));
                }
                zzG(sb, 1, "app_instance_id", zzdjVar.zzJ());
                zzG(sb, 1, "resettable_device_id", zzdjVar.zzG());
                zzG(sb, 1, "ds_id", zzdjVar.zzaa());
                if (zzdjVar.zzH()) {
                    zzG(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzdjVar.zzI()));
                }
                zzG(sb, 1, "os_version", zzdjVar.zzu());
                zzG(sb, 1, MonitorLogServerProtocol.PARAM_DEVICE_MODEL, zzdjVar.zzv());
                zzG(sb, 1, "user_default_language", zzdjVar.zzw());
                if (zzdjVar.zzx()) {
                    zzG(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzdjVar.zzy()));
                }
                if (zzdjVar.zzM()) {
                    zzG(sb, 1, "bundle_sequential_index", Integer.valueOf(zzdjVar.zzN()));
                }
                if (zzdjVar.zzQ()) {
                    zzG(sb, 1, "service_upload", Boolean.valueOf(zzdjVar.zzR()));
                }
                zzG(sb, 1, "health_monitor", zzdjVar.zzO());
                if (!this.zzx.zzc().zzn(null, zzdw.zzav) && zzdjVar.zzY() && zzdjVar.zzZ() != 0) {
                    zzG(sb, 1, "android_id", Long.valueOf(zzdjVar.zzZ()));
                }
                if (zzdjVar.zzab()) {
                    zzG(sb, 1, "retry_counter", Integer.valueOf(zzdjVar.zzac()));
                }
                if (zzdjVar.zzah()) {
                    zzG(sb, 1, "consent_signals", zzdjVar.zzai());
                }
                List<zzdu> zzf = zzdjVar.zzf();
                if (zzf != null) {
                    for (zzdu zzduVar : zzf) {
                        if (zzduVar != null) {
                            zzD(sb, 2);
                            sb.append("user_property {\n");
                            zzG(sb, 2, "set_timestamp_millis", zzduVar.zza() ? Long.valueOf(zzduVar.zzb()) : null);
                            zzG(sb, 2, "name", this.zzx.zzm().zze(zzduVar.zzc()));
                            zzG(sb, 2, "string_value", zzduVar.zze());
                            zzG(sb, 2, "int_value", zzduVar.zzf() ? Long.valueOf(zzduVar.zzg()) : null);
                            zzG(sb, 2, "double_value", zzduVar.zzh() ? Double.valueOf(zzduVar.zzi()) : null);
                            zzD(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzcx> zzS = zzdjVar.zzS();
                String zzA = zzdjVar.zzA();
                if (zzS != null) {
                    for (zzcx zzcxVar : zzS) {
                        if (zzcxVar != null) {
                            zzD(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzcxVar.zza()) {
                                zzG(sb, 2, "audience_id", Integer.valueOf(zzcxVar.zzb()));
                            }
                            if (zzcxVar.zzf()) {
                                zzG(sb, 2, "new_audience", Boolean.valueOf(zzcxVar.zzg()));
                            }
                            zzF(sb, 2, "current_data", zzcxVar.zzc(), zzA);
                            if (zzcxVar.zzd()) {
                                zzF(sb, 2, "previous_data", zzcxVar.zze(), zzA);
                            }
                            zzD(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzdb> zzc = zzdjVar.zzc();
                if (zzc != null) {
                    for (zzdb zzdbVar : zzc) {
                        if (zzdbVar != null) {
                            zzD(sb, 2);
                            sb.append("event {\n");
                            zzG(sb, 2, "name", this.zzx.zzm().zzc(zzdbVar.zzd()));
                            if (zzdbVar.zze()) {
                                zzG(sb, 2, "timestamp_millis", Long.valueOf(zzdbVar.zzf()));
                            }
                            if (zzdbVar.zzg()) {
                                zzG(sb, 2, "previous_timestamp_millis", Long.valueOf(zzdbVar.zzh()));
                            }
                            if (zzdbVar.zzi()) {
                                zzG(sb, 2, "count", Integer.valueOf(zzdbVar.zzj()));
                            }
                            if (zzdbVar.zzb() != 0) {
                                zzB(sb, 2, zzdbVar.zza());
                            }
                            zzD(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                zzD(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    public final String zzi(zzbw zzbwVar) {
        if (zzbwVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbwVar.zza()) {
            zzG(sb, 0, "filter_id", Integer.valueOf(zzbwVar.zzb()));
        }
        zzG(sb, 0, MonitorLogServerProtocol.PARAM_EVENT_NAME, this.zzx.zzm().zzc(zzbwVar.zzc()));
        String zzE = zzE(zzbwVar.zzi(), zzbwVar.zzj(), zzbwVar.zzm());
        if (!zzE.isEmpty()) {
            zzG(sb, 0, "filter_type", zzE);
        }
        if (zzbwVar.zzg()) {
            zzH(sb, 1, "event_count_filter", zzbwVar.zzh());
        }
        if (zzbwVar.zze() > 0) {
            sb.append("  filters {\n");
            for (zzby zzbyVar : zzbwVar.zzd()) {
                zzC(sb, 2, zzbyVar);
            }
        }
        zzD(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    public final String zzj(zzcf zzcfVar) {
        if (zzcfVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzcfVar.zza()) {
            zzG(sb, 0, "filter_id", Integer.valueOf(zzcfVar.zzb()));
        }
        zzG(sb, 0, "property_name", this.zzx.zzm().zze(zzcfVar.zzc()));
        String zzE = zzE(zzcfVar.zze(), zzcfVar.zzf(), zzcfVar.zzh());
        if (!zzE.isEmpty()) {
            zzG(sb, 0, "filter_type", zzE);
        }
        zzC(sb, 1, zzcfVar.zzd());
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX WARN: Finally extract failed */
    public final <T extends Parcelable> T zzk(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                T createFromParcel = creator.createFromParcel(obtain);
                obtain.recycle();
                return createFromParcel;
            } catch (SafeParcelReader.ParseException e) {
                this.zzx.zzat().zzb().zza("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    public final List<Long> zzo(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                this.zzx.zzat().zze().zzb("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.zzx.zzat().zze().zzc("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i = size2;
            if (i < 0 || ((Long) arrayList.get(i)).longValue() != 0) {
                break;
            }
            size = i;
            size2 = i - 1;
        }
        return arrayList.subList(0, size);
    }

    public final boolean zzq(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(this.zzx.zzax().currentTimeMillis() - j) > j2;
    }

    public final long zzr(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        this.zzx.zzl().zzg();
        MessageDigest zzN = zzkk.zzN();
        if (zzN == null) {
            this.zzx.zzat().zzb().zza("Failed to get MD5");
            return 0L;
        }
        return zzkk.zzO(zzN.digest(bArr));
    }

    public final byte[] zzs(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.zzx.zzat().zzb().zzb("Failed to gzip content", e);
            throw e;
        }
    }
}
