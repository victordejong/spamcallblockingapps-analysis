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
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzlz;
import com.google.android.gms.internal.measurement.zznv;
import com.google.android.gms.internal.measurement.zzw;
import com.inmobi.ads.C8302r;
import com.integralads.avid.library.mopub.AvidBridge;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.mopub.common.privacy.AdvertisingId;
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
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4840v7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkv.class */
public final class zzkv extends AbstractC4747l4 {

    /* renamed from: g */
    public static final String[] f30148g = {"firebase_", "google_", "ga_"};

    /* renamed from: h */
    public static final String[] f30149h = {"_err"};

    /* renamed from: c */
    public SecureRandom f30150c;

    /* renamed from: e */
    public int f30152e;

    /* renamed from: f */
    public Integer f30153f = null;

    /* renamed from: d */
    public final AtomicLong f30151d = new AtomicLong(0);

    public zzkv(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public static long m8742a(long j, long j2) {
        return (j + (j2 * 60000)) / AdvertisingId.ONE_DAY_MS;
    }

    /* renamed from: a */
    public static long m8720a(zzap zzapVar) {
        long j = 0;
        if (zzapVar == null) {
            return 0L;
        }
        Iterator<String> it = zzapVar.iterator();
        while (it.hasNext()) {
            Object a = zzapVar.m9293a(it.next());
            if (a instanceof Parcelable[]) {
                j += ((Parcelable[]) a).length;
            }
        }
        return j;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static long m8697a(byte[] bArr) {
        Preconditions.m17288a(bArr);
        int i = 0;
        Preconditions.m17280b(bArr.length > 0);
        long j = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j += (bArr[length] & 255) << i;
            i += 8;
        }
        return j;
    }

    /* renamed from: a */
    public static Bundle m8699a(List<zzku> list) {
        Bundle bundle = new Bundle();
        if (list == null) {
            return bundle;
        }
        for (zzku zzkuVar : list) {
            String str = zzkuVar.f30145e;
            if (str != null) {
                bundle.putString(zzkuVar.f30142b, str);
            } else {
                Long l = zzkuVar.f30144d;
                if (l != null) {
                    bundle.putLong(zzkuVar.f30142b, l.longValue());
                } else {
                    Double d = zzkuVar.f30147g;
                    if (d != null) {
                        bundle.putDouble(zzkuVar.f30142b, d.doubleValue());
                    }
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public static String m8713a(String str, int i, boolean z) {
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

    /* renamed from: a */
    public static void m8734a(Bundle bundle, int i, String str, String str2, Object obj) {
        if (m8694b(bundle, i)) {
            bundle.putString("_ev", m8713a(str, 40, true));
            if (obj != null) {
                Preconditions.m17288a(bundle);
                if (obj == null) {
                    return;
                }
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m8739a(Context context, boolean z) {
        Preconditions.m17288a(context);
        return Build.VERSION.SDK_INT >= 24 ? m8688c(context, "com.google.android.gms.measurement.AppMeasurementJobService") : m8688c(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* renamed from: a */
    public static boolean m8738a(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    /* renamed from: a */
    public static boolean m8735a(Bundle bundle, int i) {
        int i2 = 0;
        if (bundle.size() <= i) {
            return false;
        }
        for (String str : new TreeSet(bundle.keySet())) {
            int i3 = i2 + 1;
            i2 = i3;
            if (i3 > i) {
                bundle.remove(str);
                i2 = i3;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m8718a(Boolean bool, Boolean bool2) {
        if (bool == null && bool2 == null) {
            return true;
        }
        if (bool == null) {
            return false;
        }
        return bool.equals(bool2);
    }

    /* renamed from: a */
    public static boolean m8717a(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* renamed from: a */
    public static boolean m8704a(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            return !str.equals(str2);
        }
        if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (isEmpty || !isEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    /* renamed from: a */
    public static boolean m8702a(String str, String[] strArr) {
        Preconditions.m17288a(strArr);
        for (String str2 : strArr) {
            if (m8685c(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m8698a(List<String> list, List<String> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null) {
            return false;
        }
        return list.equals(list2);
    }

    /* renamed from: a */
    public static byte[] m8730a(Parcelable parcelable) {
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

    /* renamed from: b */
    public static Bundle m8695b(Bundle bundle) {
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

    /* renamed from: b */
    public static ArrayList<Bundle> m8689b(List<zzz> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzz zzzVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzzVar.f30178a);
            bundle.putString("origin", zzzVar.f30179b);
            bundle.putLong("creation_timestamp", zzzVar.f30181d);
            bundle.putString("name", zzzVar.f30180c.f30142b);
            zzgs.m9013a(bundle, zzzVar.f30180c.zza());
            bundle.putBoolean(AvidBridge.APP_STATE_ACTIVE, zzzVar.f30182e);
            String str = zzzVar.f30183f;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzaq zzaqVar = zzzVar.f30184g;
            if (zzaqVar != null) {
                bundle.putString("timed_out_event_name", zzaqVar.f29812a);
                zzap zzapVar = zzzVar.f30184g.f29813b;
                if (zzapVar != null) {
                    bundle.putBundle("timed_out_event_params", zzapVar.zzb());
                }
            }
            bundle.putLong("trigger_timeout", zzzVar.f30185h);
            zzaq zzaqVar2 = zzzVar.f30186i;
            if (zzaqVar2 != null) {
                bundle.putString("triggered_event_name", zzaqVar2.f29812a);
                zzap zzapVar2 = zzzVar.f30186i.f29813b;
                if (zzapVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzapVar2.zzb());
                }
            }
            bundle.putLong("triggered_timestamp", zzzVar.f30180c.f30143c);
            bundle.putLong("time_to_live", zzzVar.f30187j);
            zzaq zzaqVar3 = zzzVar.f30188k;
            if (zzaqVar3 != null) {
                bundle.putString("expired_event_name", zzaqVar3.f29812a);
                zzap zzapVar3 = zzzVar.f30188k.f29813b;
                if (zzapVar3 != null) {
                    bundle.putBundle("expired_event_params", zzapVar3.zzb());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: b */
    public static boolean m8694b(Bundle bundle, int i) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    /* renamed from: b */
    public static Bundle[] m8693b(Object obj) {
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

    /* renamed from: c */
    public static boolean m8688c(Context context, String str) {
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

    /* renamed from: c */
    public static boolean m8685c(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    /* renamed from: g */
    public static boolean m8681g(String str) {
        Preconditions.m17281b(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* renamed from: h */
    public static boolean m8680h(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* renamed from: i */
    public static boolean m8678i(String str) {
        for (String str2 : f30149h) {
            if (str2.equals(str)) {
                return false;
            }
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: j */
    public static boolean m8677j(String str) {
        Preconditions.m17288a(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* renamed from: u */
    public static MessageDigest m8671u() {
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

    /* renamed from: a */
    public final int m8744a(int i) {
        return GoogleApiAvailabilityLight.m17812a().mo17809a(mo8846B(), GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    /* renamed from: a */
    public final int m8716a(String str) {
        if (!m8690b("user property", str)) {
            return 6;
        }
        if (!m8701a("user property", zzgx.f30045a, str)) {
            return 15;
        }
        return !m8714a("user property", 24, str) ? 6 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m8705a(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkv.m8705a(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* renamed from: a */
    public final int m8703a(String str, boolean z) {
        if (!m8690b("event", str)) {
            return 2;
        }
        if (z) {
            if (!m8700a("event", zzgv.f30041a, zzgv.f30042b, str)) {
                return 13;
            }
        } else if (!m8701a("event", zzgv.f30041a, str)) {
            return 13;
        }
        return !m8714a("event", 40, str) ? 2 : 0;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0086 -> B:17:0x0094). Please submit an issue!!! */
    /* renamed from: a */
    public final long m8740a(Context context, String str) {
        mo9085c();
        Preconditions.m17288a(context);
        Preconditions.m17281b(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest u = m8671u();
        long j = -1;
        if (u == null) {
            mo8789p().m9152q().m9143a("Could not get MD5 instance");
        } else {
            if (packageManager != null) {
                try {
                } catch (PackageManager.NameNotFoundException e) {
                    mo8789p().m9152q().m9142a("Package name not found", e);
                }
                if (!m8696b(context, str)) {
                    PackageInfo b = Wrappers.m17026b(context).m17028b(mo8846B().getPackageName(), 64);
                    if (b.signatures == null || b.signatures.length <= 0) {
                        mo8789p().m9149t().m9143a("Could not get signatures");
                    } else {
                        j = m8697a(u.digest(b.signatures[0].toByteArray()));
                    }
                }
            }
            j = 0;
        }
        return j;
    }

    /* renamed from: a */
    public final Bundle m8737a(Uri uri) {
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
                bundle.putString("content", queryParameter2);
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
            mo8789p().m9149t().m9142a("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    /* renamed from: a */
    public final Bundle m8736a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object a = m8712a(str, bundle.get(str));
                if (a == null) {
                    mo8789p().m9147v().m9142a("Param value can't be null", m24900e().m9168b(str));
                } else {
                    m8731a(bundle2, str, a);
                }
            }
        }
        return bundle2;
    }

    /* renamed from: a */
    public final Bundle m8708a(String str, String str2, Bundle bundle, List<String> list, boolean z, boolean z2) {
        Bundle bundle2;
        int i;
        boolean a = m8702a(str2, zzgv.f30044d);
        if (bundle != null) {
            Bundle bundle3 = new Bundle(bundle);
            int i2 = m24897h().m9338i();
            int i3 = 0;
            for (String str3 : m24897h().m9342e(str, zzas.f29856Z) ? new TreeSet<>(bundle.keySet()) : bundle.keySet()) {
                if (list == null || !list.contains(str3)) {
                    int d = z ? m8684d(str3) : 0;
                    i = d;
                    if (d == 0) {
                        i = m8683e(str3);
                    }
                } else {
                    i = 0;
                }
                if (i != 0) {
                    m8734a(bundle3, i, str3, str3, i == 3 ? str3 : null);
                    bundle3.remove(str3);
                    i3 = i3;
                } else {
                    int a2 = m8705a(str, str2, str3, bundle.get(str3), bundle3, list, z, a);
                    if (a2 == 17) {
                        m8734a(bundle3, a2, str3, str3, (Object) false);
                    } else if (a2 != 0 && !"_ev".equals(str3)) {
                        m8734a(bundle3, a2, a2 == 21 ? str2 : str3, str3, bundle.get(str3));
                        bundle3.remove(str3);
                        i3 = i3;
                    }
                    i3 = i3;
                    if (m8681g(str3)) {
                        i3++;
                        if (i3 > i2) {
                            StringBuilder sb = new StringBuilder(48);
                            sb.append("Event can't contain more than ");
                            sb.append(i2);
                            sb.append(" params");
                            mo8789p().m9150s().m9141a(sb.toString(), m24900e().m9171a(str2), m24900e().m9173a(bundle));
                            m8694b(bundle3, 5);
                            bundle3.remove(str3);
                        } else {
                            i3 = i3;
                        }
                    }
                }
            }
            bundle2 = bundle3;
        } else {
            bundle2 = null;
        }
        return bundle2;
    }

    /* renamed from: a */
    public final zzaq m8709a(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2, boolean z3) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (m8703a(str2, z3) == 0) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            Bundle a = m8708a(str, str2, bundle2, CollectionUtils.m17101a("_o"), false, false);
            Bundle bundle3 = a;
            if (z) {
                bundle3 = m8736a(a);
            }
            return new zzaq(str2, new zzap(bundle3), str3, j);
        }
        mo8789p().m9152q().m9142a("Invalid conditional property event name", m24900e().m9167c(str2));
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final Object m8743a(int i, Object obj, boolean z, boolean z2) {
        Parcelable[] parcelableArr;
        Bundle a;
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
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                return m8713a(String.valueOf(obj), i, z);
            }
            if (!z2) {
                return null;
            }
            if (!((obj instanceof Bundle[]) || (obj instanceof Parcelable[]))) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : (Parcelable[]) obj) {
                if ((parcelable instanceof Bundle) && (a = m8736a((Bundle) parcelable)) != null && !a.isEmpty()) {
                    arrayList.add(a);
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    /* renamed from: a */
    public final Object m8712a(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            return m8743a(256, obj, true, true);
        }
        if (!m8680h(str)) {
            i = 100;
        }
        return m8743a(i, obj, false, true);
    }

    /* renamed from: a */
    public final URL m8741a(long j, String str, String str2, long j2) {
        try {
            Preconditions.m17281b(str2);
            Preconditions.m17281b(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", Long.valueOf(j), Integer.valueOf(m8673s())), str2, str, Long.valueOf(j2));
            String str3 = format;
            if (str.equals(m24897h().m9327s())) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            mo8789p().m9152q().m9142a("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public final void m8733a(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            mo8789p().m9149t().m9142a("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    /* renamed from: a */
    public final void m8732a(Bundle bundle, Bundle bundle2) {
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                if (!bundle.containsKey(str)) {
                    m24899f().m8731a(bundle, str, bundle2.get(str));
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8731a(Bundle bundle, String str, Object obj) {
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
                mo8789p().m9147v().m9141a("Not putting event parameter. Invalid value type. name, type", m24900e().m9168b(str), obj != null ? obj.getClass().getSimpleName() : null);
            }
        }
    }

    /* renamed from: a */
    public final void m8729a(AbstractC4840v7 v7Var, int i, String str, String str2, int i2) {
        m8728a(v7Var, (String) null, i, str, str2, i2);
    }

    /* renamed from: a */
    public final void m8728a(AbstractC4840v7 v7Var, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        m8694b(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        if (!zzlz.m9589a() || !m24897h().m9354a(zzas.f29845O0)) {
            this.f17262a.m9045r().m8974a("auto", "_err", bundle);
        } else {
            v7Var.mo24872a(str, bundle);
        }
    }

    /* renamed from: a */
    public final void m8727a(zzw zzwVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(C8302r.f32303d, i);
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f17262a.mo8789p().m9149t().m9142a("Error returning int value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m8726a(zzw zzwVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong(C8302r.f32303d, j);
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f17262a.mo8789p().m9149t().m9142a("Error returning long value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m8725a(zzw zzwVar, Bundle bundle) {
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f17262a.mo8789p().m9149t().m9142a("Error returning bundle value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m8724a(zzw zzwVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(C8302r.f32303d, str);
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f17262a.mo8789p().m9149t().m9142a("Error returning string value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m8723a(zzw zzwVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(C8302r.f32303d, arrayList);
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f17262a.mo8789p().m9149t().m9142a("Error returning bundle list to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m8722a(zzw zzwVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(C8302r.f32303d, z);
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f17262a.mo8789p().m9149t().m9142a("Error returning boolean value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m8721a(zzw zzwVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray(C8302r.f32303d, bArr);
        try {
            zzwVar.mo9452d(bundle);
        } catch (RemoteException e) {
            this.f17262a.mo8789p().m9149t().m9142a("Error returning byte array to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m8719a(zzeu zzeuVar, int i) {
        int i2 = 0;
        for (String str : new TreeSet(zzeuVar.f29952d.keySet())) {
            if (m8681g(str)) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    StringBuilder sb = new StringBuilder(48);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    mo8789p().m9150s().m9141a(sb.toString(), m24900e().m9171a(zzeuVar.f29949a), m24900e().m9173a(zzeuVar.f29952d));
                    m8694b(zzeuVar.f29952d, 5);
                    zzeuVar.f29952d.remove(str);
                    i2 = i3;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8706a(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        int i2;
        if (bundle != null) {
            int i3 = 0;
            for (String str4 : new TreeSet(bundle.keySet())) {
                if (list == null || !list.contains(str4)) {
                    int d = z ? m8684d(str4) : 0;
                    i = d;
                    if (d == 0) {
                        i = m8683e(str4);
                    }
                } else {
                    i = 0;
                }
                if (i != 0) {
                    m8734a(bundle, i, str4, str4, i == 3 ? str4 : null);
                    bundle.remove(str4);
                } else {
                    if (m8717a(bundle.get(str4))) {
                        mo8789p().m9147v().m9140a("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                        i2 = 22;
                    } else {
                        i2 = m8705a(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                    }
                    if (i2 != 0 && !"_ev".equals(str4)) {
                        m8734a(bundle, i2, str4, str4, bundle.get(str4));
                        bundle.remove(str4);
                    } else if (m8681g(str4) && !m8702a(str4, zzgu.f30040d)) {
                        int i4 = i3 + 1;
                        i3 = i4;
                        if (i4 > 0) {
                            mo8789p().m9150s().m9141a("Item cannot contain custom parameters", m24900e().m9171a(str2), m24900e().m9173a(bundle));
                            m8694b(bundle, 23);
                            bundle.remove(str4);
                            i3 = i4;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m8715a(String str, double d) {
        try {
            SharedPreferences.Editor edit = mo8846B().getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
            edit.putString("deeplink", str);
            edit.putLong(AvidJSONUtil.KEY_TIMESTAMP, Double.doubleToRawLongBits(d));
            return edit.commit();
        } catch (Exception e) {
            mo8789p().m9152q().m9142a("Failed to persist Deferred Deep Link. exception", e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m8714a(String str, int i, String str2) {
        if (str2 == null) {
            mo8789p().m9150s().m9142a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            mo8789p().m9150s().m9140a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m8711a(String str, String str2) {
        if (str2 == null) {
            mo8789p().m9150s().m9142a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            mo8789p().m9150s().m9142a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                mo8789p().m9150s().m9141a("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    mo8789p().m9150s().m9141a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m8710a(String str, String str2, int i, Object obj) {
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
        mo8789p().m9147v().m9140a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
        return false;
    }

    /* renamed from: a */
    public final boolean m8707a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (m8677j(str)) {
                return true;
            }
            if (!this.f17262a.m9041v()) {
                return false;
            }
            mo8789p().m9150s().m9142a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzeq.m9157a(str));
            return false;
        } else if (zznv.m9491a() && m24897h().m9354a(zzas.f29876j0) && !TextUtils.isEmpty(str3)) {
            return true;
        } else {
            if (!TextUtils.isEmpty(str2)) {
                if (m8677j(str2)) {
                    return true;
                }
                mo8789p().m9150s().m9142a("Invalid admob_app_id. Analytics disabled.", zzeq.m9157a(str2));
                return false;
            } else if (!this.f17262a.m9041v()) {
                return false;
            } else {
                mo8789p().m9150s().m9143a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
                return false;
            }
        }
    }

    /* renamed from: a */
    public final boolean m8701a(String str, String[] strArr, String str2) {
        return m8700a(str, strArr, (String[]) null, str2);
    }

    /* renamed from: a */
    public final boolean m8700a(String str, String[] strArr, String[] strArr2, String str2) {
        boolean z;
        if (str2 == null) {
            mo8789p().m9150s().m9142a("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.m17288a(str2);
        String[] strArr3 = f30148g;
        int length = strArr3.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (str2.startsWith(strArr3[i])) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            mo8789p().m9150s().m9141a("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        } else if (strArr == null || !m8702a(str2, strArr)) {
            return true;
        } else {
            if (strArr2 != null && m8702a(str2, strArr2)) {
                return true;
            }
            mo8789p().m9150s().m9141a("Name is reserved. Type, name", str, str2);
            return false;
        }
    }

    /* renamed from: b */
    public final int m8691b(String str, Object obj) {
        return "_ldl".equals(str) ? m8710a("user property referrer", str, m8682f(str), obj) : m8710a("user property", str, m8682f(str), obj) ? 0 : 7;
    }

    @VisibleForTesting
    /* renamed from: b */
    public final boolean m8696b(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo b = Wrappers.m17026b(context).m17028b(str, 64);
            if (b == null || b.signatures == null || b.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            mo8789p().m9152q().m9142a("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            mo8789p().m9152q().m9142a("Error obtaining certificate", e2);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m8692b(String str) {
        mo9085c();
        if (Wrappers.m17026b(mo8846B()).m17033a(str) == 0) {
            return true;
        }
        mo8789p().m9145x().m9142a("Permission not granted", str);
        return false;
    }

    /* renamed from: b */
    public final boolean m8690b(String str, String str2) {
        if (str2 == null) {
            mo8789p().m9150s().m9142a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            mo8789p().m9150s().m9142a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt) || codePointAt == 95) {
                int length = str2.length();
                int charCount = Character.charCount(codePointAt);
                while (charCount < length) {
                    int codePointAt2 = str2.codePointAt(charCount);
                    if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                        charCount += Character.charCount(codePointAt2);
                    } else {
                        mo8789p().m9150s().m9141a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            mo8789p().m9150s().m9141a("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
    }

    /* renamed from: c */
    public final Object m8686c(String str, Object obj) {
        return "_ldl".equals(str) ? m8743a(m8682f(str), obj, true, false) : m8743a(m8682f(str), obj, false, false);
    }

    /* renamed from: c */
    public final boolean m8687c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return m24897h().m9328r().equals(str);
    }

    /* renamed from: d */
    public final int m8684d(String str) {
        if (!m8711a("event param", str)) {
            return 3;
        }
        if (!m8701a("event param", (String[]) null, str)) {
            return 14;
        }
        return !m8714a("event param", 40, str) ? 3 : 0;
    }

    /* renamed from: e */
    public final int m8683e(String str) {
        if (!m8690b("event param", str)) {
            return 3;
        }
        if (!m8701a("event param", (String[]) null, str)) {
            return 14;
        }
        return !m8714a("event param", 40, str) ? 3 : 0;
    }

    /* renamed from: f */
    public final int m8682f(String str) {
        if ("_ldl".equals(str)) {
            return RecyclerView.AbstractC0495b0.FLAG_MOVED;
        }
        if ("_id".equals(str)) {
            return 256;
        }
        return (!m24897h().m9354a(zzas.f29872h0) || !"_lgclid".equals(str)) ? 36 : 100;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8679i() {
        /*
            r5 = this;
            r0 = r5
            r0.mo9085c()
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
            if (r0 != 0) goto L_0x0038
            r0 = r6
            long r0 = r0.nextLong()
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0038
            r0 = r5
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9149t()
            java.lang.String r1 = "Utils falling back to Random for random id"
            r0.m9143a(r1)
            r0 = r7
            r9 = r0
        L_0x0038:
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.f30151d
            r1 = r9
            r0.set(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkv.mo8679i():void");
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: o */
    public final boolean mo8676o() {
        return true;
    }

    /* renamed from: q */
    public final long m8675q() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.f30151d.get() == 0) {
            synchronized (this.f30151d) {
                nextLong = new Random(System.nanoTime() ^ mo8779z().mo17091b()).nextLong();
                int i = this.f30152e + 1;
                this.f30152e = i;
                j = i;
            }
            return nextLong + j;
        }
        synchronized (this.f30151d) {
            this.f30151d.compareAndSet(-1L, 1L);
            andIncrement = this.f30151d.getAndIncrement();
        }
        return andIncrement;
    }

    /* renamed from: r */
    public final SecureRandom m8674r() {
        mo9085c();
        if (this.f30150c == null) {
            this.f30150c = new SecureRandom();
        }
        return this.f30150c;
    }

    /* renamed from: s */
    public final int m8673s() {
        if (this.f30153f == null) {
            this.f30153f = Integer.valueOf(GoogleApiAvailabilityLight.m17812a().m17803b(mo8846B()) / 1000);
        }
        return this.f30153f.intValue();
    }

    /* renamed from: t */
    public final boolean m8672t() {
        try {
            mo8846B().getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
