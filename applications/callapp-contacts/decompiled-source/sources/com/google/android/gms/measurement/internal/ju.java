package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
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
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.common.d;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.la;
import com.google.android.gms.internal.measurement.nc;
import com.mopub.mobileads.PangleAdapterConfiguration;
import io.objectbox.model.PropertyFlags;
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
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ju.class */
public final class ju extends fn {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f29913a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f29914b = {"firebase_", "google_", "ga_"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f29915c = {"_err"};

    /* renamed from: d  reason: collision with root package name */
    private SecureRandom f29916d;
    private int f;
    private Integer g = null;
    private final AtomicLong e = new AtomicLong(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ju(es esVar) {
        super(esVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0139  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.ju.a(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    public static long a(long j, long j2) {
        return (j + (j2 * Constants.MINUTE_IN_MILLIS)) / 86400000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(byte[] bArr) {
        o.a(bArr);
        int length = bArr.length;
        int i = 0;
        o.a(length > 0);
        long j = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            j += (bArr[i2] & 255) << i;
            i += 8;
        }
        return j;
    }

    private final Object a(int i, Object obj, boolean z, boolean z2) {
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
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                return a(String.valueOf(obj), i, z);
            }
            if (!z2) {
                return null;
            }
            if (!((obj instanceof Bundle[]) || (obj instanceof Parcelable[]))) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : (Parcelable[]) obj) {
                if (parcelable instanceof Bundle) {
                    Bundle a2 = a((Bundle) parcelable);
                    if (!a2.isEmpty()) {
                        arrayList.add(a2);
                    }
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    public static String a(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    public static ArrayList<Bundle> a(List<zzaa> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzaa zzaaVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, zzaaVar.zza);
            bundle.putString("origin", zzaaVar.zzb);
            bundle.putLong("creation_timestamp", zzaaVar.zzd);
            bundle.putString("name", zzaaVar.zzc.zzb);
            fp.a(bundle, zzaaVar.zzc.zza());
            bundle.putBoolean("active", zzaaVar.zze);
            String str = zzaaVar.zzf;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzas zzasVar = zzaaVar.zzg;
            if (zzasVar != null) {
                bundle.putString("timed_out_event_name", zzasVar.zza);
                zzaq zzaqVar = zzaaVar.zzg.zzb;
                if (zzaqVar != null) {
                    bundle.putBundle("timed_out_event_params", zzaqVar.zzf());
                }
            }
            bundle.putLong("trigger_timeout", zzaaVar.zzh);
            zzas zzasVar2 = zzaaVar.zzi;
            if (zzasVar2 != null) {
                bundle.putString("triggered_event_name", zzasVar2.zza);
                zzaq zzaqVar2 = zzaaVar.zzi.zzb;
                if (zzaqVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzaqVar2.zzf());
                }
            }
            bundle.putLong("triggered_timestamp", zzaaVar.zzc.zzc);
            bundle.putLong("time_to_live", zzaaVar.zzj);
            zzas zzasVar3 = zzaaVar.zzk;
            if (zzasVar3 != null) {
                bundle.putString("expired_event_name", zzasVar3.zza);
                zzaq zzaqVar3 = zzaaVar.zzk.zzb;
                if (zzaqVar3 != null) {
                    bundle.putBundle("expired_event_params", zzaqVar3.zzf());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    private void a(Bundle bundle, int i, String str, Object obj) {
        if (a(bundle, i)) {
            bundle.putString("_ev", a(str, 40, true));
            if (obj != null) {
                o.a(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    private void a(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        int i2;
        if (bundle != null) {
            int i3 = 0;
            for (String str4 : new TreeSet(bundle.keySet())) {
                if (list == null || !list.contains(str4)) {
                    int h = z ? h(str4) : 0;
                    i = h;
                    if (h == 0) {
                        i = i(str4);
                    }
                } else {
                    i = 0;
                }
                if (i != 0) {
                    a(bundle, i, str4, i == 3 ? str4 : null);
                    bundle.remove(str4);
                } else {
                    if (a(bundle.get(str4))) {
                        this.t.c().h.a("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                        i2 = 22;
                    } else {
                        i2 = a(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                    }
                    if (i2 != 0 && !"_ev".equals(str4)) {
                        a(bundle, i2, str4, bundle.get(str4));
                        bundle.remove(str4);
                    } else if (a(str4) && !a(str4, fr.f29655d)) {
                        int i4 = i3 + 1;
                        i3 = i4;
                        if (i4 > 0) {
                            this.t.c().e.a("Item cannot contain custom parameters", this.t.h().a(str2), this.t.h().a(bundle));
                            a(bundle, 23);
                            bundle.remove(str4);
                            i3 = i4;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context) {
        o.a(context);
        return Build.VERSION.SDK_INT >= 24 ? b(context, "com.google.android.gms.measurement.AppMeasurementJobService") : b(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    private static boolean a(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        o.a(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            o.a(str);
            return !str.equals(str2);
        } else if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        } else {
            if (isEmpty) {
                return TextUtils.isEmpty(str3) || !str3.equals(str4);
            }
            if (TextUtils.isEmpty(str4)) {
                return false;
            }
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
    }

    private static boolean a(String str, String[] strArr) {
        o.a(strArr);
        for (String str2 : strArr) {
            if (c(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(Parcelable parcelable) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Context context) {
        ActivityInfo receiverInfo;
        o.a(context);
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

    private static boolean b(Context context, String str) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean g(String str) {
        return !f29915c[0].equals(str);
    }

    private int h(String str) {
        if (!a("event param", str)) {
            return 3;
        }
        if (!a("event param", (String[]) null, (String[]) null, str)) {
            return 14;
        }
        return !a("event param", 40, str) ? 3 : 0;
    }

    private int i(String str) {
        if (!b("event param", str)) {
            return 3;
        }
        if (!a("event param", (String[]) null, (String[]) null, str)) {
            return 14;
        }
        return !a("event param", 40, str) ? 3 : 0;
    }

    private final int j(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return !"_id".equals(str) ? (!this.t.g.d(null, dc.ae) || !"_lgclid".equals(str)) ? 36 : 100 : PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    private static boolean k(String str) {
        o.a(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MessageDigest m() {
        MessageDigest instance;
        for (int i = 0; i < 2; i++) {
            try {
                instance = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
            }
            if (instance != null) {
                return instance;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle a(Uri uri) {
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
                bundle.putString(Payload.SOURCE, str3);
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
                bundle.putString(com.mopub.common.Constants.VAST_TRACKER_CONTENT, queryParameter2);
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
            this.t.c().f.a("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object a2 = a(str, bundle.get(str));
                if (a2 == null) {
                    this.t.c().h.a("Param value can't be null", this.t.h().b(str));
                } else {
                    a(bundle2, str, a2);
                }
            }
        }
        return bundle2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle a(String str, String str2, Bundle bundle, List<String> list, boolean z) {
        int i;
        boolean a2 = a(str2, fq.f29651d);
        Bundle bundle2 = new Bundle(bundle);
        int P_ = this.t.g.P_();
        int i2 = 0;
        for (String str3 : this.t.g.d(str, dc.W) ? new TreeSet<>(bundle.keySet()) : bundle.keySet()) {
            if (list == null || !list.contains(str3)) {
                int h = z ? h(str3) : 0;
                i = h;
                if (h == 0) {
                    i = i(str3);
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                a(bundle2, i, str3, i == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int a3 = a(str, str2, str3, bundle.get(str3), bundle2, list, z, a2);
                if (a3 == 17) {
                    a(bundle2, 17, str3, Boolean.FALSE);
                } else if (a3 != 0 && !"_ev".equals(str3)) {
                    a(bundle2, a3, a3 == 21 ? str2 : str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (a(str3)) {
                    i2++;
                    if (i2 > P_) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Event can't contain more than ");
                        sb.append(P_);
                        sb.append(" params");
                        this.t.c().e.a(sb.toString(), this.t.h().a(str2), this.t.h().a(bundle));
                        a(bundle2, 5);
                        bundle2.remove(str3);
                    }
                }
            }
        }
        return bundle2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzas a(String str, String str2, Bundle bundle, String str3, long j, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (b(str2) == 0) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            Bundle a2 = a(str, str2, bundle2, Collections.singletonList("_o"), false);
            Bundle bundle3 = a2;
            if (z) {
                bundle3 = a(a2);
            }
            o.a(bundle3);
            return new zzas(str2, new zzaq(bundle3), str3, j);
        }
        this.t.c().f29506c.a("Invalid conditional property event name", this.t.h().c(str2));
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object a(String str, Object obj) {
        boolean equals = "_ev".equals(str);
        int i = PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        if (equals) {
            return a(PropertyFlags.INDEX_PARTIAL_SKIP_NULL, obj, true, true);
        }
        if (!e(str)) {
            i = 100;
        }
        return a(i, obj, false, true);
    }

    public final URL a(String str, String str2, long j) {
        try {
            o.a(str2);
            o.a(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 39065L, Integer.valueOf(n())), str2, str, Long.valueOf(j));
            String str3 = format;
            if (str.equals(this.t.g.d("debug.deferred.deeplink"))) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            this.t.c().f29506c.a("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.t.c().f.a("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle, Bundle bundle2) {
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                if (!bundle.containsKey(str)) {
                    this.t.g().a(bundle, str, bundle2.get(str));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle, String str, Object obj) {
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (obj instanceof Bundle[]) {
                bundle.putParcelableArray(str, (Bundle[]) obj);
            } else if (str != null) {
                this.t.c().h.a("Not putting event parameter. Invalid value type. name, type", this.t.h().b(str), obj != null ? obj.getClass().getSimpleName() : null);
            }
        }
    }

    public final void a(nc ncVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.t.c().f.a("Error returning int value to wrapper", e);
        }
    }

    public final void a(nc ncVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.t.c().f.a("Error returning long value to wrapper", e);
        }
    }

    public final void a(nc ncVar, Bundle bundle) {
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.t.c().f.a("Error returning bundle value to wrapper", e);
        }
    }

    public final void a(nc ncVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.t.c().f.a("Error returning string value to wrapper", e);
        }
    }

    public final void a(nc ncVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.t.c().f.a("Error returning bundle list to wrapper", e);
        }
    }

    public final void a(nc ncVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.t.c().f.a("Error returning boolean value to wrapper", e);
        }
    }

    public final void a(nc ncVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            ncVar.a(bundle);
        } catch (RemoteException e) {
            this.t.c().f.a("Error returning byte array to wrapper", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(dp dpVar, int i) {
        int i2 = 0;
        for (String str : new TreeSet(dpVar.f29511d.keySet())) {
            if (a(str)) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    StringBuilder sb = new StringBuilder(48);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    this.t.c().e.a(sb.toString(), this.t.h().a(dpVar.f29508a), this.t.h().a(dpVar.f29511d));
                    a(dpVar.f29511d, 5);
                    dpVar.f29511d.remove(str);
                    i2 = i3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(jt jtVar, String str, int i, String str2, String str3, int i2, boolean z) {
        Bundle bundle = new Bundle();
        a(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        if (z) {
            jtVar.a(str, bundle);
        } else {
            this.t.f().a("auto", "_err", bundle);
        }
    }

    @Override // com.google.android.gms.measurement.internal.fn
    protected final boolean a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo b2 = c.a(context).b(str, 64);
            if (b2 == null || b2.signatures == null || b2.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b2.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            this.t.c().f29506c.a("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.t.c().f29506c.a("Error obtaining certificate", e2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, int i, String str2) {
        if (str2 == null) {
            this.t.c().e.a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            this.t.c().e.a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, String str2) {
        if (str2 == null) {
            this.t.c().e.a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.t.c().e.a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.t.c().e.a("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    this.t.c().e.a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, String str2, int i, Object obj) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            return false;
        }
        String valueOf = String.valueOf(obj);
        if (valueOf.codePointCount(0, valueOf.length()) <= i) {
            return true;
        }
        this.t.c().h.a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            la.b();
            if (this.t.g.d(null, dc.ag) && !TextUtils.isEmpty(str3)) {
                return true;
            }
            if (!TextUtils.isEmpty(str2)) {
                if (k(str2)) {
                    return true;
                }
                this.t.c().e.a("Invalid admob_app_id. Analytics disabled.", Cdo.a(str2));
                return false;
            } else if (!TextUtils.isEmpty(this.t.f29584b)) {
                return false;
            } else {
                this.t.c().e.a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
                return false;
            }
        } else if (k(str)) {
            return true;
        } else {
            if (!TextUtils.isEmpty(this.t.f29584b)) {
                return false;
            }
            this.t.c().e.a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", Cdo.a(str));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.t.c().e.a("Name is required and can't be null. Type", str);
            return false;
        }
        o.a(str2);
        String[] strArr3 = f29914b;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.t.c().e.a("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !a(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && a(str2, strArr2)) {
            return true;
        }
        this.t.c().e.a("Name is reserved. Type, name", str, str2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(String str) {
        if (!b("event", str)) {
            return 2;
        }
        if (!a("event", fq.f29648a, fq.f29649b, str)) {
            return 13;
        }
        return !a("event", 40, str) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(String str, Object obj) {
        return "_ldl".equals(str) ? a("user property referrer", str, j(str), obj) : a("user property", str, j(str), obj) ? 0 : 7;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.measurement.internal.fn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void b() {
        /*
            r5 = this;
            r0 = r5
            r0.S_()
            java.security.SecureRandom r0 = new java.security.SecureRandom
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            long r0 = r0.nextLong()
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003b
            r0 = r6
            long r0 = r0.nextLong()
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003b
            r0 = r5
            com.google.android.gms.measurement.internal.es r0 = r0.t
            com.google.android.gms.measurement.internal.do r0 = r0.c()
            com.google.android.gms.measurement.internal.dm r0 = r0.f
            java.lang.String r1 = "Utils falling back to Random for random id"
            r0.a(r1)
            r0 = r7
            r9 = r0
        L_0x003b:
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.e
            r1 = r9
            r0.set(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.ju.b():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str, String str2) {
        if (str2 == null) {
            this.t.c().e.a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.t.c().e.a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            int i = codePointAt;
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt == 95) {
                    i = 95;
                } else {
                    this.t.c().e.a("Name must start with a letter or _ (underscore). Type, name", str, str2);
                    return false;
                }
            }
            int length = str2.length();
            int charCount = Character.charCount(i);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    this.t.c().e.a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c(String str) {
        if (!b("user property", str)) {
            return 6;
        }
        if (!a("user property", fs.f29656a, (String[]) null, str)) {
            return 15;
        }
        return !a("user property", 24, str) ? 6 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object c(String str, Object obj) {
        return "_ldl".equals(str) ? a(j(str), obj, true, false) : a(j(str), obj, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(String str) {
        S_();
        if (c.a(this.t.f29583a).a(str) == 0) {
            return true;
        }
        this.t.c().j.a("Permission not granted", str);
        return false;
    }

    public final long e() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.e.get() == 0) {
            synchronized (this.e) {
                nextLong = new Random(System.nanoTime() ^ this.t.j.a()).nextLong();
                int i = this.f + 1;
                this.f = i;
                j = i;
            }
            return nextLong + j;
        }
        synchronized (this.e) {
            this.e.compareAndSet(-1L, 1L);
            andIncrement = this.e.getAndIncrement();
        }
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.t.g.d("debug.firebase.analytics.app").equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @EnsuresNonNull({"this.secureRandom"})
    public final SecureRandom l() {
        S_();
        if (this.f29916d == null) {
            this.f29916d = new SecureRandom();
        }
        return this.f29916d;
    }

    @EnsuresNonNull({"this.apkVersion"})
    public final int n() {
        if (this.g == null) {
            com.google.android.gms.common.c.b();
            this.g = Integer.valueOf(com.google.android.gms.common.c.c(this.t.f29583a) / 1000);
        }
        return this.g.intValue();
    }

    public final int o() {
        return com.google.android.gms.common.c.b().b(this.t.f29583a, d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }
}
