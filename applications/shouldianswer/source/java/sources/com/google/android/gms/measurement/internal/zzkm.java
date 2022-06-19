package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
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
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkm.class */
public final class zzkm extends zzgu {
    private static final String[] zza = {"firebase_", "google_", "ga_"};
    private SecureRandom zzb;
    private int zzd;
    private Integer zze = null;
    private final AtomicLong zzc = new AtomicLong(0);

    public zzkm(zzga zzgaVar) {
        super(zzgaVar);
    }

    public static long zza(long j, long j2) {
        return (j + (j2 * 60000)) / 86400000;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    public static long zza(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        int i = 0;
        Preconditions.checkState(bArr.length > 0);
        char c = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            c += (bArr[length] & 255) << i;
            i += 8;
        }
        return c;
    }

    public static Bundle zza(List<zzkl> list) {
        Bundle bundle = new Bundle();
        if (list == null) {
            return bundle;
        }
        for (zzkl zzklVar : list) {
            if (zzklVar.zzd != null) {
                bundle.putString(zzklVar.zza, zzklVar.zzd);
            } else if (zzklVar.zzc != null) {
                bundle.putLong(zzklVar.zza, zzklVar.zzc.longValue());
            } else if (zzklVar.zzf != null) {
                bundle.putDouble(zzklVar.zza, zzklVar.zzf.doubleValue());
            }
        }
        return bundle;
    }

    private static Object zza(int i, Object obj, boolean z) {
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
            return Long.valueOf((((Boolean) obj).booleanValue() ? 1 : null) == 1 ? 1L : 0L);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return null;
            }
            return zza(String.valueOf(obj), i, z);
        }
    }

    public static String zza(String str, int i, boolean z) {
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

    private static void zza(Bundle bundle, Object obj) {
        Preconditions.checkNotNull(bundle);
        if (obj != null) {
            if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
                return;
            }
            bundle.putLong("_el", String.valueOf(obj).length());
        }
    }

    public static boolean zza(Context context, boolean z) {
        Preconditions.checkNotNull(context);
        return Build.VERSION.SDK_INT >= 24 ? zzb(context, "com.google.android.gms.measurement.AppMeasurementJobService") : zzb(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static boolean zza(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    private static boolean zza(Bundle bundle, int i) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            return true;
        }
        return false;
    }

    public static boolean zza(Boolean bool, Boolean bool2) {
        if (bool == null && bool2 == null) {
            return true;
        }
        if (bool != null) {
            return bool.equals(bool2);
        }
        return false;
    }

    public static boolean zza(String str) {
        Preconditions.checkNotEmpty(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    private final boolean zza(String str, String str2, int i, Object obj, boolean z) {
        Parcelable[] parcelableArr;
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                String valueOf = String.valueOf(obj);
                if (valueOf.codePointCount(0, valueOf.length()) <= i) {
                    return true;
                }
                zzr().zzk().zza("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                return false;
            } else if ((obj instanceof Bundle) && z) {
                return true;
            } else {
                if ((obj instanceof Parcelable[]) && z) {
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (!(parcelable instanceof Bundle)) {
                            zzr().zzk().zza("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                } else if (!(obj instanceof ArrayList) || !z) {
                    return false;
                } else {
                    ArrayList arrayList = (ArrayList) obj;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj2 = arrayList.get(i2);
                        i2++;
                        if (!(obj2 instanceof Bundle)) {
                            zzr().zzk().zza("All ArrayList elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        return true;
    }

    public static boolean zza(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            return !str.equals(str2);
        } else if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        } else if (isEmpty || !isEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        } else if (TextUtils.isEmpty(str4)) {
            return false;
        } else {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
    }

    public static boolean zza(List<String> list, List<String> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list != null) {
            return list.equals(list2);
        }
        return false;
    }

    public static byte[] zza(Parcelable parcelable) {
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

    public static Bundle[] zza(Object obj) {
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            return (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        } else if (!(obj instanceof ArrayList)) {
            return null;
        } else {
            ArrayList arrayList = (ArrayList) obj;
            return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    public static Bundle zzb(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str, new Bundle((Bundle) obj));
            } else {
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i = 0; i < parcelableArr.length; i++) {
                        if (parcelableArr[i] instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelableArr[i]);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
        }
        return bundle2;
    }

    public static ArrayList<Bundle> zzb(List<zzv> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzv zzvVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzvVar.zza);
            bundle.putString("origin", zzvVar.zzb);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, zzvVar.zzd);
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, zzvVar.zzc.zza);
            zzgw.zza(bundle, zzvVar.zzc.zza());
            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, zzvVar.zze);
            if (zzvVar.zzf != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzvVar.zzf);
            }
            if (zzvVar.zzg != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, zzvVar.zzg.zza);
                if (zzvVar.zzg.zzb != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, zzvVar.zzg.zzb.zzb());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, zzvVar.zzh);
            if (zzvVar.zzi != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, zzvVar.zzi.zza);
                if (zzvVar.zzi.zzb != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, zzvVar.zzi.zzb.zzb());
                }
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, zzvVar.zzc.zzb);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, zzvVar.zzj);
            if (zzvVar.zzk != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, zzvVar.zzk.zza);
                if (zzvVar.zzk.zzb != null) {
                    bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, zzvVar.zzk.zzb.zzb());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    private static boolean zzb(Context context, String str) {
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

    private final boolean zzc(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo == null || packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfo.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            zzr().zzf().zza("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            zzr().zzf().zza("Error obtaining certificate", e2);
            return true;
        }
    }

    public static boolean zzc(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str != null) {
            return str.equals(str2);
        }
        return false;
    }

    public static boolean zze(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith(AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    private static boolean zzg(String str) {
        Preconditions.checkNotNull(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    private static int zzh(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return "_id".equals(str) ? 256 : 36;
    }

    public static MessageDigest zzi() {
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

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.measurement.internal.zzgu
    /* renamed from: f_ */
    protected final void mo3771f_() {
        zzd();
        SecureRandom secureRandom = new SecureRandom();
        ?? nextLong = secureRandom.nextLong();
        char c = nextLong;
        if (nextLong == 0) {
            ?? nextLong2 = secureRandom.nextLong();
            c = nextLong2;
            if (nextLong2 == 0) {
                zzr().zzi().zza("Utils falling back to Random for random id");
                c = nextLong2;
            }
        }
        this.zzc.set(c);
    }

    public final int zza(int i) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(zzn(), GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0086 -> B:17:0x0094). Please submit an issue!!! */
    public final long zza(Context context, String str) {
        zzd();
        Preconditions.checkNotNull(context);
        Preconditions.checkNotEmpty(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest zzi = zzi();
        char c = 65535;
        if (zzi == null) {
            zzr().zzf().zza("Could not get MD5 instance");
        } else {
            if (packageManager != null) {
                try {
                } catch (PackageManager.NameNotFoundException e) {
                    zzr().zzf().zza("Package name not found", e);
                }
                if (!zzc(context, str)) {
                    PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(zzn().getPackageName(), 64);
                    if (packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                        zzr().zzi().zza("Could not get signatures");
                    } else {
                        c = zza(zzi.digest(packageInfo.signatures[0].toByteArray()));
                    }
                }
            }
            c = 0;
        }
        return c;
    }

    public final Bundle zza(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str4 = uri.getQueryParameter("utm_campaign");
                str3 = uri.getQueryParameter("utm_source");
                str2 = uri.getQueryParameter("utm_medium");
                str = uri.getQueryParameter("gclid");
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
            }
            if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString(FirebaseAnalytics.Param.CAMPAIGN, str4);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString(FirebaseAnalytics.Param.SOURCE, str3);
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
            zzr().zzi().zza("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    public final Bundle zza(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object zza2 = zza(str, bundle.get(str));
                if (zza2 == null) {
                    zzr().zzk().zza("Param value can't be null", zzo().zzb(str));
                } else {
                    zza(bundle2, str, zza2);
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ac, code lost:
        if (zza("event param", 40, r0) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00eb, code lost:
        if (zza("event param", 40, r0) == false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0226 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zza(java.lang.String r8, java.lang.String r9, android.os.Bundle r10, java.util.List<java.lang.String> r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkm.zza(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean, boolean):android.os.Bundle");
    }

    public final zzan zza(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (zzb(str2) != 0) {
            zzr().zzf().zza("Invalid conditional property event name", zzo().zzc(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        return new zzan(str2, new zzam(zza(zza(str, str2, bundle2, CollectionUtils.listOf("_o"), false, false))), str3, j);
    }

    public final Object zza(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            return zza(256, obj, true);
        }
        if (!zze(str)) {
            i = 100;
        }
        return zza(i, obj, false);
    }

    public final URL zza(long j, String str, String str2, long j2) {
        try {
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", Long.valueOf(j), Integer.valueOf(zzj())), str2, str, Long.valueOf(j2));
            String str3 = format;
            if (str.equals(zzt().zzw())) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            zzr().zzf().zza("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(int i, String str, String str2, int i2) {
        zza((String) null, i, str, str2, i2);
    }

    public final void zza(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            zzr().zzi().zza("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    public final void zza(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (str == null) {
        } else {
            zzr().zzk().zza("Not putting event parameter. Invalid value type. name, type", zzo().zzb(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void zza(zzn zznVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zzx.zzr().zzi().zza("Error returning int value to wrapper", e);
        }
    }

    public final void zza(zzn zznVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zzx.zzr().zzi().zza("Error returning long value to wrapper", e);
        }
    }

    public final void zza(zzn zznVar, Bundle bundle) {
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zzx.zzr().zzi().zza("Error returning bundle value to wrapper", e);
        }
    }

    public final void zza(zzn zznVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zzx.zzr().zzi().zza("Error returning string value to wrapper", e);
        }
    }

    public final void zza(zzn zznVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zzx.zzr().zzi().zza("Error returning bundle list to wrapper", e);
        }
    }

    public final void zza(zzn zznVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zzx.zzr().zzi().zza("Error returning boolean value to wrapper", e);
        }
    }

    public final void zza(zzn zznVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zznVar.zza(bundle);
        } catch (RemoteException e) {
            this.zzx.zzr().zzi().zza("Error returning byte array to wrapper", e);
        }
    }

    public final void zza(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        zza(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        this.zzx.zzu();
        this.zzx.zzh().zza("auto", "_err", bundle);
    }

    public final boolean zza(String str, double d) {
        try {
            SharedPreferences.Editor edit = zzn().getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
            edit.putString("deeplink", str);
            edit.putLong("timestamp", Double.doubleToRawLongBits(d));
            return edit.commit();
        } catch (Exception e) {
            zzr().zzf().zza("Failed to persist Deferred Deep Link. exception", e);
            return false;
        }
    }

    public final boolean zza(String str, int i, String str2) {
        if (str2 == null) {
            zzr().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            zzr().zzh().zza("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    public final boolean zza(String str, String str2) {
        if (str2 == null) {
            zzr().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzr().zzh().zza("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                zzr().zzh().zza("Name must start with a letter. Type, name", str, str2);
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
                    zzr().zzh().zza("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i + Character.charCount(codePointAt2);
            }
        }
    }

    public final boolean zza(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (zzg(str)) {
                return true;
            }
            if (!this.zzx.zzl()) {
                return false;
            }
            zzr().zzh().zza("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzew.zza(str));
            return false;
        } else if (zzle.zzb() && zzt().zza(zzap.zzcc) && !TextUtils.isEmpty(str3)) {
            return true;
        } else {
            if (!TextUtils.isEmpty(str2)) {
                if (zzg(str2)) {
                    return true;
                }
                zzr().zzh().zza("Invalid admob_app_id. Analytics disabled.", zzew.zza(str2));
                return false;
            } else if (!this.zzx.zzl()) {
                return false;
            } else {
                zzr().zzh().zza("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
                return false;
            }
        }
    }

    public final boolean zza(String str, String[] strArr, String str2) {
        boolean z;
        boolean z2;
        if (str2 == null) {
            zzr().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.checkNotNull(str2);
        String[] strArr2 = zza;
        int length = strArr2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (str2.startsWith(strArr2[i])) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            zzr().zzh().zza("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        } else if (strArr == null) {
            return true;
        } else {
            Preconditions.checkNotNull(strArr);
            int length2 = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    z2 = false;
                    break;
                } else if (zzc(str2, strArr[i2])) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z2) {
                return true;
            }
            zzr().zzh().zza("Name is reserved. Type, name", str, str2);
            return false;
        }
    }

    public final int zzb(String str) {
        if (!zzb("event", str)) {
            return 2;
        }
        if (!zza("event", zzgv.zza, str)) {
            return 13;
        }
        return !zza("event", 40, str) ? 2 : 0;
    }

    public final int zzb(String str, Object obj) {
        return "_ldl".equals(str) ? zza("user property referrer", str, zzh(str), obj, false) : zza("user property", str, zzh(str), obj, false) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final boolean zzb(String str, String str2) {
        if (str2 == null) {
            zzr().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzr().zzh().zza("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt) && codePointAt != 95) {
                zzr().zzh().zza("Name must start with a letter or _ (underscore). Type, name", str, str2);
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
                    zzr().zzh().zza("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i + Character.charCount(codePointAt2);
            }
        }
    }

    public final int zzc(String str) {
        if (!zzb("user property", str)) {
            return 6;
        }
        if (!zza("user property", zzgx.zza, str)) {
            return 15;
        }
        return !zza("user property", 24, str) ? 6 : 0;
    }

    public final Object zzc(String str, Object obj) {
        return "_ldl".equals(str) ? zza(zzh(str), obj, true) : zza(zzh(str), obj, false);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final boolean zzd(String str) {
        zzd();
        if (Wrappers.packageManager(zzn()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzr().zzw().zza("Permission not granted", str);
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzgu
    protected final boolean zze() {
        return true;
    }

    public final boolean zzf(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String zzv = zzt().zzv();
        zzu();
        return zzv.equals(str);
    }

    public final long zzg() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.zzc.get() != 0) {
            synchronized (this.zzc) {
                this.zzc.compareAndSet(-1L, 1L);
                andIncrement = this.zzc.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.zzc) {
            nextLong = new Random(System.nanoTime() ^ zzm().currentTimeMillis()).nextLong();
            int i = this.zzd + 1;
            this.zzd = i;
            j = i;
        }
        return nextLong + j;
    }

    public final SecureRandom zzh() {
        zzd();
        if (this.zzb == null) {
            this.zzb = new SecureRandom();
        }
        return this.zzb;
    }

    public final int zzj() {
        if (this.zze == null) {
            this.zze = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(zzn()) / 1000);
        }
        return this.zze.intValue();
    }

    public final String zzk() {
        byte[] bArr = new byte[16];
        zzh().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    public final boolean zzv() {
        try {
            zzn().getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
