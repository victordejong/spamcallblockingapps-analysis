package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzfz;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzyy;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.BitSet;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfg.class */
public final class zzfg extends zzez {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfg(zzfa zzfaVar) {
        super(zzfaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgg zza(zzgf zzgfVar, String str) {
        zzgg[] zzggVarArr;
        for (zzgg zzggVar : zzgfVar.zzawt) {
            if (zzggVar.name.equals(str)) {
                return zzggVar;
            }
        }
        return null;
    }

    private static void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private final void zza(StringBuilder sb, int i, zzfw zzfwVar) {
        String[] strArr;
        if (zzfwVar != null) {
            zza(sb, i);
            sb.append("filter {\n");
            zza(sb, i, "complement", zzfwVar.zzavm);
            zza(sb, i, "param_name", zzgl().zzbt(zzfwVar.zzavn));
            int i2 = i + 1;
            zzfz zzfzVar = zzfwVar.zzavk;
            if (zzfzVar != null) {
                zza(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (zzfzVar.zzavw != null) {
                    String str = "UNKNOWN_MATCH_TYPE";
                    switch (zzfzVar.zzavw.intValue()) {
                        case 1:
                            str = "REGEXP";
                            break;
                        case 2:
                            str = "BEGINS_WITH";
                            break;
                        case 3:
                            str = "ENDS_WITH";
                            break;
                        case 4:
                            str = "PARTIAL";
                            break;
                        case 5:
                            str = "EXACT";
                            break;
                        case 6:
                            str = "IN_LIST";
                            break;
                    }
                    zza(sb, i2, "match_type", str);
                }
                zza(sb, i2, "expression", zzfzVar.zzavx);
                zza(sb, i2, "case_sensitive", zzfzVar.zzavy);
                if (zzfzVar.zzavz.length > 0) {
                    zza(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str2 : zzfzVar.zzavz) {
                        zza(sb, i2 + 2);
                        sb.append(str2);
                        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                    }
                    sb.append("}\n");
                }
                zza(sb, i2);
                sb.append("}\n");
            }
            zza(sb, i2, "number_filter", zzfwVar.zzavl);
            zza(sb, i);
            sb.append("}\n");
        }
    }

    private final void zza(StringBuilder sb, int i, String str, zzfx zzfxVar) {
        if (zzfxVar != null) {
            zza(sb, i);
            sb.append(str);
            sb.append(" {\n");
            if (zzfxVar.zzavo != null) {
                String str2 = "UNKNOWN_COMPARISON_TYPE";
                switch (zzfxVar.zzavo.intValue()) {
                    case 1:
                        str2 = "LESS_THAN";
                        break;
                    case 2:
                        str2 = "GREATER_THAN";
                        break;
                    case 3:
                        str2 = "EQUAL";
                        break;
                    case 4:
                        str2 = "BETWEEN";
                        break;
                }
                zza(sb, i, "comparison_type", str2);
            }
            zza(sb, i, "match_as_float", zzfxVar.zzavp);
            zza(sb, i, "comparison_value", zzfxVar.zzavq);
            zza(sb, i, "min_comparison_value", zzfxVar.zzavr);
            zza(sb, i, "max_comparison_value", zzfxVar.zzavs);
            zza(sb, i);
            sb.append("}\n");
        }
    }

    private static void zza(StringBuilder sb, int i, String str, zzgj zzgjVar) {
        if (zzgjVar != null) {
            zza(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            int i2 = 0;
            if (zzgjVar.zzayf != null) {
                zza(sb, 4);
                sb.append("results: ");
                long[] jArr = zzgjVar.zzayf;
                int length = jArr.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    long j = jArr[i3];
                    if (i4 != 0) {
                        sb.append(", ");
                    }
                    sb.append(Long.valueOf(j));
                    i3++;
                    i4++;
                }
                sb.append('\n');
            }
            if (zzgjVar.zzaye != null) {
                zza(sb, 4);
                sb.append("status: ");
                long[] jArr2 = zzgjVar.zzaye;
                int length2 = jArr2.length;
                int i5 = 0;
                while (i2 < length2) {
                    long j2 = jArr2[i2];
                    if (i5 != 0) {
                        sb.append(", ");
                    }
                    sb.append(Long.valueOf(j2));
                    i2++;
                    i5++;
                }
                sb.append('\n');
            }
            zza(sb, 3);
            sb.append("}\n");
        }
    }

    private static void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            zza(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append('\n');
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(long[] jArr, int i) {
        return i < (jArr.length << 6) && ((1 << (i % 64)) & jArr[i / 64]) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long[] zza(BitSet bitSet) {
        int i;
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i2 = 0; i2 < length; i2++) {
            jArr[i2] = 0;
            for (int i3 = 0; i3 < 64 && (i = (i2 << 6) + i3) < bitSet.length(); i3++) {
                if (bitSet.get(i)) {
                    jArr[i2] = jArr[i2] | (1 << i3);
                }
            }
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgg[] zza(zzgg[] zzggVarArr, String str, Object obj) {
        for (zzgg zzggVar : zzggVarArr) {
            if (str.equals(zzggVar.name)) {
                zzggVar.zzawx = null;
                zzggVar.zzamp = null;
                zzggVar.zzauh = null;
                if (obj instanceof Long) {
                    zzggVar.zzawx = (Long) obj;
                } else if (obj instanceof String) {
                    zzggVar.zzamp = (String) obj;
                } else if (obj instanceof Double) {
                    zzggVar.zzauh = (Double) obj;
                }
                return zzggVarArr;
            }
        }
        zzgg[] zzggVarArr2 = new zzgg[zzggVarArr.length + 1];
        System.arraycopy(zzggVarArr, 0, zzggVarArr2, 0, zzggVarArr.length);
        zzgg zzggVar2 = new zzgg();
        zzggVar2.name = str;
        if (obj instanceof Long) {
            zzggVar2.zzawx = (Long) obj;
        } else if (obj instanceof String) {
            zzggVar2.zzamp = (String) obj;
        } else if (obj instanceof Double) {
            zzggVar2.zzauh = (Double) obj;
        }
        zzggVarArr2[zzggVarArr.length] = zzggVar2;
        return zzggVarArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzb(zzgf zzgfVar, String str) {
        zzgg zza = zza(zzgfVar, str);
        if (zza == null) {
            return null;
        }
        if (zza.zzamp != null) {
            return zza.zzamp;
        }
        if (zza.zzawx != null) {
            return zza.zzawx;
        }
        if (zza.zzauh != null) {
            return zza.zzauh;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzcp(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    public final <T extends Parcelable> T zza(byte[] bArr, Parcelable.Creator<T> creator) {
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
                zzgo().zzjd().zzbx("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zza(zzfv zzfvVar) {
        if (zzfvVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        zza(sb, 0, "filter_id", zzfvVar.zzave);
        zza(sb, 0, "event_name", zzgl().zzbs(zzfvVar.zzavf));
        zza(sb, 1, "event_count_filter", zzfvVar.zzavi);
        sb.append("  filters {\n");
        for (zzfw zzfwVar : zzfvVar.zzavg) {
            zza(sb, 2, zzfwVar);
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zza(zzfy zzfyVar) {
        if (zzfyVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        zza(sb, 0, "filter_id", zzfyVar.zzave);
        zza(sb, 0, "property_name", zzgl().zzbu(zzfyVar.zzavu));
        zza(sb, 1, zzfyVar.zzavv);
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzgg zzggVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzggVar.zzamp = null;
        zzggVar.zzawx = null;
        zzggVar.zzauh = null;
        if (obj instanceof String) {
            zzggVar.zzamp = (String) obj;
        } else if (obj instanceof Long) {
            zzggVar.zzawx = (Long) obj;
        } else if (obj instanceof Double) {
            zzggVar.zzauh = (Double) obj;
        } else {
            zzgo().zzjd().zzg("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzgl zzglVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzglVar.zzamp = null;
        zzglVar.zzawx = null;
        zzglVar.zzauh = null;
        if (obj instanceof String) {
            zzglVar.zzamp = (String) obj;
        } else if (obj instanceof Long) {
            zzglVar.zzawx = (Long) obj;
        } else if (obj instanceof Double) {
            zzglVar.zzauh = (Double) obj;
        } else {
            zzgo().zzjd().zzg("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] zza(zzgh zzghVar) {
        try {
            byte[] bArr = new byte[zzghVar.zzvu()];
            zzyy zzk = zzyy.zzk(bArr, 0, bArr.length);
            zzghVar.zza(zzk);
            zzk.zzyt();
            return bArr;
        } catch (IOException e) {
            zzgo().zzjd().zzg("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] zza(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzgo().zzjd().zzg("Failed to ungzip content", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzb(zzgh zzghVar) {
        zzgi[] zzgiVarArr;
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (zzghVar.zzawy != null) {
            for (zzgi zzgiVar : zzghVar.zzawy) {
                if (!(zzgiVar == null || zzgiVar == null)) {
                    zza(sb, 1);
                    sb.append("bundle {\n");
                    zza(sb, 1, "protocol_version", zzgiVar.zzaxa);
                    zza(sb, 1, "platform", zzgiVar.zzaxi);
                    zza(sb, 1, "gmp_version", zzgiVar.zzaxm);
                    zza(sb, 1, "uploading_gmp_version", zzgiVar.zzaxn);
                    zza(sb, 1, "config_version", zzgiVar.zzaxy);
                    zza(sb, 1, "gmp_app_id", zzgiVar.zzafx);
                    zza(sb, 1, "admob_app_id", zzgiVar.zzawj);
                    zza(sb, 1, "app_id", zzgiVar.zztt);
                    zza(sb, 1, "app_version", zzgiVar.zzts);
                    zza(sb, 1, "app_version_major", zzgiVar.zzaxu);
                    zza(sb, 1, "firebase_instance_id", zzgiVar.zzafz);
                    zza(sb, 1, "dev_cert_hash", zzgiVar.zzaxq);
                    zza(sb, 1, "app_store", zzgiVar.zzage);
                    zza(sb, 1, "upload_timestamp_millis", zzgiVar.zzaxd);
                    zza(sb, 1, "start_timestamp_millis", zzgiVar.zzaxe);
                    zza(sb, 1, "end_timestamp_millis", zzgiVar.zzaxf);
                    zza(sb, 1, "previous_bundle_start_timestamp_millis", zzgiVar.zzaxg);
                    zza(sb, 1, "previous_bundle_end_timestamp_millis", zzgiVar.zzaxh);
                    zza(sb, 1, "app_instance_id", zzgiVar.zzafw);
                    zza(sb, 1, "resettable_device_id", zzgiVar.zzaxo);
                    zza(sb, 1, "device_id", zzgiVar.zzaxx);
                    zza(sb, 1, "ds_id", zzgiVar.zzaya);
                    zza(sb, 1, "limited_ad_tracking", zzgiVar.zzaxp);
                    zza(sb, 1, "os_version", zzgiVar.zzaxj);
                    zza(sb, 1, "device_model", zzgiVar.zzaxk);
                    zza(sb, 1, "user_default_language", zzgiVar.zzaia);
                    zza(sb, 1, "time_zone_offset_minutes", zzgiVar.zzaxl);
                    zza(sb, 1, "bundle_sequential_index", zzgiVar.zzaxr);
                    zza(sb, 1, "service_upload", zzgiVar.zzaxs);
                    zza(sb, 1, "health_monitor", zzgiVar.zzagv);
                    if (!(zzgiVar.zzaxz == null || zzgiVar.zzaxz.longValue() == 0)) {
                        zza(sb, 1, "android_id", zzgiVar.zzaxz);
                    }
                    if (zzgiVar.zzayc != null) {
                        zza(sb, 1, "retry_counter", zzgiVar.zzayc);
                    }
                    zzgl[] zzglVarArr = zzgiVar.zzaxc;
                    if (zzglVarArr != null) {
                        for (zzgl zzglVar : zzglVarArr) {
                            if (zzglVar != null) {
                                zza(sb, 2);
                                sb.append("user_property {\n");
                                zza(sb, 2, "set_timestamp_millis", zzglVar.zzayl);
                                zza(sb, 2, "name", zzgl().zzbu(zzglVar.name));
                                zza(sb, 2, "string_value", zzglVar.zzamp);
                                zza(sb, 2, "int_value", zzglVar.zzawx);
                                zza(sb, 2, "double_value", zzglVar.zzauh);
                                zza(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    zzgd[] zzgdVarArr = zzgiVar.zzaxt;
                    if (zzgdVarArr != null) {
                        for (zzgd zzgdVar : zzgdVarArr) {
                            if (zzgdVar != null) {
                                zza(sb, 2);
                                sb.append("audience_membership {\n");
                                zza(sb, 2, "audience_id", zzgdVar.zzauy);
                                zza(sb, 2, "new_audience", zzgdVar.zzawo);
                                zza(sb, 2, "current_data", zzgdVar.zzawm);
                                zza(sb, 2, "previous_data", zzgdVar.zzawn);
                                zza(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    zzgf[] zzgfVarArr = zzgiVar.zzaxb;
                    if (zzgfVarArr != null) {
                        for (zzgf zzgfVar : zzgfVarArr) {
                            if (zzgfVar != null) {
                                zza(sb, 2);
                                sb.append("event {\n");
                                zza(sb, 2, "name", zzgl().zzbs(zzgfVar.name));
                                zza(sb, 2, "timestamp_millis", zzgfVar.zzawu);
                                zza(sb, 2, "previous_timestamp_millis", zzgfVar.zzawv);
                                zza(sb, 2, "count", zzgfVar.count);
                                zzgg[] zzggVarArr = zzgfVar.zzawt;
                                if (zzggVarArr != null) {
                                    for (zzgg zzggVar : zzggVarArr) {
                                        if (zzggVar != null) {
                                            zza(sb, 3);
                                            sb.append("param {\n");
                                            zza(sb, 3, "name", zzgl().zzbt(zzggVar.name));
                                            zza(sb, 3, "string_value", zzggVar.zzamp);
                                            zza(sb, 3, "int_value", zzggVar.zzawx);
                                            zza(sb, 3, "double_value", zzggVar.zzauh);
                                            zza(sb, 3);
                                            sb.append("}\n");
                                        }
                                    }
                                }
                                zza(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    zza(sb, 1);
                    sb.append("}\n");
                }
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zzbx().currentTimeMillis() - j) > j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] zzb(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzgo().zzjd().zzg("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean zze(zzad zzadVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzadVar);
        Preconditions.checkNotNull(zzhVar);
        if (!TextUtils.isEmpty(zzhVar.zzafx) || !TextUtils.isEmpty(zzhVar.zzagk)) {
            return true;
        }
        zzgr();
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzez
    protected final boolean zzgt() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzfg zzjo() {
        return super.zzjo();
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzj zzjp() {
        return super.zzjp();
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzq zzjq() {
        return super.zzjq();
    }
}
