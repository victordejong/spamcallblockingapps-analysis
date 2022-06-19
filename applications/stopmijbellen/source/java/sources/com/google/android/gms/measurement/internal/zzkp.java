package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzaa;
import com.google.android.gms.internal.measurement.zzej;
import com.google.android.gms.internal.measurement.zzel;
import com.google.android.gms.internal.measurement.zzeq;
import com.google.android.gms.internal.measurement.zzes;
import com.google.android.gms.internal.measurement.zzex;
import com.google.android.gms.internal.measurement.zzfk;
import com.google.android.gms.internal.measurement.zzfm;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzfs;
import com.google.android.gms.internal.measurement.zzfu;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzjp;
import com.google.android.gms.internal.measurement.zzkn;
import com.google.android.gms.internal.measurement.zzlh;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkp.class */
public final class zzkp extends zzke {
    public zzkp(zzkn zzknVar) {
        super(zzknVar);
    }

    public static final zzfs zzA(zzfo zzfoVar, String str) {
        for (zzfs zzfsVar : zzfoVar.zza()) {
            if (zzfsVar.zzb().equals(str)) {
                return zzfsVar;
            }
        }
        return null;
    }

    public static final Object zzB(zzfo zzfoVar, String str) {
        zzfs zzA = zzA(zzfoVar, str);
        if (zzA != null) {
            if (zzA.zzc()) {
                return zzA.zzd();
            }
            if (zzA.zze()) {
                return Long.valueOf(zzA.zzf());
            }
            if (zzA.zzi()) {
                return Double.valueOf(zzA.zzj());
            }
            if (zzA.zzm() <= 0) {
                return null;
            }
            List<zzfs> zzk = zzA.zzk();
            ArrayList arrayList = new ArrayList();
            for (zzfs zzfsVar : zzk) {
                if (zzfsVar != null) {
                    Bundle bundle = new Bundle();
                    for (zzfs zzfsVar2 : zzfsVar.zzk()) {
                        if (zzfsVar2.zzc()) {
                            bundle.putString(zzfsVar2.zzb(), zzfsVar2.zzd());
                        } else if (zzfsVar2.zze()) {
                            bundle.putLong(zzfsVar2.zzb(), zzfsVar2.zzf());
                        } else if (zzfsVar2.zzi()) {
                            bundle.putDouble(zzfsVar2.zzb(), zzfsVar2.zzj());
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

    private final void zzC(StringBuilder sb, int i, List<zzfs> list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (zzfs zzfsVar : list) {
            if (zzfsVar != null) {
                zzE(sb, i2);
                sb.append("param {\n");
                zzH(sb, i2, AppMeasurementSdk.ConditionalUserProperty.NAME, zzfsVar.zza() ? this.zzs.zzm().zzd(zzfsVar.zzb()) : null);
                zzH(sb, i2, "string_value", zzfsVar.zzc() ? zzfsVar.zzd() : null);
                zzH(sb, i2, "int_value", zzfsVar.zze() ? Long.valueOf(zzfsVar.zzf()) : null);
                Double d = null;
                if (zzfsVar.zzi()) {
                    d = Double.valueOf(zzfsVar.zzj());
                }
                zzH(sb, i2, "double_value", d);
                if (zzfsVar.zzm() > 0) {
                    zzC(sb, i2, zzfsVar.zzk());
                }
                zzE(sb, i2);
                sb.append("}\n");
            }
        }
    }

    private final void zzD(StringBuilder sb, int i, zzel zzelVar) {
        if (zzelVar == null) {
            return;
        }
        zzE(sb, i);
        sb.append("filter {\n");
        if (zzelVar.zze()) {
            zzH(sb, i, "complement", Boolean.valueOf(zzelVar.zzf()));
        }
        if (zzelVar.zzg()) {
            zzH(sb, i, "param_name", this.zzs.zzm().zzd(zzelVar.zzh()));
        }
        if (zzelVar.zza()) {
            int i2 = i + 1;
            zzex zzb = zzelVar.zzb();
            if (zzb != null) {
                zzE(sb, i2);
                sb.append("string_filter {\n");
                if (zzb.zza()) {
                    zzH(sb, i2, "match_type", zzb.zzb().name());
                }
                if (zzb.zzc()) {
                    zzH(sb, i2, "expression", zzb.zzd());
                }
                if (zzb.zze()) {
                    zzH(sb, i2, "case_sensitive", Boolean.valueOf(zzb.zzf()));
                }
                if (zzb.zzh() > 0) {
                    zzE(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : zzb.zzg()) {
                        zzE(sb, i2 + 2);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                zzE(sb, i2);
                sb.append("}\n");
            }
        }
        if (zzelVar.zzc()) {
            zzI(sb, i + 1, "number_filter", zzelVar.zzd());
        }
        zzE(sb, i);
        sb.append("}\n");
    }

    private static final void zzE(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static final String zzF(boolean z, boolean z2, boolean z3) {
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

    private static final void zzG(StringBuilder sb, int i, String str, zzgd zzgdVar) {
        if (zzgdVar == null) {
            return;
        }
        zzE(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzgdVar.zzd() != 0) {
            zzE(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l : zzgdVar.zzc()) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i2++;
            }
            sb.append('\n');
        }
        if (zzgdVar.zzb() != 0) {
            zzE(sb, 4);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : zzgdVar.zza()) {
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3++;
            }
            sb.append('\n');
        }
        if (zzgdVar.zzf() != 0) {
            zzE(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i4 = 0;
            for (zzfm zzfmVar : zzgdVar.zze()) {
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(zzfmVar.zza() ? Integer.valueOf(zzfmVar.zzb()) : null);
                sb.append(":");
                sb.append(zzfmVar.zzc() ? Long.valueOf(zzfmVar.zzd()) : null);
                i4++;
            }
            sb.append("}\n");
        }
        if (zzgdVar.zzi() != 0) {
            zzE(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i5 = 0;
            for (zzgf zzgfVar : zzgdVar.zzh()) {
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(zzgfVar.zza() ? Integer.valueOf(zzgfVar.zzb()) : null);
                sb.append(": [");
                int i6 = 0;
                for (Long l3 : zzgfVar.zzc()) {
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
        zzE(sb, 3);
        sb.append("}\n");
    }

    private static final void zzH(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zzE(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    private static final void zzI(StringBuilder sb, int i, String str, zzeq zzeqVar) {
        if (zzeqVar == null) {
            return;
        }
        zzE(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzeqVar.zza()) {
            zzH(sb, i, "comparison_type", zzeqVar.zzb().name());
        }
        if (zzeqVar.zzc()) {
            zzH(sb, i, "match_as_float", Boolean.valueOf(zzeqVar.zzd()));
        }
        if (zzeqVar.zze()) {
            zzH(sb, i, "comparison_value", zzeqVar.zzf());
        }
        if (zzeqVar.zzg()) {
            zzH(sb, i, "min_comparison_value", zzeqVar.zzh());
        }
        if (zzeqVar.zzi()) {
            zzH(sb, i, "max_comparison_value", zzeqVar.zzj());
        }
        zzE(sb, i);
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

    public static <Builder extends zzlh> Builder zzt(Builder builder, byte[] bArr) throws zzkn {
        zzjp zzb = zzjp.zzb();
        return zzb != null ? (Builder) builder.zzav(bArr, zzb) : (Builder) builder.zzaw(bArr);
    }

    public static int zzu(zzfv zzfvVar, String str) {
        for (int i = 0; i < zzfvVar.zzk(); i++) {
            if (str.equals(zzfvVar.zzl(i).zzc())) {
                return i;
            }
        }
        return -1;
    }

    public static List<zzfs> zzv(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                zzfr zzn = zzfs.zzn();
                for (String str : bundle.keySet()) {
                    zzfr zzn2 = zzfs.zzn();
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

    public static zzas zzx(zzaa zzaaVar) {
        String str;
        Bundle bundle = new Bundle();
        Iterator<String> it2 = zzaaVar.zzf().keySet().iterator();
        String str2 = "app";
        while (true) {
            str = str2;
            if (!it2.hasNext()) {
                break;
            }
            String next = it2.next();
            Object zze = zzaaVar.zze(next);
            String str3 = str;
            if ("_o".equals(next)) {
                str3 = str;
                if (zze != null) {
                    str3 = zze.toString();
                }
            }
            if (zze == null) {
                bundle.putString(next, null);
                str2 = str3;
            } else if (zze instanceof Long) {
                bundle.putLong(next, ((Long) zze).longValue());
                str2 = str3;
            } else if (zze instanceof Double) {
                bundle.putDouble(next, ((Double) zze).doubleValue());
                str2 = str3;
            } else {
                bundle.putString(next, zze.toString());
                str2 = str3;
            }
        }
        String zzb = zzgr.zzb(zzaaVar.zzb());
        String str4 = zzb;
        if (zzb == null) {
            str4 = zzaaVar.zzb();
        }
        return new zzas(str4, new zzaq(bundle), str, zzaaVar.zza());
    }

    public static final void zzy(zzfn zzfnVar, String str, Object obj) {
        List<zzfs> zza = zzfnVar.zza();
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
        zzfr zzn = zzfs.zzn();
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
            zzfnVar.zze(i, zzn);
        } else {
            zzfnVar.zzg(zzn);
        }
    }

    public static final boolean zzz(zzas zzasVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzasVar);
        Preconditions.checkNotNull(zzpVar);
        return !TextUtils.isEmpty(zzpVar.zzb) || !TextUtils.isEmpty(zzpVar.zzq);
    }

    @Override // com.google.android.gms.measurement.internal.zzke
    public final boolean zzaA() {
        return false;
    }

    public final void zzc(zzgg zzggVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzggVar.zzd();
        zzggVar.zzf();
        zzggVar.zzh();
        if (obj instanceof String) {
            zzggVar.zzc((String) obj);
        } else if (obj instanceof Long) {
            zzggVar.zze(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzggVar.zzg(((Double) obj).doubleValue());
        } else {
            this.zzs.zzau().zzb().zzb("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void zzd(zzfr zzfrVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzfrVar.zzc();
        zzfrVar.zze();
        zzfrVar.zzg();
        zzfrVar.zzk();
        if (obj instanceof String) {
            zzfrVar.zzb((String) obj);
        } else if (obj instanceof Long) {
            zzfrVar.zzd(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzfrVar.zzf(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            zzfrVar.zzj(zzv((Bundle[]) obj));
        } else {
            this.zzs.zzau().zzb().zzb("Ignoring invalid (type) event param value", obj);
        }
    }

    public final zzfo zzf(zzan zzanVar) {
        zzfn zzk = zzfo.zzk();
        zzk.zzq(zzanVar.zze);
        zzap zzapVar = new zzap(zzanVar.zzf);
        while (zzapVar.hasNext()) {
            String next = zzapVar.next();
            zzfr zzn = zzfs.zzn();
            zzn.zza(next);
            Object zza = zzanVar.zzf.zza(next);
            Preconditions.checkNotNull(zza);
            zzd(zzn, zza);
            zzk.zzg(zzn);
        }
        return zzk.zzaA();
    }

    public final String zzh(zzfu zzfuVar) {
        if (zzfuVar == null) {
            return "";
        }
        StringBuilder m8752j = C0082b.m8752j("\nbatch {\n");
        for (zzfw zzfwVar : zzfuVar.zza()) {
            if (zzfwVar != null) {
                zzE(m8752j, 1);
                m8752j.append("bundle {\n");
                if (zzfwVar.zza()) {
                    zzH(m8752j, 1, "protocol_version", Integer.valueOf(zzfwVar.zzb()));
                }
                zzH(m8752j, 1, "platform", zzfwVar.zzt());
                if (zzfwVar.zzC()) {
                    zzH(m8752j, 1, "gmp_version", Long.valueOf(zzfwVar.zzD()));
                }
                if (zzfwVar.zzE()) {
                    zzH(m8752j, 1, "uploading_gmp_version", Long.valueOf(zzfwVar.zzF()));
                }
                if (zzfwVar.zzae()) {
                    zzH(m8752j, 1, "dynamite_version", Long.valueOf(zzfwVar.zzaf()));
                }
                if (zzfwVar.zzW()) {
                    zzH(m8752j, 1, "config_version", Long.valueOf(zzfwVar.zzX()));
                }
                zzH(m8752j, 1, "gmp_app_id", zzfwVar.zzP());
                zzH(m8752j, 1, "admob_app_id", zzfwVar.zzad());
                zzH(m8752j, 1, "app_id", zzfwVar.zzA());
                zzH(m8752j, 1, "app_version", zzfwVar.zzB());
                if (zzfwVar.zzU()) {
                    zzH(m8752j, 1, "app_version_major", Integer.valueOf(zzfwVar.zzV()));
                }
                zzH(m8752j, 1, "firebase_instance_id", zzfwVar.zzT());
                if (zzfwVar.zzK()) {
                    zzH(m8752j, 1, "dev_cert_hash", Long.valueOf(zzfwVar.zzL()));
                }
                zzH(m8752j, 1, "app_store", zzfwVar.zzz());
                if (zzfwVar.zzi()) {
                    zzH(m8752j, 1, "upload_timestamp_millis", Long.valueOf(zzfwVar.zzj()));
                }
                if (zzfwVar.zzk()) {
                    zzH(m8752j, 1, "start_timestamp_millis", Long.valueOf(zzfwVar.zzm()));
                }
                if (zzfwVar.zzn()) {
                    zzH(m8752j, 1, "end_timestamp_millis", Long.valueOf(zzfwVar.zzo()));
                }
                if (zzfwVar.zzp()) {
                    zzH(m8752j, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzfwVar.zzq()));
                }
                if (zzfwVar.zzr()) {
                    zzH(m8752j, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzfwVar.zzs()));
                }
                zzH(m8752j, 1, "app_instance_id", zzfwVar.zzJ());
                zzH(m8752j, 1, "resettable_device_id", zzfwVar.zzG());
                zzH(m8752j, 1, "ds_id", zzfwVar.zzaa());
                if (zzfwVar.zzH()) {
                    zzH(m8752j, 1, "limited_ad_tracking", Boolean.valueOf(zzfwVar.zzI()));
                }
                zzH(m8752j, 1, "os_version", zzfwVar.zzu());
                zzH(m8752j, 1, "device_model", zzfwVar.zzv());
                zzH(m8752j, 1, "user_default_language", zzfwVar.zzw());
                if (zzfwVar.zzx()) {
                    zzH(m8752j, 1, "time_zone_offset_minutes", Integer.valueOf(zzfwVar.zzy()));
                }
                if (zzfwVar.zzM()) {
                    zzH(m8752j, 1, "bundle_sequential_index", Integer.valueOf(zzfwVar.zzN()));
                }
                if (zzfwVar.zzQ()) {
                    zzH(m8752j, 1, "service_upload", Boolean.valueOf(zzfwVar.zzR()));
                }
                zzH(m8752j, 1, "health_monitor", zzfwVar.zzO());
                if (!this.zzs.zzc().zzn(null, zzea.zzat) && zzfwVar.zzY() && zzfwVar.zzZ() != 0) {
                    zzH(m8752j, 1, "android_id", Long.valueOf(zzfwVar.zzZ()));
                }
                if (zzfwVar.zzab()) {
                    zzH(m8752j, 1, "retry_counter", Integer.valueOf(zzfwVar.zzac()));
                }
                if (zzfwVar.zzah()) {
                    zzH(m8752j, 1, "consent_signals", zzfwVar.zzai());
                }
                List<zzgh> zzf = zzfwVar.zzf();
                if (zzf != null) {
                    for (zzgh zzghVar : zzf) {
                        if (zzghVar != null) {
                            zzE(m8752j, 2);
                            m8752j.append("user_property {\n");
                            zzH(m8752j, 2, "set_timestamp_millis", zzghVar.zza() ? Long.valueOf(zzghVar.zzb()) : null);
                            zzH(m8752j, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, this.zzs.zzm().zze(zzghVar.zzc()));
                            zzH(m8752j, 2, "string_value", zzghVar.zze());
                            zzH(m8752j, 2, "int_value", zzghVar.zzf() ? Long.valueOf(zzghVar.zzg()) : null);
                            zzH(m8752j, 2, "double_value", zzghVar.zzh() ? Double.valueOf(zzghVar.zzi()) : null);
                            zzE(m8752j, 2);
                            m8752j.append("}\n");
                        }
                    }
                }
                List<zzfk> zzS = zzfwVar.zzS();
                if (zzS != null) {
                    for (zzfk zzfkVar : zzS) {
                        if (zzfkVar != null) {
                            zzE(m8752j, 2);
                            m8752j.append("audience_membership {\n");
                            if (zzfkVar.zza()) {
                                zzH(m8752j, 2, "audience_id", Integer.valueOf(zzfkVar.zzb()));
                            }
                            if (zzfkVar.zzf()) {
                                zzH(m8752j, 2, "new_audience", Boolean.valueOf(zzfkVar.zzg()));
                            }
                            zzG(m8752j, 2, "current_data", zzfkVar.zzc());
                            if (zzfkVar.zzd()) {
                                zzG(m8752j, 2, "previous_data", zzfkVar.zze());
                            }
                            zzE(m8752j, 2);
                            m8752j.append("}\n");
                        }
                    }
                }
                List<zzfo> zzc = zzfwVar.zzc();
                if (zzc != null) {
                    for (zzfo zzfoVar : zzc) {
                        if (zzfoVar != null) {
                            zzE(m8752j, 2);
                            m8752j.append("event {\n");
                            zzH(m8752j, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, this.zzs.zzm().zzc(zzfoVar.zzd()));
                            if (zzfoVar.zze()) {
                                zzH(m8752j, 2, "timestamp_millis", Long.valueOf(zzfoVar.zzf()));
                            }
                            if (zzfoVar.zzg()) {
                                zzH(m8752j, 2, "previous_timestamp_millis", Long.valueOf(zzfoVar.zzh()));
                            }
                            if (zzfoVar.zzi()) {
                                zzH(m8752j, 2, "count", Integer.valueOf(zzfoVar.zzj()));
                            }
                            if (zzfoVar.zzb() != 0) {
                                zzC(m8752j, 2, zzfoVar.zza());
                            }
                            zzE(m8752j, 2);
                            m8752j.append("}\n");
                        }
                    }
                }
                zzE(m8752j, 1);
                m8752j.append("}\n");
            }
        }
        m8752j.append("}\n");
        return m8752j.toString();
    }

    public final String zzi(zzej zzejVar) {
        if (zzejVar == null) {
            return "null";
        }
        StringBuilder m8752j = C0082b.m8752j("\nevent_filter {\n");
        if (zzejVar.zza()) {
            zzH(m8752j, 0, "filter_id", Integer.valueOf(zzejVar.zzb()));
        }
        zzH(m8752j, 0, "event_name", this.zzs.zzm().zzc(zzejVar.zzc()));
        String zzF = zzF(zzejVar.zzi(), zzejVar.zzj(), zzejVar.zzm());
        if (!zzF.isEmpty()) {
            zzH(m8752j, 0, "filter_type", zzF);
        }
        if (zzejVar.zzg()) {
            zzI(m8752j, 1, "event_count_filter", zzejVar.zzh());
        }
        if (zzejVar.zze() > 0) {
            m8752j.append("  filters {\n");
            for (zzel zzelVar : zzejVar.zzd()) {
                zzD(m8752j, 2, zzelVar);
            }
        }
        zzE(m8752j, 1);
        m8752j.append("}\n}\n");
        return m8752j.toString();
    }

    public final String zzj(zzes zzesVar) {
        if (zzesVar == null) {
            return "null";
        }
        StringBuilder m8752j = C0082b.m8752j("\nproperty_filter {\n");
        if (zzesVar.zza()) {
            zzH(m8752j, 0, "filter_id", Integer.valueOf(zzesVar.zzb()));
        }
        zzH(m8752j, 0, "property_name", this.zzs.zzm().zze(zzesVar.zzc()));
        String zzF = zzF(zzesVar.zze(), zzesVar.zzf(), zzesVar.zzh());
        if (!zzF.isEmpty()) {
            zzH(m8752j, 0, "filter_type", zzF);
        }
        zzD(m8752j, 1, zzesVar.zzd());
        m8752j.append("}\n");
        return m8752j.toString();
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
                this.zzs.zzau().zzb().zza("Failed to load parcelable from buffer");
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
                this.zzs.zzau().zze().zzb("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.zzs.zzau().zze().zzc("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
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
        return j == 0 || j2 <= 0 || Math.abs(this.zzs.zzay().currentTimeMillis() - j) > j2;
    }

    public final long zzr(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        this.zzs.zzl().zzg();
        MessageDigest zzN = zzku.zzN();
        if (zzN == null) {
            C0033h.m8883n(this.zzs, "Failed to get MD5");
            return 0L;
        }
        return zzku.zzO(zzN.digest(bArr));
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
            this.zzs.zzau().zzb().zzb("Failed to gzip content", e);
            throw e;
        }
    }
}
