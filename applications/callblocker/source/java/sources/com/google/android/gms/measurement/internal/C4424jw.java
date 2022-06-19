package com.google.android.gms.measurement.internal;

import android.annotation.SuppressLint;
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
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.common.util.C2709f;
import com.google.android.gms.internal.measurement.AbstractC4132mj;
import com.google.android.gms.internal.measurement.C4028in;
import com.google.android.gms.internal.measurement.C4066jy;
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
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
/* renamed from: com.google.android.gms.measurement.internal.jw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jw.class */
public final class C4424jw extends AbstractC4317fy {

    /* renamed from: a */
    private static final String[] f19280a = {"firebase_", "google_", "ga_"};

    /* renamed from: b */
    private static final String[] f19281b = {"_err"};

    /* renamed from: c */
    private SecureRandom f19282c;

    /* renamed from: e */
    private int f19284e;

    /* renamed from: f */
    private Integer f19285f = null;

    /* renamed from: d */
    private final AtomicLong f19283d = new AtomicLong(0);

    public C4424jw(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f8, code lost:
        if (r19 == false) goto L49;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m4110a(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4424jw.m4110a(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* renamed from: a */
    public static long m4144a(long j, long j2) {
        return ((60000 * j2) + j) / 86400000;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: a */
    public static long m4125a(C4445m c4445m) {
        Object m4023a;
        char c = 0;
        if (c4445m != null) {
            Iterator<String> it = c4445m.iterator();
            c = 0;
            while (it.hasNext()) {
                if (c4445m.m4023a(it.next()) instanceof Parcelable[]) {
                    c = ((Parcelable[]) m4023a).length + c;
                }
            }
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: a */
    public static long m4104a(byte[] bArr) {
        int i = 0;
        C2662s.m13981a(bArr);
        C2662s.m13977a(bArr.length > 0);
        char c = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            c += (bArr[length] & 255) << i;
            i += 8;
        }
        return c;
    }

    /* renamed from: a */
    public static Bundle m4106a(List<C4423jv> list) {
        Bundle bundle = new Bundle();
        if (list != null) {
            for (C4423jv c4423jv : list) {
                if (c4423jv.f19275d != null) {
                    bundle.putString(c4423jv.f19272a, c4423jv.f19275d);
                } else if (c4423jv.f19274c != null) {
                    bundle.putLong(c4423jv.f19272a, c4423jv.f19274c.longValue());
                } else if (c4423jv.f19277f != null) {
                    bundle.putDouble(c4423jv.f19272a, c4423jv.f19277f.doubleValue());
                }
            }
        }
        return bundle;
    }

    /* renamed from: a */
    private final Object m4146a(int i, Object obj, boolean z, boolean z2) {
        Long l;
        Parcelable[] parcelableArr;
        Bundle m4138a;
        if (obj == null) {
            l = null;
        } else {
            l = obj;
            if (!(obj instanceof Long)) {
                l = obj;
                if (!(obj instanceof Double)) {
                    if (obj instanceof Integer) {
                        l = Long.valueOf(((Integer) obj).intValue());
                    } else if (obj instanceof Byte) {
                        l = Long.valueOf(((Byte) obj).byteValue());
                    } else if (obj instanceof Short) {
                        l = Long.valueOf(((Short) obj).shortValue());
                    } else if (obj instanceof Boolean) {
                        l = Long.valueOf((((Boolean) obj).booleanValue() ? 1 : null) == 1 ? 1L : 0L);
                    } else if (obj instanceof Float) {
                        l = Double.valueOf(((Float) obj).doubleValue());
                    } else if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                        l = m4118a(String.valueOf(obj), i, z);
                    } else if (!C4028in.m5084b() || !mo4027x().m4804a(C4452t.f19425aH) || !mo4027x().m4804a(C4452t.f19424aG) || !z2 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
                        l = null;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if ((parcelable instanceof Bundle) && (m4138a = m4138a((Bundle) parcelable)) != null && !m4138a.isEmpty()) {
                                arrayList.add(m4138a);
                            }
                        }
                        l = arrayList.toArray(new Bundle[arrayList.size()]);
                    }
                }
            }
        }
        return l;
    }

    /* renamed from: a */
    public static String m4118a(String str, int i, boolean z) {
        String str2;
        if (str == null) {
            str2 = null;
        } else {
            str2 = str;
            if (str.codePointCount(0, str.length()) > i) {
                str2 = z ? String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...") : null;
            }
        }
        return str2;
    }

    /* renamed from: a */
    private static void m4136a(Bundle bundle, int i, String str, String str2, Object obj) {
        if (m4100b(bundle, i)) {
            bundle.putString("_ev", m4118a(str, 40, true));
            if (obj == null) {
                return;
            }
            C2662s.m13981a(bundle);
            if (obj == null) {
                return;
            }
            if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
                return;
            }
            bundle.putLong("_el", String.valueOf(obj).length());
        }
    }

    /* renamed from: a */
    private final void m4111a(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int m4110a;
        if (bundle == null) {
            return;
        }
        boolean m4804a = mo4027x().m4804a(C4452t.f19426aI);
        int m4806a = m4804a ? 0 : mo4027x().m4806a();
        int i = 0;
        for (String str4 : new TreeSet(bundle.keySet())) {
            int i2 = 0;
            int i3 = 0;
            if (list == null || !list.contains(str4)) {
                if (z) {
                    i3 = m4079h(str4);
                }
                i2 = i3;
                if (i3 == 0) {
                    i2 = m4078i(str4);
                }
            }
            if (i2 != 0) {
                m4136a(bundle, i2, str4, str4, i2 == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (m4123a(bundle.get(str4))) {
                    mo4030v().m4660g().m4651a("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                    m4110a = 22;
                } else {
                    m4110a = m4110a(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                }
                if (m4110a != 0 && !"_ev".equals(str4)) {
                    m4136a(bundle, m4110a, str4, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (m4122a(str4) && (!m4804a || !m4108a(str4, C4322gc.f18974d))) {
                    int i4 = i + 1;
                    i = i4;
                    if (i4 > m4806a) {
                        mo4030v().m4663d().m4652a(m4804a ? "Item cannot contain custom parameters" : new StringBuilder(63).append("Child bundles can't contain more than ").append(m4806a).append(" custom params").toString(), mo4033s().m4682a(str2), mo4033s().m4684a(bundle));
                        m4100b(bundle, m4804a ? 23 : 5);
                        bundle.remove(str4);
                        i = i4;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m4141a(Context context, boolean z) {
        C2662s.m13981a(context);
        return Build.VERSION.SDK_INT >= 24 ? m4102b(context, "com.google.android.gms.measurement.AppMeasurementJobService") : m4102b(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* renamed from: a */
    public static boolean m4140a(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    /* renamed from: a */
    public static boolean m4137a(Bundle bundle, int i) {
        boolean z = false;
        if (bundle.size() > i) {
            int i2 = 0;
            for (String str : new TreeSet(bundle.keySet())) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    bundle.remove(str);
                    i2 = i3;
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m4124a(Boolean bool, Boolean bool2) {
        return (bool == null && bool2 == null) ? true : bool == null ? false : bool.equals(bool2);
    }

    /* renamed from: a */
    public static boolean m4123a(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* renamed from: a */
    public static boolean m4122a(String str) {
        boolean z = false;
        C2662s.m13979a(str);
        if (str.charAt(0) != '_' || str.equals("_ep")) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m4109a(String str, String str2, String str3, String str4) {
        boolean z;
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            z = !str.equals(str2);
        } else if (!isEmpty || !isEmpty2) {
            if (isEmpty || !isEmpty2) {
                z = true;
                if (!TextUtils.isEmpty(str3)) {
                    z = true;
                    if (str3.equals(str4)) {
                        z = false;
                    }
                }
            } else if (TextUtils.isEmpty(str4)) {
                z = false;
            } else {
                z = true;
                if (!TextUtils.isEmpty(str3)) {
                    z = true;
                    if (str3.equals(str4)) {
                        z = false;
                    }
                }
            }
        } else if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
            z = true;
            if (TextUtils.isEmpty(str4)) {
                z = false;
            }
        } else {
            z = true;
            if (str3.equals(str4)) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m4108a(String str, String[] strArr) {
        boolean z;
        C2662s.m13981a(strArr);
        int length = strArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            } else if (m4089c(str, strArr[i])) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m4105a(List<String> list, List<String> list2) {
        return (list == null && list2 == null) ? true : list == null ? false : list.equals(list2);
    }

    /* renamed from: a */
    public static byte[] m4133a(Parcelable parcelable) {
        byte[] marshall;
        if (parcelable == null) {
            marshall = null;
        } else {
            Parcel obtain = Parcel.obtain();
            try {
                parcelable.writeToParcel(obtain, 0);
                marshall = obtain.marshall();
            } finally {
                obtain.recycle();
            }
        }
        return marshall;
    }

    /* renamed from: b */
    public static Bundle m4101b(Bundle bundle) {
        Bundle bundle2;
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = new Bundle(bundle);
            for (String str : bundle2.keySet()) {
                Object obj = bundle2.get(str);
                if (obj instanceof Bundle) {
                    bundle2.putBundle(str, new Bundle((Bundle) obj));
                } else if (obj instanceof Parcelable[]) {
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
    public static ArrayList<Bundle> m4094b(List<C4442kn> list) {
        ArrayList<Bundle> arrayList;
        if (list == null) {
            arrayList = new ArrayList<>(0);
        } else {
            ArrayList<Bundle> arrayList2 = new ArrayList<>(list.size());
            for (C4442kn c4442kn : list) {
                Bundle bundle = new Bundle();
                bundle.putString("app_id", c4442kn.f19354a);
                bundle.putString("origin", c4442kn.f19355b);
                bundle.putLong("creation_timestamp", c4442kn.f19357d);
                bundle.putString("name", c4442kn.f19356c.f19272a);
                C4320ga.m4437a(bundle, c4442kn.f19356c.m4148a());
                bundle.putBoolean("active", c4442kn.f19358e);
                if (c4442kn.f19359f != null) {
                    bundle.putString("trigger_event_name", c4442kn.f19359f);
                }
                if (c4442kn.f19360g != null) {
                    bundle.putString("timed_out_event_name", c4442kn.f19360g.f19386a);
                    if (c4442kn.f19360g.f19387b != null) {
                        bundle.putBundle("timed_out_event_params", c4442kn.f19360g.f19387b.m4022b());
                    }
                }
                bundle.putLong("trigger_timeout", c4442kn.f19361h);
                if (c4442kn.f19362i != null) {
                    bundle.putString("triggered_event_name", c4442kn.f19362i.f19386a);
                    if (c4442kn.f19362i.f19387b != null) {
                        bundle.putBundle("triggered_event_params", c4442kn.f19362i.f19387b.m4022b());
                    }
                }
                bundle.putLong("triggered_timestamp", c4442kn.f19356c.f19273b);
                bundle.putLong("time_to_live", c4442kn.f19363j);
                if (c4442kn.f19364k != null) {
                    bundle.putString("expired_event_name", c4442kn.f19364k.f19386a);
                    if (c4442kn.f19364k.f19387b != null) {
                        bundle.putBundle("expired_event_params", c4442kn.f19364k.f19387b.m4022b());
                    }
                }
                arrayList2.add(bundle);
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: b */
    private static boolean m4102b(Context context, String str) {
        boolean z;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                z = false;
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0);
                z = false;
                if (serviceInfo != null) {
                    z = false;
                    if (serviceInfo.enabled) {
                        z = true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m4100b(Bundle bundle, int i) {
        boolean z = false;
        if (bundle != null && bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private final boolean m4095b(String str, String str2, int i, Object obj) {
        boolean z;
        int size;
        if (!(obj instanceof Parcelable[])) {
            z = true;
            if (obj instanceof ArrayList) {
                size = ((ArrayList) obj).size();
            }
            return z;
        }
        size = ((Parcelable[]) obj).length;
        z = true;
        if (size > i) {
            mo4030v().m4660g().m4651a("Parameter array is too long; discarded. Value kind, name, array length", str, str2, Integer.valueOf(size));
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static Bundle[] m4099b(Object obj) {
        Bundle[] bundleArr;
        if (obj instanceof Bundle) {
            bundleArr = new Bundle[]{(Bundle) obj};
        } else if (obj instanceof Parcelable[]) {
            bundleArr = (Bundle[]) Arrays.copyOf((Parcelable[]) obj, ((Parcelable[]) obj).length, Bundle[].class);
        } else if (obj instanceof ArrayList) {
            ArrayList arrayList = (ArrayList) obj;
            bundleArr = (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
        } else {
            bundleArr = null;
        }
        return bundleArr;
    }

    /* renamed from: c */
    private final boolean m4092c(Context context, String str) {
        boolean z;
        PackageInfo m14194b;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            m14194b = C2586c.m14193a(context).m14194b(str, 64);
        } catch (PackageManager.NameNotFoundException e) {
            mo4030v().m4655x_().m4653a("Package name not found", e);
        } catch (CertificateException e2) {
            mo4030v().m4655x_().m4653a("Error obtaining certificate", e2);
        }
        if (m14194b != null && m14194b.signatures != null && m14194b.signatures.length > 0) {
            z = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(m14194b.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: c */
    public static boolean m4089c(String str, String str2) {
        return (str == null && str2 == null) ? true : str == null ? false : str.equals(str2);
    }

    /* renamed from: e */
    public static MessageDigest m4086e() {
        MessageDigest messageDigest;
        int i = 0;
        while (true) {
            if (i >= 2) {
                messageDigest = null;
                break;
            }
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                break;
            }
            i++;
        }
        return messageDigest;
    }

    /* renamed from: e */
    public static boolean m4085e(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* renamed from: g */
    public static boolean m4081g(String str) {
        boolean z = false;
        String[] strArr = f19281b;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (strArr[i].equals(str)) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: h */
    private final int m4079h(String str) {
        int i = 3;
        if (m4116a("event param", str)) {
            if (!m4107a("event param", (String[]) null, str)) {
                i = 14;
            } else if (m4120a("event param", 40, str)) {
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: i */
    private final int m4078i(String str) {
        int i = 3;
        if (m4096b("event param", str)) {
            if (!m4107a("event param", (String[]) null, str)) {
                i = 14;
            } else if (m4120a("event param", 40, str)) {
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: j */
    private static boolean m4077j(String str) {
        C2662s.m13981a(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* renamed from: k */
    private final int m4076k(String str) {
        return "_ldl".equals(str) ? 2048 : "_id".equals(str) ? 256 : (!mo4027x().m4804a(C4452t.f19451al) || !"_lgclid".equals(str)) ? 36 : 100;
    }

    /* renamed from: a */
    public final int m4147a(int i) {
        return C2593f.m14165b().mo14163b(mo4034r(), 12451000);
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0085 -> B:19:0x0093). Please submit an issue!!! */
    /* renamed from: a */
    public final long m4142a(Context context, String str) {
        char c = 65535;
        mo4037o();
        C2662s.m13981a(context);
        C2662s.m13979a(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest m4086e = m4086e();
        if (m4086e == null) {
            mo4030v().m4655x_().m4654a("Could not get MD5 instance");
        } else {
            if (packageManager != null) {
                try {
                } catch (PackageManager.NameNotFoundException e) {
                    mo4030v().m4655x_().m4653a("Package name not found", e);
                }
                if (!m4092c(context, str)) {
                    PackageInfo m14194b = C2586c.m14193a(context).m14194b(mo4034r().getPackageName(), 64);
                    if (m14194b.signatures == null || m14194b.signatures.length <= 0) {
                        mo4030v().m4662e().m4654a("Could not get signatures");
                    } else {
                        c = m4104a(m4086e.digest(m14194b.signatures[0].toByteArray()));
                    }
                }
            }
            c = 0;
        }
        return c;
    }

    /* renamed from: a */
    public final Bundle m4139a(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        Bundle bundle = null;
        if (uri != null) {
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
                if (!TextUtils.isEmpty(str4) || !TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str)) {
                    Bundle bundle2 = new Bundle();
                    if (!TextUtils.isEmpty(str4)) {
                        bundle2.putString("campaign", str4);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        bundle2.putString("source", str3);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        bundle2.putString("medium", str2);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        bundle2.putString("gclid", str);
                    }
                    String queryParameter = uri.getQueryParameter("utm_term");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        bundle2.putString("term", queryParameter);
                    }
                    String queryParameter2 = uri.getQueryParameter("utm_content");
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        bundle2.putString("content", queryParameter2);
                    }
                    String queryParameter3 = uri.getQueryParameter("aclid");
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        bundle2.putString("aclid", queryParameter3);
                    }
                    String queryParameter4 = uri.getQueryParameter("cp1");
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        bundle2.putString("cp1", queryParameter4);
                    }
                    String queryParameter5 = uri.getQueryParameter("anid");
                    bundle = bundle2;
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        bundle2.putString("anid", queryParameter5);
                        bundle = bundle2;
                    }
                }
            } catch (UnsupportedOperationException e) {
                mo4030v().m4662e().m4653a("Install referrer url isn't a hierarchical URI", e);
            }
        }
        return bundle;
    }

    /* renamed from: a */
    public final Bundle m4138a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object m4117a = m4117a(str, bundle.get(str));
                if (m4117a == null) {
                    mo4030v().m4660g().m4653a("Param value can't be null", mo4033s().m4679b(str));
                } else {
                    m4134a(bundle2, str, m4117a);
                }
            }
        }
        return bundle2;
    }

    /* renamed from: a */
    public final Bundle m4113a(String str, String str2, Bundle bundle, List<String> list, boolean z, boolean z2) {
        boolean z3 = C4028in.m5084b() && mo4027x().m4804a(C4452t.f19426aI);
        if (z3) {
            z2 = m4108a(str2, C4323gd.f18977c);
        }
        Bundle bundle2 = null;
        if (bundle != null) {
            Bundle bundle3 = new Bundle(bundle);
            int m4806a = mo4027x().m4806a();
            Iterator<String> it = (mo4027x().m4787e(str, C4452t.f19441ab) ? new TreeSet(bundle.keySet()) : bundle.keySet()).iterator();
            int i = 0;
            while (true) {
                bundle2 = bundle3;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                int i2 = 0;
                int i3 = 0;
                if (list == null || !list.contains(next)) {
                    if (z) {
                        i3 = m4079h(next);
                    }
                    i2 = i3;
                    if (i3 == 0) {
                        i2 = m4078i(next);
                    }
                }
                if (i2 != 0) {
                    m4136a(bundle3, i2, next, next, i2 == 3 ? next : null);
                    bundle3.remove(next);
                } else {
                    int m4110a = m4110a(str, str2, next, bundle.get(next), bundle3, list, z, z2);
                    if (z3 && m4110a == 17) {
                        m4136a(bundle3, m4110a, next, next, (Object) false);
                    } else if (m4110a != 0 && !"_ev".equals(next)) {
                        m4136a(bundle3, m4110a, m4110a == 21 ? str2 : next, next, bundle.get(next));
                        bundle3.remove(next);
                    }
                    if (m4122a(next)) {
                        int i4 = i + 1;
                        i = i4;
                        if (i4 > m4806a) {
                            mo4030v().m4663d().m4652a(new StringBuilder(48).append("Event can't contain more than ").append(m4806a).append(" params").toString(), mo4033s().m4682a(str2), mo4033s().m4684a(bundle));
                            m4100b(bundle3, 5);
                            bundle3.remove(next);
                            i = i4;
                        }
                    }
                }
            }
        }
        return bundle2;
    }

    /* renamed from: a */
    public final C4450r m4114a(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        C4450r c4450r;
        if (TextUtils.isEmpty(str2)) {
            c4450r = null;
        } else if (m4098b(str2) != 0) {
            mo4030v().m4655x_().m4653a("Invalid conditional property event name", mo4033s().m4677c(str2));
            throw new IllegalArgumentException();
        } else {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            c4450r = new C4450r(str2, new C4445m(m4138a(m4113a(str, str2, bundle2, C2709f.m13871a("_o"), false, false))), str3, j);
        }
        return c4450r;
    }

    /* renamed from: a */
    public final Object m4117a(String str, Object obj) {
        Object m4146a;
        int i = 256;
        if ("_ev".equals(str)) {
            m4146a = m4146a(256, obj, true, true);
        } else {
            if (!m4085e(str)) {
                i = 100;
            }
            m4146a = m4146a(i, obj, false, true);
        }
        return m4146a;
    }

    /* renamed from: a */
    public final URL m4143a(long j, String str, String str2, long j2) {
        URL url;
        try {
            C2662s.m13979a(str2);
            C2662s.m13979a(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", Long.valueOf(j), Integer.valueOf(m4084f())), str2, str, Long.valueOf(j2));
            url = new URL(str.equals(mo4027x().m4778j()) ? format.concat("&ddl_test=1") : format);
        } catch (IllegalArgumentException | MalformedURLException e) {
            mo4030v().m4655x_().m4653a("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            url = null;
        }
        return url;
    }

    /* renamed from: a */
    public final void m4145a(int i, String str, String str2, int i2) {
        m4119a((String) null, i, str, str2, i2);
    }

    /* renamed from: a */
    public final void m4135a(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            mo4030v().m4662e().m4653a("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j2 + j);
    }

    /* renamed from: a */
    public final void m4134a(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (C4028in.m5084b() && mo4027x().m4804a(C4452t.f19425aH) && mo4027x().m4804a(C4452t.f19424aG) && (obj instanceof Bundle[])) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str == null) {
        } else {
            mo4030v().m4660g().m4652a("Not putting event parameter. Invalid value type. name, type", mo4033s().m4679b(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    /* renamed from: a */
    public final void m4132a(AbstractC4132mj abstractC4132mj, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18970z.mo4030v().m4662e().m4653a("Error returning int value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m4131a(AbstractC4132mj abstractC4132mj, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18970z.mo4030v().m4662e().m4653a("Error returning long value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m4130a(AbstractC4132mj abstractC4132mj, Bundle bundle) {
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18970z.mo4030v().m4662e().m4653a("Error returning bundle value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m4129a(AbstractC4132mj abstractC4132mj, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18970z.mo4030v().m4662e().m4653a("Error returning string value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m4128a(AbstractC4132mj abstractC4132mj, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18970z.mo4030v().m4662e().m4653a("Error returning bundle list to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m4127a(AbstractC4132mj abstractC4132mj, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18970z.mo4030v().m4662e().m4653a("Error returning boolean value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m4126a(AbstractC4132mj abstractC4132mj, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            abstractC4132mj.mo4950a(bundle);
        } catch (RemoteException e) {
            this.f18970z.mo4030v().m4662e().m4653a("Error returning byte array to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m4119a(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        m4100b(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        this.f18970z.mo4026y();
        this.f18970z.m4548h().m4405a("auto", "_err", bundle);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: a */
    protected final boolean mo4046a() {
        return true;
    }

    @SuppressLint({"ApplySharedPref"})
    /* renamed from: a */
    public final boolean m4121a(String str, double d) {
        boolean z;
        try {
            SharedPreferences.Editor edit = mo4034r().getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
            edit.putString("deeplink", str);
            edit.putLong("timestamp", Double.doubleToRawLongBits(d));
            z = edit.commit();
        } catch (Exception e) {
            mo4030v().m4655x_().m4653a("Failed to persist Deferred Deep Link. exception", e);
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4120a(String str, int i, String str2) {
        boolean z = false;
        if (str2 == null) {
            mo4030v().m4663d().m4653a("Name is required and can't be null. Type", str);
        } else if (str2.codePointCount(0, str2.length()) > i) {
            mo4030v().m4663d().m4651a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4116a(String str, String str2) {
        boolean z = false;
        if (str2 != null) {
            if (str2.length() != 0) {
                int codePointAt = str2.codePointAt(0);
                if (Character.isLetter(codePointAt)) {
                    int length = str2.length();
                    int charCount = Character.charCount(codePointAt);
                    while (true) {
                        int i = charCount;
                        if (i >= length) {
                            z = true;
                            break;
                        }
                        int codePointAt2 = str2.codePointAt(i);
                        if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                            mo4030v().m4663d().m4652a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                            break;
                        }
                        charCount = i + Character.charCount(codePointAt2);
                    }
                } else {
                    mo4030v().m4663d().m4652a("Name must start with a letter. Type, name", str, str2);
                }
            } else {
                mo4030v().m4663d().m4653a("Name is required and can't be empty. Type", str);
            }
        } else {
            mo4030v().m4663d().m4653a("Name is required and can't be null. Type", str);
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4115a(String str, String str2, int i, Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = true;
            if (!(obj instanceof Long)) {
                z = true;
                if (!(obj instanceof Float)) {
                    z = true;
                    if (!(obj instanceof Integer)) {
                        z = true;
                        if (!(obj instanceof Byte)) {
                            z = true;
                            if (!(obj instanceof Short)) {
                                z = true;
                                if (!(obj instanceof Boolean)) {
                                    z = true;
                                    if (!(obj instanceof Double)) {
                                        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                                            String valueOf = String.valueOf(obj);
                                            z = true;
                                            if (valueOf.codePointCount(0, valueOf.length()) > i) {
                                                mo4030v().m4660g().m4651a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                                                z = false;
                                            }
                                        } else {
                                            z = false;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4112a(String str, String str2, String str3) {
        boolean z;
        if (!TextUtils.isEmpty(str)) {
            if (!m4077j(str)) {
                z = false;
                if (this.f18970z.m4544l()) {
                    mo4030v().m4663d().m4653a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", C4263dy.m4669a(str));
                    z = false;
                }
            }
            z = true;
        } else {
            if (!C4066jy.m5025b() || !mo4027x().m4804a(C4452t.f19454ao) || TextUtils.isEmpty(str3)) {
                if (TextUtils.isEmpty(str2)) {
                    z = false;
                    if (this.f18970z.m4544l()) {
                        mo4030v().m4663d().m4654a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
                        z = false;
                    }
                } else if (!m4077j(str2)) {
                    mo4030v().m4663d().m4653a("Invalid admob_app_id. Analytics disabled.", C4263dy.m4669a(str2));
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4107a(String str, String[] strArr, String str2) {
        boolean z;
        boolean z2 = false;
        if (str2 == null) {
            mo4030v().m4663d().m4653a("Name is required and can't be null. Type", str);
        } else {
            C2662s.m13981a(str2);
            String[] strArr2 = f19280a;
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
                mo4030v().m4663d().m4652a("Name starts with reserved prefix. Type, name", str, str2);
            } else if (strArr == null || !m4108a(str2, strArr)) {
                z2 = true;
            } else {
                mo4030v().m4663d().m4652a("Name is reserved. Type, name", str, str2);
            }
        }
        return z2;
    }

    /* renamed from: b */
    public final int m4098b(String str) {
        int i = 2;
        if (m4096b("event", str)) {
            if (!m4107a("event", C4323gd.f18975a, str)) {
                i = 13;
            } else if (m4120a("event", 40, str)) {
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: b */
    public final int m4097b(String str, Object obj) {
        return "_ldl".equals(str) ? m4115a("user property referrer", str, m4076k(str), obj) : m4115a("user property", str, m4076k(str), obj) ? 0 : 7;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: b */
    protected final void mo4103b() {
        mo4037o();
        SecureRandom secureRandom = new SecureRandom();
        ?? nextLong = secureRandom.nextLong();
        char c = nextLong;
        if (nextLong == 0) {
            ?? nextLong2 = secureRandom.nextLong();
            c = nextLong2;
            if (nextLong2 == 0) {
                mo4030v().m4662e().m4654a("Utils falling back to Random for random id");
                c = nextLong2;
            }
        }
        this.f19283d.set(c);
    }

    /* renamed from: b */
    public final boolean m4096b(String str, String str2) {
        boolean z = false;
        if (str2 == null) {
            mo4030v().m4663d().m4653a("Name is required and can't be null. Type", str);
        } else if (str2.length() == 0) {
            mo4030v().m4663d().m4653a("Name is required and can't be empty. Type", str);
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt) || codePointAt == 95) {
                int length = str2.length();
                int charCount = Character.charCount(codePointAt);
                while (true) {
                    int i = charCount;
                    if (i >= length) {
                        z = true;
                        break;
                    }
                    int codePointAt2 = str2.codePointAt(i);
                    if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                        mo4030v().m4663d().m4652a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        break;
                    }
                    charCount = i + Character.charCount(codePointAt2);
                }
            } else {
                mo4030v().m4663d().m4652a("Name must start with a letter or _ (underscore). Type, name", str, str2);
            }
        }
        return z;
    }

    /* renamed from: c */
    public final int m4091c(String str) {
        int i = 6;
        if (m4096b("user property", str)) {
            if (!m4107a("user property", C4325gf.f18978a, str)) {
                i = 15;
            } else if (m4120a("user property", 24, str)) {
                i = 0;
            }
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* renamed from: c */
    public final long m4093c() {
        char andIncrement;
        if (this.f19283d.get() == 0) {
            synchronized (this.f19283d) {
                long nextLong = new Random(System.nanoTime() ^ mo4035q().mo13862a()).nextLong();
                int i = this.f19284e + 1;
                this.f19284e = i;
                andIncrement = nextLong + i;
            }
        } else {
            synchronized (this.f19283d) {
                this.f19283d.compareAndSet(-1L, 1L);
                andIncrement = this.f19283d.getAndIncrement();
            }
        }
        return andIncrement;
    }

    /* renamed from: c */
    public final Object m4090c(String str, Object obj) {
        return "_ldl".equals(str) ? m4146a(m4076k(str), obj, true, false) : m4146a(m4076k(str), obj, false, false);
    }

    /* renamed from: d */
    public final SecureRandom m4088d() {
        mo4037o();
        if (this.f19282c == null) {
            this.f19282c = new SecureRandom();
        }
        return this.f19282c;
    }

    /* renamed from: d */
    public final boolean m4087d(String str) {
        boolean z;
        mo4037o();
        if (C2586c.m14193a(mo4034r()).m14199a(str) == 0) {
            z = true;
        } else {
            mo4030v().m4658i().m4653a("Permission not granted", str);
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public final int m4084f() {
        if (this.f19285f == null) {
            this.f19285f = Integer.valueOf(C2593f.m14165b().m14161c(mo4034r()) / 1000);
        }
        return this.f19285f.intValue();
    }

    /* renamed from: f */
    public final boolean m4083f(String str) {
        boolean equals;
        if (TextUtils.isEmpty(str)) {
            equals = false;
        } else {
            String m4780i = mo4027x().m4780i();
            mo4026y();
            equals = m4780i.equals(str);
        }
        return equals;
    }

    /* renamed from: g */
    public final String m4082g() {
        byte[] bArr = new byte[16];
        m4088d().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    /* renamed from: h */
    public final boolean m4080h() {
        boolean z;
        try {
            mo4034r().getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            z = true;
        } catch (ClassNotFoundException e) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ void mo4037o() {
        super.mo4037o();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }
}
