package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzov;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
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
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzku.class */
public final class zzku extends zzgo {
    public static final /* synthetic */ int zza = 0;
    private static final String[] zzb = {"firebase_", "google_", "ga_"};
    private static final String[] zzc = {"_err"};
    private SecureRandom zzd;
    private int zzf;
    private Integer zzg = null;
    private final AtomicLong zze = new AtomicLong(0);

    public zzku(zzfu zzfuVar) {
        super(zzfuVar);
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
    @VisibleForTesting
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
        return Build.VERSION.SDK_INT >= 24 ? zzar(context, "com.google.android.gms.measurement.AppMeasurementJobService") : zzar(context, "com.google.android.gms.measurement.AppMeasurementService");
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
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, zzaaVar.zzb);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, zzaaVar.zzd);
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, zzaaVar.zzc.zzb);
            zzgq.zza(bundle, zzaaVar.zzc.zza());
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

    public static boolean zzam(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null) {
                return false;
            }
            return receiverInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static final boolean zzan(Bundle bundle, int i) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public static final boolean zzao(String str) {
        Preconditions.checkNotNull(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    private final Object zzap(int i, Object obj, boolean z, boolean z2) {
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

    private final int zzaq(String str) {
        if ("_ldl".equals(str)) {
            this.zzs.zzc();
            return 2048;
        } else if ("_id".equals(str)) {
            this.zzs.zzc();
            return 256;
        } else if (!this.zzs.zzc().zzn(null, zzea.zzae) || !"_lgclid".equals(str)) {
            this.zzs.zzc();
            return 36;
        } else {
            this.zzs.zzc();
            return 100;
        }
    }

    private static boolean zzar(Context context, String str) {
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

    private static boolean zzas(String str, String[] strArr) {
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
            if (zzao(str)) {
                return true;
            }
            if (!this.zzs.zzq()) {
                return false;
            }
            this.zzs.zzau().zzd().zzb("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzem.zzl(str));
            return false;
        }
        zzov.zzb();
        if (this.zzs.zzc().zzn(null, zzea.zzag) && !TextUtils.isEmpty(str3)) {
            return true;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (zzao(str2)) {
                return true;
            }
            this.zzs.zzau().zzd().zzb("Invalid admob_app_id. Analytics disabled.", zzem.zzl(str2));
            return false;
        } else if (!this.zzs.zzq()) {
            return false;
        } else {
            this.zzs.zzau().zzd().zza("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
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
    public final int zzD(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzku.zzD(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    public final Object zzE(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            this.zzs.zzc();
            return zzap(256, obj, true, true);
        }
        if (zzR(str)) {
            this.zzs.zzc();
        } else {
            this.zzs.zzc();
            i = 100;
        }
        return zzap(i, obj, false, true);
    }

    public final Bundle zzF(String str, String str2, Bundle bundle, List<String> list, boolean z) {
        int i;
        boolean zzas = zzas(str2, zzgr.zzd);
        Bundle bundle2 = new Bundle(bundle);
        int zzc2 = this.zzs.zzc().zzc();
        int i2 = 0;
        for (String str3 : this.zzs.zzc().zzn(str, zzea.zzW) ? new TreeSet(bundle.keySet()) : bundle.keySet()) {
            if (list == null || !list.contains(str3)) {
                int zzq = z ? zzq(str3) : 0;
                i = zzq;
                if (zzq == 0) {
                    i = zzr(str3);
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                zzI(bundle2, i, str3, str3, i == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int zzD = zzD(str, str2, str3, bundle.get(str3), bundle2, list, z, zzas);
                if (zzD == 17) {
                    zzI(bundle2, 17, str3, str3, Boolean.FALSE);
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
                        this.zzs.zzau().zzd().zzc(sb.toString(), this.zzs.zzm().zzc(str2), this.zzs.zzm().zzf(bundle));
                        zzan(bundle2, 5);
                        bundle2.remove(str3);
                    }
                }
            }
        }
        return bundle2;
    }

    public final void zzG(zzen zzenVar, int i) {
        Iterator it2 = new TreeSet(zzenVar.zzd.keySet()).iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (zzh(str)) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    StringBuilder sb = new StringBuilder(48);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    this.zzs.zzau().zzd().zzc(sb.toString(), this.zzs.zzm().zzc(zzenVar.zza), this.zzs.zzm().zzf(zzenVar.zzd));
                    zzan(zzenVar.zzd, 5);
                    zzenVar.zzd.remove(str);
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
                this.zzs.zzl().zzL(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void zzI(Bundle bundle, int i, String str, String str2, Object obj) {
        if (zzan(bundle, i)) {
            this.zzs.zzc();
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
        return "_ldl".equals(str) ? zzt("user property referrer", str, zzaq(str), obj) : zzt("user property", str, zzaq(str), obj) ? 0 : 7;
    }

    public final Object zzK(String str, Object obj) {
        return "_ldl".equals(str) ? zzap(zzaq(str), obj, true, false) : zzap(zzaq(str), obj, false, false);
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
            this.zzs.zzau().zzh().zzc("Not putting event parameter. Invalid value type. name, type", this.zzs.zzm().zzd(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void zzM(zzkt zzktVar, String str, int i, String str2, String str3, int i2, boolean z) {
        Bundle bundle = new Bundle();
        zzan(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        if (z) {
            zzktVar.zza(str, "_err", bundle);
            return;
        }
        this.zzs.zzat();
        this.zzs.zzk().zzs("auto", "_err", bundle);
    }

    public final boolean zzQ(String str) {
        zzg();
        if (Wrappers.packageManager(this.zzs.zzax()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        this.zzs.zzau().zzj().zzb("Permission not granted", str);
        return false;
    }

    public final boolean zzT(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String zzu = this.zzs.zzc().zzu();
        this.zzs.zzat();
        return zzu.equals(str);
    }

    public final Bundle zzU(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object zzE = zzE(str, bundle.get(str));
                if (zzE == null) {
                    this.zzs.zzau().zzh().zzb("Param value can't be null", this.zzs.zzm().zzd(str));
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
            this.zzs.zzau().zzb().zzb("Invalid conditional property event name", this.zzs.zzm().zze(str2));
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

    @VisibleForTesting
    public final boolean zzW(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            this.zzs.zzau().zzb().zzb("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.zzs.zzau().zzb().zzb("Error obtaining certificate", e2);
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
            this.zzg = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzs.zzax()) / 1000);
        }
        return this.zzg.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    public final boolean zza() {
        return true;
    }

    public final int zzaa(int i) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(this.zzs.zzax(), GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public final long zzab(long j, long j2) {
        return ((j2 * 60000) + j) / 86400000;
    }

    public final void zzac(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.zzs.zzau().zze().zzb("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    public final void zzad(zzcf zzcfVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzs.zzau().zze().zzb("Error returning string value to wrapper", e);
        }
    }

    public final void zzae(zzcf zzcfVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzs.zzau().zze().zzb("Error returning long value to wrapper", e);
        }
    }

    public final void zzaf(zzcf zzcfVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzs.zzau().zze().zzb("Error returning int value to wrapper", e);
        }
    }

    public final void zzag(zzcf zzcfVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzs.zzau().zze().zzb("Error returning byte array to wrapper", e);
        }
    }

    public final void zzah(zzcf zzcfVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzs.zzau().zze().zzb("Error returning boolean value to wrapper", e);
        }
    }

    public final void zzai(zzcf zzcfVar, Bundle bundle) {
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzs.zzau().zze().zzb("Error returning bundle value to wrapper", e);
        }
    }

    public final void zzaj(zzcf zzcfVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzcfVar.zzb(bundle);
        } catch (RemoteException e) {
            this.zzs.zzau().zze().zzb("Error returning bundle list to wrapper", e);
        }
    }

    public final URL zzal(long j, String str, String str2, long j2) {
        try {
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 42004L, Integer.valueOf(zzZ())), str2, str, Long.valueOf(j2));
            String str3 = format;
            if (str.equals(this.zzs.zzc().zzv())) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            this.zzs.zzau().zzb().zzb("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.measurement.internal.zzgo
    public final void zzaz() {
        zzg();
        SecureRandom secureRandom = new SecureRandom();
        ?? nextLong = secureRandom.nextLong();
        char c = nextLong;
        if (nextLong == 0) {
            ?? nextLong2 = secureRandom.nextLong();
            c = nextLong2;
            if (nextLong2 == 0) {
                C1676a.m4786k(this.zzs, "Utils falling back to Random for random id");
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
            nextLong = new Random(System.nanoTime() ^ this.zzs.zzay().currentTimeMillis()).nextLong();
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
                    str2 = null;
                    str = null;
                    str3 = null;
                    str4 = null;
                }
                if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(str4)) {
                    bundle.putString("campaign", str4);
                }
                if (!TextUtils.isEmpty(str3)) {
                    bundle.putString("source", str3);
                }
                if (!TextUtils.isEmpty(str2)) {
                    bundle.putString("medium", str2);
                }
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("gclid", str);
                }
                String queryParameter = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("term", queryParameter);
                }
                String queryParameter2 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString(AppLovinEventTypes.USER_VIEWED_CONTENT, queryParameter2);
                }
                String queryParameter3 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("aclid", queryParameter3);
                }
                String queryParameter4 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("cp1", queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("anid", queryParameter5);
                }
                return bundle;
            } catch (UnsupportedOperationException e) {
                this.zzs.zzau().zze().zzb("Install referrer url isn't a hierarchical URI", e);
                return null;
            }
        }
        return null;
    }

    public final boolean zzj(String str, String str2) {
        if (str2 == null) {
            this.zzs.zzau().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.zzs.zzau().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.zzs.zzau().zzd().zzc("Name must start with a letter. Type, name", str, str2);
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
                    this.zzs.zzau().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i + Character.charCount(codePointAt2);
            }
        }
    }

    public final boolean zzk(String str, String str2) {
        if (str2 == null) {
            this.zzs.zzau().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.zzs.zzau().zzd().zzb("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            int i = codePointAt;
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt != 95) {
                    this.zzs.zzau().zzd().zzc("Name must start with a letter or _ (underscore). Type, name", str, str2);
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
                    this.zzs.zzau().zzd().zzc("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i2 + Character.charCount(codePointAt2);
            }
        }
    }

    public final boolean zzl(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.zzs.zzau().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.checkNotNull(str2);
        String[] strArr3 = zzb;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.zzs.zzau().zzd().zzc("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !zzas(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && zzas(str2, strArr2)) {
            return true;
        }
        this.zzs.zzau().zzd().zzc("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final boolean zzm(String str, int i, String str2) {
        if (str2 == null) {
            this.zzs.zzau().zzd().zzb("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            this.zzs.zzau().zzd().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    public final int zzn(String str) {
        if (!zzk("event", str)) {
            return 2;
        }
        if (!zzl("event", zzgr.zza, zzgr.zzb, str)) {
            return 13;
        }
        this.zzs.zzc();
        return !zzm("event", 40, str) ? 2 : 0;
    }

    public final int zzo(String str) {
        if (!zzk("user property", str)) {
            return 6;
        }
        if (!zzl("user property", zzgt.zza, null, str)) {
            return 15;
        }
        this.zzs.zzc();
        return !zzm("user property", 24, str) ? 6 : 0;
    }

    public final int zzq(String str) {
        if (!zzj("event param", str)) {
            return 3;
        }
        if (!zzl("event param", null, null, str)) {
            return 14;
        }
        this.zzs.zzc();
        return !zzm("event param", 40, str) ? 3 : 0;
    }

    public final int zzr(String str) {
        if (!zzk("event param", str)) {
            return 3;
        }
        if (!zzl("event param", null, null, str)) {
            return 14;
        }
        this.zzs.zzc();
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
            this.zzs.zzau().zzh().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        }
        return true;
    }

    public final void zzz(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        int i2;
        if (bundle == null) {
            return;
        }
        this.zzs.zzc();
        Iterator it2 = new TreeSet(bundle.keySet()).iterator();
        int i3 = 0;
        while (it2.hasNext()) {
            String str4 = (String) it2.next();
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
                    this.zzs.zzau().zzh().zzd("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                    i2 = 22;
                } else {
                    i2 = zzD(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                }
                if (i2 != 0 && !"_ev".equals(str4)) {
                    zzI(bundle, i2, str4, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (zzh(str4) && !zzas(str4, zzgs.zzd)) {
                    int i4 = i3 + 1;
                    i3 = i4;
                    if (i4 > 0) {
                        this.zzs.zzau().zzd().zzc("Item cannot contain custom parameters", this.zzs.zzm().zzc(str2), this.zzs.zzm().zzf(bundle));
                        zzan(bundle, 23);
                        bundle.remove(str4);
                        i3 = i4;
                    }
                }
            }
        }
    }
}
