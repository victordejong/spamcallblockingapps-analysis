package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzkw;
import com.google.android.gms.internal.measurement.zzmg;
import com.google.android.gms.internal.measurement.zzs;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.j256.ormlite.field.FieldType;
import com.telguarder.ApplicationConstants;
import java.io.ByteArrayInputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzkk.class */
public final class zzkk extends zzgf {
    public static final /* synthetic */ int zza = 0;
    private static final String[] zzb = {"firebase_", "google_", "ga_"};
    private static final String[] zzc = {"_err"};
    private SecureRandom zzd;
    private int zzf;
    private Integer zzg = null;
    private final AtomicLong zze = new AtomicLong(0);

    public zzkk(zzfl zzflVar) {
        super(zzflVar);
    }

    public static MessageDigest zzN() {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    public static long zzO(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        int length = bArr.length;
        int i = 0;
        Preconditions.checkState(length > 0);
        char c = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            c += (bArr[i2] & 255) << i;
            i += 8;
        }
        return c;
    }

    public static boolean zzP(Context context, boolean z) {
        Preconditions.checkNotNull(context);
        return Build.VERSION.SDK_INT >= 24 ? zzaq(context, "com.google.android.gms.measurement.AppMeasurementJobService") : zzaq(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static boolean zzR(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean zzS(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str != null) {
            return str.equals(str2);
        }
        return false;
    }

    public static boolean zzY(String str) {
        return !zzc[0].equals(str);
    }

    public static ArrayList<Bundle> zzak(List<zzaa> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzaa zzaaVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzaaVar.zza);
            bundle.putString("origin", zzaaVar.zzb);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, zzaaVar.zzd);
            bundle.putString("name", zzaaVar.zzc.zzb);
            zzgh.zza(bundle, zzaaVar.zzc.zza());
            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, zzaaVar.zze);
            String str = zzaaVar.zzf;
            if (str != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str);
            }
            zzas zzasVar = zzaaVar.zzg;
            if (zzasVar != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, zzasVar.zza);
                zzaq zzaqVar = zzaaVar.zzg.zzb;
                if (zzaqVar != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, zzaqVar.zzf());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, zzaaVar.zzh);
            zzas zzasVar2 = zzaaVar.zzi;
            if (zzasVar2 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, zzasVar2.zza);
                zzaq zzaqVar2 = zzaaVar.zzi.zzb;
                if (zzaqVar2 != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, zzaqVar2.zzf());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, zzaaVar.zzc.zzc);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, zzaaVar.zzj);
            zzas zzasVar3 = zzaaVar.zzk;
            if (zzasVar3 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, zzasVar3.zza);
                zzaq zzaqVar3 = zzaaVar.zzk.zzb;
                if (zzaqVar3 != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, zzaqVar3.zzf());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    static final boolean zzam(Bundle bundle, int i) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            return true;
        }
        return false;
    }

    static final boolean zzan(String str) {
        Preconditions.checkNotNull(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    private final Object zzao(int i, Object obj, boolean z, boolean z2) {
        Parcelable[] parcelableArr;
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf((true != ((Boolean) obj).booleanValue() ? null : 1) == 1 ? 1L : 0L);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                return zzC(String.valueOf(obj), i, z);
            }
            if (!z2) {
                return null;
            }
            if (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[])) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : (Parcelable[]) obj) {
                if (parcelable instanceof Bundle) {
                    Bundle zzU = zzU((Bundle) parcelable);
                    if (!zzU.isEmpty()) {
                        arrayList.add(zzU);
                    }
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    private final int zzap(String str) {
        if ("_ldl".equals(str)) {
            this.zzx.zzc();
            return 2048;
        } else if (FieldType.FOREIGN_ID_FIELD_SUFFIX.equals(str)) {
            this.zzx.zzc();
            return 256;
        } else if (!this.zzx.zzc().zzn(null, zzdw.zzaf) || !"_lgclid".equals(str)) {
            this.zzx.zzc();
            return 36;
        } else {
            this.zzx.zzc();
            return 100;
        }
    }

    private static boolean zzaq(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) == null) {
                return false;
            }
            return serviceInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private static boolean zzar(String str, String[] strArr) {
        Preconditions.checkNotNull(strArr);
        for (String str2 : strArr) {
            if (zzS(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzh(String str) {
        Preconditions.checkNotEmpty(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public final boolean zzA(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (zzan(str)) {
                return true;
            }
            if (!this.zzx.zzq()) {
                return false;
            }
            this.zzx.zzat().zzd().zzb("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzei.zzl(str));
            return false;
        }
        zzmg.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzah) && !TextUtils.isEmpty(str3)) {
            return true;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (zzan(str2)) {
                return true;
            }
            this.zzx.zzat().zzd().zzb("Invalid admob_app_id. Analytics disabled.", zzei.zzl(str2));
            return false;
        } else if (!this.zzx.zzq()) {
            return false;
        } else {
            this.zzx.zzat().zzd().zza("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
    }

    public final boolean zzB(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            Preconditions.checkNotNull(str);
            return !str.equals(str2);
        } else if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        } else if (isEmpty) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        } else if (TextUtils.isEmpty(str4)) {
            return false;
        } else {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
    }

    public final String zzC(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (!z) {
            return null;
        }
        return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzD(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zzD(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    public final Object zzE(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            this.zzx.zzc();
            return zzao(256, obj, true, true);
        }
        if (zzR(str)) {
            this.zzx.zzc();
        } else {
            this.zzx.zzc();
            i = 100;
        }
        return zzao(i, obj, false, true);
    }

    public final Bundle zzF(String str, String str2, Bundle bundle, List<String> list, boolean z) {
        int i;
        boolean zzar = zzar(str2, zzgi.zzd);
        Bundle bundle2 = new Bundle(bundle);
        int zzc2 = this.zzx.zzc().zzc();
        int i2 = 0;
        for (String str3 : this.zzx.zzc().zzn(str, zzdw.zzX) ? new TreeSet(bundle.keySet()) : bundle.keySet()) {
            if (list == null || !list.contains(str3)) {
                int zzq = z ? zzq(str3) : 0;
                int i3 = zzq;
                if (zzq == 0) {
                    i3 = zzr(str3);
                }
                i = i3;
            } else {
                i = 0;
            }
            if (i != 0) {
                zzI(bundle2, i, str3, str3, i == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int zzD = zzD(str, str2, str3, bundle.get(str3), bundle2, list, z, zzar);
                if (zzD == 17) {
                    zzI(bundle2, 17, str3, str3, false);
                } else if (zzD != 0 && !"_ev".equals(str3)) {
                    zzI(bundle2, zzD, zzD == 21 ? str2 : str3, str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (zzh(str3)) {
                    i2++;
                    if (i2 > zzc2) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Event can't contain more than ");
                        sb.append(zzc2);
                        sb.append(" params");
                        this.zzx.zzat().zzd().zzc(sb.toString(), this.zzx.zzm().zzc(str2), this.zzx.zzm().zzf(bundle));
                        zzam(bundle2, 5);
                        bundle2.remove(str3);
                    }
                }
            }
        }
        return bundle2;
    }

    public final void zzG(zzej zzejVar, int i) {
        int i2 = 0;
        for (String str : new TreeSet(zzejVar.zzd.keySet())) {
            if (zzh(str)) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    StringBuilder sb = new StringBuilder(48);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    this.zzx.zzat().zzd().zzc(sb.toString(), this.zzx.zzm().zzc(zzejVar.zza), this.zzx.zzm().zzf(zzejVar.zzd));
                    zzam(zzejVar.zzd, 5);
                    zzejVar.zzd.remove(str);
                    i2 = i3;
                }
            }
        }
    }

    public final void zzH(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.zzx.zzl().zzL(bundle, str, bundle2.get(str));
            }
        }
    }

    final void zzI(Bundle bundle, int i, String str, String str2, Object obj) {
        if (zzam(bundle, i)) {
            this.zzx.zzc();
            bundle.putString("_ev", zzC(str, 40, true));
            if (obj == null) {
                return;
            }
            Preconditions.checkNotNull(bundle);
            if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
                return;
            }
            bundle.putLong("_el", String.valueOf(obj).length());
        }
    }

    public final int zzJ(String str, Object obj) {
        return "_ldl".equals(str) ? zzt("user property referrer", str, zzap(str), obj) : zzt("user property", str, zzap(str), obj) ? 0 : 7;
    }

    public final Object zzK(String str, Object obj) {
        return "_ldl".equals(str) ? zzao(zzap(str), obj, true, false) : zzao(zzap(str), obj, false, false);
    }

    public final void zzL(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str == null) {
        } else {
            this.zzx.zzat().zzh().zzc("Not putting event parameter. Invalid value type. name, type", this.zzx.zzm().zzd(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void zzM(zzkj zzkjVar, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        zzam(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        zzkw.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzaA)) {
            zzkjVar.zza(str, bundle);
            return;
        }
        this.zzx.zzas();
        this.zzx.zzk().zzs("auto", "_err", bundle);
    }

    public final boolean zzQ(String str) {
        zzg();
        if (Wrappers.packageManager(this.zzx.zzaw()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        this.zzx.zzat().zzj().zzb("Permission not granted", str);
        return false;
    }

    public final boolean zzT(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String zzu = this.zzx.zzc().zzu();
        this.zzx.zzas();
        return zzu.equals(str);
    }

    public final Bundle zzU(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object zzE = zzE(str, bundle.get(str));
                if (zzE == null) {
                    this.zzx.zzat().zzh().zzb("Param value can't be null", this.zzx.zzm().zzd(str));
                } else {
                    zzL(bundle2, str, zzE);
                }
            }
        }
        return bundle2;
    }

    public final zzas zzV(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (zzn(str2) != 0) {
            this.zzx.zzat().zzb().zzb("Invalid conditional property event name", this.zzx.zzm().zze(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle zzF = zzF(str, str2, bundle2, CollectionUtils.listOf("_o"), false);
        Bundle bundle3 = zzF;
        if (z) {
            bundle3 = zzU(zzF);
        }
        Preconditions.checkNotNull(bundle3);
        return new zzas(str2, new zzaq(bundle3), str3, j);
    }

    public final boolean zzW(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfo.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            this.zzx.zzat().zzb().zzb("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.zzx.zzat().zzb().zzb("Error obtaining certificate", e2);
            return true;
        }
    }

    public final byte[] zzX(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    @EnsuresNonNull({"this.apkVersion"})
    public final int zzZ() {
        if (this.zzg == null) {
            this.zzg = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzx.zzaw()) / 1000);
        }
        return this.zzg.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzgf
    protected final boolean zza() {
        return true;
    }

    public final int zzaa(int i) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(this.zzx.zzaw(), GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public final long zzab(long j, long j2) {
        return (j + (j2 * 60000)) / ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE;
    }

    public final void zzac(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.zzx.zzat().zze().zzb("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    public final void zzad(zzs zzsVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzx.zzat().zze().zzb("Error returning string value to wrapper", e);
        }
    }

    public final void zzae(zzs zzsVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzx.zzat().zze().zzb("Error returning long value to wrapper", e);
        }
    }

    public final void zzaf(zzs zzsVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzx.zzat().zze().zzb("Error returning int value to wrapper", e);
        }
    }

    public final void zzag(zzs zzsVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzx.zzat().zze().zzb("Error returning byte array to wrapper", e);
        }
    }

    public final void zzah(zzs zzsVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzx.zzat().zze().zzb("Error returning boolean value to wrapper", e);
        }
    }

    public final void zzai(zzs zzsVar, Bundle bundle) {
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzx.zzat().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    public final void zzaj(zzs zzsVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzsVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzx.zzat().zze().zzb("Error returning bundle list to wrapper", e);
        }
    }

    public final URL zzal(long j, String str, String str2, long j2) {
        try {
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 39000L, Integer.valueOf(zzZ())), str2, str, Long.valueOf(j2));
            String str3 = format;
            if (str.equals(this.zzx.zzc().zzv())) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            this.zzx.zzat().zzb().zzb("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.measurement.internal.zzgf
    protected final void zzay() {
        zzg();
        SecureRandom secureRandom = new SecureRandom();
        ?? nextLong = secureRandom.nextLong();
        char c = nextLong;
        if (nextLong == 0) {
            ?? nextLong2 = secureRandom.nextLong();
            c = nextLong2;
            if (nextLong2 == 0) {
                this.zzx.zzat().zze().zza("Utils falling back to Random for random id");
                c = nextLong2;
            }
        }
        this.zze.set(c);
    }

    public final long zzd() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.zze.get() != 0) {
            synchronized (this.zze) {
                this.zze.compareAndSet(-1L, 1L);
                andIncrement = this.zze.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.zze) {
            nextLong = new Random(System.nanoTime() ^ this.zzx.zzax().currentTimeMillis()).nextLong();
            int i = this.zzf + 1;
            this.zzf = i;
            j = i;
        }
        return nextLong + j;
    }

    @EnsuresNonNull({"this.secureRandom"})
    public final SecureRandom zzf() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new SecureRandom();
        }
        return this.zzd;
    }

    public final Bundle zzi(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    str4 = uri.getQueryParameter("utm_campaign");
                    str3 = uri.getQueryParameter("utm_source");
                    str2 = uri.getQueryParameter("utm_medium");
                    str = uri.getQueryParameter("gclid");
                } else {
                    str4 = null;
                    str3 = null;
                    str2 = null;
                    str = null;
                }
                if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(str4)) {
                    bundle.putString(FirebaseAnalytics.Param.CAMPAIGN, str4);
                }
                if (!TextUtils.isEmpty(str3)) {
                    bundle.putString("source", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    bundle.putString(FirebaseAnalytics.Param.MEDIUM, str2);
                }
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("gclid", str);
                }
                String queryParameter = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString(FirebaseAnalytics.Param.TERM, queryParameter);
                }
                String queryParameter2 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString(FirebaseAnalytics.Param.CONTENT, queryParameter2);
                }
                String queryParameter3 = uri.getQueryParameter(FirebaseAnalytics.Param.ACLID);
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString(FirebaseAnalytics.Param.ACLID, queryParameter3);
                }
                String queryParameter4 = uri.getQueryParameter(FirebaseAnalytics.Param.CP1);
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString(FirebaseAnalytics.Param.CP1, queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("anid", queryParameter5);
                }
                return bundle;
            } catch (UnsupportedOperationException e) {
                this.zzx.zzat().zze().zzb("Install referrer url isn't a hierarchical URI", e);
                return null;
            }
        }
        return null;
    }

    public final boolean zzj(String str, String str2) {
        if (str2 == null) {
            this.zzx.zzat().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.zzx.zzat().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.zzx.zzat().zzd().zzc("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (true) {
                int i = charCount;
                if (i >= length) {
                    return true;
                }
                int codePointAt2 = str2.codePointAt(i);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.zzx.zzat().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i + Character.charCount(codePointAt2);
            }
        }
    }

    public final boolean zzk(String str, String str2) {
        if (str2 == null) {
            this.zzx.zzat().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.zzx.zzat().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            int i = codePointAt;
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt != 95) {
                    this.zzx.zzat().zzd().zzc("Name must start with a letter or _ (underscore). Type, name", str, str2);
                    return false;
                }
                i = 95;
            }
            int length = str2.length();
            int charCount = Character.charCount(i);
            while (true) {
                int i2 = charCount;
                if (i2 >= length) {
                    return true;
                }
                int codePointAt2 = str2.codePointAt(i2);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.zzx.zzat().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i2 + Character.charCount(codePointAt2);
            }
        }
    }

    public final boolean zzl(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.zzx.zzat().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.checkNotNull(str2);
        String[] strArr3 = zzb;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.zzx.zzat().zzd().zzc("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !zzar(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && zzar(str2, strArr2)) {
            return true;
        }
        this.zzx.zzat().zzd().zzc("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final boolean zzm(String str, int i, String str2) {
        if (str2 == null) {
            this.zzx.zzat().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            this.zzx.zzat().zzd().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    public final int zzn(String str) {
        if (!zzk(NotificationCompat.CATEGORY_EVENT, str)) {
            return 2;
        }
        if (!zzl(NotificationCompat.CATEGORY_EVENT, zzgi.zza, zzgi.zzb, str)) {
            return 13;
        }
        this.zzx.zzc();
        return !zzm(NotificationCompat.CATEGORY_EVENT, 40, str) ? 2 : 0;
    }

    public final int zzo(String str) {
        if (!zzk("user property", str)) {
            return 6;
        }
        if (!zzl("user property", zzgk.zza, null, str)) {
            return 15;
        }
        this.zzx.zzc();
        return !zzm("user property", 24, str) ? 6 : 0;
    }

    final int zzq(String str) {
        if (!zzj("event param", str)) {
            return 3;
        }
        if (!zzl("event param", null, null, str)) {
            return 14;
        }
        this.zzx.zzc();
        return !zzm("event param", 40, str) ? 3 : 0;
    }

    final int zzr(String str) {
        if (!zzk("event param", str)) {
            return 3;
        }
        if (!zzl("event param", null, null, str)) {
            return 14;
        }
        this.zzx.zzc();
        return !zzm("event param", 40, str) ? 3 : 0;
    }

    public final boolean zzs(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public final boolean zzt(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) <= i) {
                return true;
            }
            this.zzx.zzat().zzh().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        }
        return true;
    }

    final void zzz(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        int i2;
        if (bundle == null) {
            return;
        }
        this.zzx.zzc();
        int i3 = 0;
        for (String str4 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str4)) {
                int zzq = z ? zzq(str4) : 0;
                i = zzq;
                if (zzq == 0) {
                    i = zzr(str4);
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                zzI(bundle, i, str4, str4, i == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (zzs(bundle.get(str4))) {
                    this.zzx.zzat().zzh().zzd("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                    i2 = 22;
                } else {
                    i2 = zzD(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                }
                if (i2 != 0 && !"_ev".equals(str4)) {
                    zzI(bundle, i2, str4, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (zzh(str4) && !zzar(str4, zzgj.zzd)) {
                    int i4 = i3 + 1;
                    i3 = i4;
                    if (i4 > 0) {
                        this.zzx.zzat().zzd().zzc("Item cannot contain custom parameters", this.zzx.zzm().zzc(str2), this.zzx.zzm().zzf(bundle));
                        zzam(bundle, 23);
                        bundle.remove(str4);
                        i3 = i4;
                    }
                }
            }
        }
    }
}
