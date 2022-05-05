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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzlx;
import com.google.android.gms.internal.measurement.zznt;
import com.google.android.gms.internal.measurement.zzw;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.messaging.Constants;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkw.class */
public final class zzkw extends zzgr {

    /* renamed from: g */
    private static final String[] f9711g = {"firebase_", "google_", "ga_"};

    /* renamed from: h */
    private static final String[] f9712h = {"_err"};

    /* renamed from: c */
    private SecureRandom f9713c;

    /* renamed from: e */
    private int f9715e;

    /* renamed from: f */
    private Integer f9716f = null;

    /* renamed from: d */
    private final AtomicLong f9714d = new AtomicLong(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkw(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A0 */
    public static boolean m11002A0(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* renamed from: C */
    public static Bundle m10999C(List<zzkr> list) {
        Bundle bundle = new Bundle();
        if (list == null) {
            return bundle;
        }
        for (zzkr zzkrVar : list) {
            String str = zzkrVar.f9703j;
            if (str != null) {
                bundle.putString(zzkrVar.f9700g, str);
            } else {
                Long l = zzkrVar.f9702i;
                if (l != null) {
                    bundle.putLong(zzkrVar.f9700g, l.longValue());
                } else {
                    Double d = zzkrVar.f9705l;
                    if (d != null) {
                        bundle.putDouble(zzkrVar.f9700g, d.doubleValue());
                    }
                }
            }
        }
        return bundle;
    }

    /* renamed from: D0 */
    public static boolean m10996D0(String str) {
        for (String str2 : f9712h) {
            if (str2.equals(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: E */
    private final Object m10995E(int i, Object obj, boolean z, boolean z2) {
        Parcelable[] parcelableArr;
        Bundle A;
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
                return m10991G(String.valueOf(obj), i, z);
            }
            if (!z2) {
                return null;
            }
            if (!((obj instanceof Bundle[]) || (obj instanceof Parcelable[]))) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : (Parcelable[]) obj) {
                if ((parcelable instanceof Bundle) && (A = m11003A((Bundle) parcelable)) != null && !A.isEmpty()) {
                    arrayList.add(A);
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    /* renamed from: E0 */
    private final int m10994E0(String str) {
        if (!m10960f0("event param", str)) {
            return 3;
        }
        if (!m10955k0("event param", null, str)) {
            return 14;
        }
        return !m10961e0("event param", 40, str) ? 3 : 0;
    }

    /* renamed from: G */
    public static String m10991G(String str, int i, boolean z) {
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

    /* renamed from: G0 */
    private final int m10990G0(String str) {
        if (!m10940u0("event param", str)) {
            return 3;
        }
        if (!m10955k0("event param", null, str)) {
            return 14;
        }
        return !m10961e0("event param", 40, str) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public static MessageDigest m10988H0() {
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

    /* renamed from: I */
    private static void m10987I(Bundle bundle, int i, String str, String str2, Object obj) {
        if (m10942t0(bundle, i)) {
            bundle.putString("_ev", m10991G(str, 40, true));
            if (obj != null) {
                Preconditions.m14523k(bundle);
                if (obj == null) {
                    return;
                }
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: J0 */
    private static boolean m10984J0(String str) {
        Preconditions.m14523k(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* renamed from: K0 */
    private final int m10982K0(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return "_id".equals(str) ? Indexable.MAX_URL_LENGTH : (!m11311l().m10880r(zzat.f8943h0) || !"_lgclid".equals(str)) ? 36 : 100;
    }

    /* renamed from: W */
    private final void m10969W(String str, String str2, String str3, Bundle bundle, @Nullable List<String> list, boolean z) {
        int i;
        int i2;
        if (bundle != null) {
            int i3 = 0;
            for (String str4 : new TreeSet(bundle.keySet())) {
                if (list == null || !list.contains(str4)) {
                    int E0 = z ? m10994E0(str4) : 0;
                    i = E0;
                    if (E0 == 0) {
                        i = m10990G0(str4);
                    }
                } else {
                    i = 0;
                }
                if (i != 0) {
                    m10987I(bundle, i, str4, str4, i == 3 ? str4 : null);
                    bundle.remove(str4);
                } else {
                    if (m10964b0(bundle.get(str4))) {
                        mo11081c().m11555I().m11537d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                        i2 = 22;
                    } else {
                        i2 = m10943t(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                    }
                    if (i2 != 0 && !"_ev".equals(str4)) {
                        m10987I(bundle, i2, str4, str4, bundle.get(str4));
                        bundle.remove(str4);
                    } else if (m10963c0(str4) && !m10956j0(str4, zzgv.f9370d)) {
                        int i4 = i3 + 1;
                        i3 = i4;
                        if (i4 > 0) {
                            mo11081c().m11558F().m11538c("Item cannot contain custom parameters", m11314i().m11569u(str2), m11314i().m11571s(bundle));
                            m10942t0(bundle, 23);
                            bundle.remove(str4);
                            i3 = i4;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public static boolean m10968X(Context context, boolean z) {
        Preconditions.m14523k(context);
        return Build.VERSION.SDK_INT >= 24 ? m10944s0(context, "com.google.android.gms.measurement.AppMeasurementJobService") : m10944s0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Y */
    public static boolean m10967Y(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z */
    public static boolean m10966Z(Bundle bundle, int i) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a0 */
    public static boolean m10965a0(Boolean bool, Boolean bool2) {
        if (bool == null && bool2 == null) {
            return true;
        }
        if (bool == null) {
            return false;
        }
        return bool.equals(bool2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b0 */
    public static boolean m10964b0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c0 */
    public static boolean m10963c0(String str) {
        Preconditions.m14527g(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i0 */
    public static boolean m10957i0(String str, String str2, String str3, String str4) {
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

    /* renamed from: j0 */
    private static boolean m10956j0(String str, String[] strArr) {
        Preconditions.m14523k(strArr);
        for (String str2 : strArr) {
            if (m10930z0(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m0 */
    public static boolean m10952m0(@Nullable List<String> list, @Nullable List<String> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null) {
            return false;
        }
        return list.equals(list2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n0 */
    public static byte[] m10951n0(Parcelable parcelable) {
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

    /* renamed from: q0 */
    public static Bundle m10947q0(Bundle bundle) {
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

    /* renamed from: r0 */
    public static ArrayList<Bundle> m10946r0(List<zzw> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzw zzwVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzwVar.f9776f);
            bundle.putString(FirebaseAnalytics.Param.ORIGIN, zzwVar.f9777g);
            bundle.putLong("creation_timestamp", zzwVar.f9779i);
            bundle.putString("name", zzwVar.f9778h.f9700g);
            zzgt.m11303b(bundle, zzwVar.f9778h.m11035B());
            bundle.putBoolean("active", zzwVar.f9780j);
            String str = zzwVar.f9781k;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzar zzarVar = zzwVar.f9782l;
            if (zzarVar != null) {
                bundle.putString("timed_out_event_name", zzarVar.f8882f);
                zzam zzamVar = zzwVar.f9782l.f8883g;
                if (zzamVar != null) {
                    bundle.putBundle("timed_out_event_params", zzamVar.m11701Y());
                }
            }
            bundle.putLong("trigger_timeout", zzwVar.f9783m);
            zzar zzarVar2 = zzwVar.f9784n;
            if (zzarVar2 != null) {
                bundle.putString("triggered_event_name", zzarVar2.f8882f);
                zzam zzamVar2 = zzwVar.f9784n.f8883g;
                if (zzamVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzamVar2.m11701Y());
                }
            }
            bundle.putLong("triggered_timestamp", zzwVar.f9778h.f9701h);
            bundle.putLong("time_to_live", zzwVar.f9785o);
            zzar zzarVar3 = zzwVar.f9786p;
            if (zzarVar3 != null) {
                bundle.putString("expired_event_name", zzarVar3.f8882f);
                zzam zzamVar3 = zzwVar.f9786p.f8883g;
                if (zzamVar3 != null) {
                    bundle.putBundle("expired_event_params", zzamVar3.m11701Y());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: s0 */
    private static boolean m10944s0(Context context, String str) {
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

    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m10943t(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, @androidx.annotation.Nullable java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkw.m10943t(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* renamed from: t0 */
    private static boolean m10942t0(Bundle bundle, int i) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    /* renamed from: v */
    public static long m10939v(long j, long j2) {
        return (j + (j2 * 60000)) / 86400000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v0 */
    public static Bundle[] m10938v0(Object obj) {
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

    /* renamed from: x */
    public static long m10935x(zzam zzamVar) {
        long j = 0;
        if (zzamVar == null) {
            return 0L;
        }
        Iterator<String> it = zzamVar.iterator();
        while (it.hasNext()) {
            Object W = zzamVar.m11702W(it.next());
            if (W instanceof Parcelable[]) {
                j += ((Parcelable[]) W).length;
            }
        }
        return j;
    }

    @VisibleForTesting
    /* renamed from: x0 */
    private final boolean m10934x0(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo e = Wrappers.m14278a(context).m14283e(str, 64);
            if (e == null || e.signatures == null || e.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(e.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e2) {
            mo11081c().m11560D().m11539b("Package name not found", e2);
            return true;
        } catch (CertificateException e3) {
            mo11081c().m11560D().m11539b("Error obtaining certificate", e3);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: y */
    public static long m10933y(byte[] bArr) {
        Preconditions.m14523k(bArr);
        int i = 0;
        Preconditions.m14520n(bArr.length > 0);
        long j = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j += (bArr[length] & 255) << i;
            i += 8;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z0 */
    public static boolean m10930z0(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public final Bundle m11003A(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object F = m10993F(str, bundle.get(str));
                if (F == null) {
                    mo11081c().m11555I().m11539b("Param value can't be null", m11314i().m11566x(str));
                } else {
                    m10981L(bundle2, str, F);
                }
            }
        }
        return bundle2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public final Bundle m11001B(String str, String str2, Bundle bundle, @Nullable List<String> list, boolean z, boolean z2) {
        Bundle bundle2;
        int i;
        boolean j0 = m10956j0(str2, zzgs.f9364d);
        if (bundle != null) {
            Bundle bundle3 = new Bundle(bundle);
            int w = m11311l().m10875w();
            int i2 = 0;
            for (String str3 : m11311l().m10901B(str, zzat.f8927Z) ? new TreeSet<>(bundle.keySet()) : bundle.keySet()) {
                if (list == null || !list.contains(str3)) {
                    int E0 = z ? m10994E0(str3) : 0;
                    i = E0;
                    if (E0 == 0) {
                        i = m10990G0(str3);
                    }
                } else {
                    i = 0;
                }
                if (i != 0) {
                    m10987I(bundle3, i, str3, str3, i == 3 ? str3 : null);
                    bundle3.remove(str3);
                    i2 = i2;
                } else {
                    int t = m10943t(str, str2, str3, bundle.get(str3), bundle3, list, z, j0);
                    if (t == 17) {
                        m10987I(bundle3, t, str3, str3, Boolean.FALSE);
                    } else if (t != 0 && !"_ev".equals(str3)) {
                        m10987I(bundle3, t, t == 21 ? str2 : str3, str3, bundle.get(str3));
                        bundle3.remove(str3);
                        i2 = i2;
                    }
                    i2 = i2;
                    if (m10963c0(str3)) {
                        i2++;
                        if (i2 > w) {
                            StringBuilder sb = new StringBuilder(48);
                            sb.append("Event can't contain more than ");
                            sb.append(w);
                            sb.append(" params");
                            mo11081c().m11558F().m11538c(sb.toString(), m11314i().m11569u(str2), m11314i().m11571s(bundle));
                            m10942t0(bundle3, 5);
                            bundle3.remove(str3);
                        } else {
                            i2 = i2;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public final boolean m11000B0(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return m11311l().m10889N().equals(str);
    }

    /* renamed from: C0 */
    public final long m10998C0() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.f9714d.get() == 0) {
            synchronized (this.f9714d) {
                nextLong = new Random(System.nanoTime() ^ mo11085a().mo14335a()).nextLong();
                int i = this.f9715e + 1;
                this.f9715e = i;
                j = i;
            }
            return nextLong + j;
        }
        synchronized (this.f9714d) {
            this.f9714d.compareAndSet(-1L, 1L);
            andIncrement = this.f9714d.getAndIncrement();
        }
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public final zzar m10997D(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2, boolean z3) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (m10941u(str2, z3) == 0) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            Bundle B = m11001B(str, str2, bundle2, CollectionUtils.m14339b("_o"), false, false);
            Bundle bundle3 = B;
            if (z) {
                bundle3 = m11003A(B);
            }
            return new zzar(str2, new zzam(bundle3), str3, j);
        }
        mo11081c().m11560D().m11539b("Invalid conditional property event name", m11314i().m11565y(str2));
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public final Object m10993F(String str, Object obj) {
        boolean equals = "_ev".equals(str);
        int i = Indexable.MAX_URL_LENGTH;
        if (equals) {
            return m10995E(Indexable.MAX_URL_LENGTH, obj, true, true);
        }
        if (!m11002A0(str)) {
            i = 100;
        }
        return m10995E(i, obj, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: F0 */
    public final SecureRandom m10992F0() {
        mo11316e();
        if (this.f9713c == null) {
            this.f9713c = new SecureRandom();
        }
        return this.f9713c;
    }

    /* renamed from: H */
    public final URL m10989H(long j, @NonNull String str, @NonNull String str2, long j2) {
        try {
            Preconditions.m14527g(str2);
            Preconditions.m14527g(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", Long.valueOf(j), Integer.valueOf(m10986I0())), str2, str, Long.valueOf(j2));
            String str3 = format;
            if (str.equals(m11311l().m10888O())) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            mo11081c().m11560D().m11539b("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    /* renamed from: I0 */
    public final int m10986I0() {
        if (this.f9716f == null) {
            this.f9716f = Integer.valueOf(GoogleApiAvailabilityLight.m15064h().m15070b(mo11075f()) / 1000);
        }
        return this.f9716f.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: J */
    public final void m10985J(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            mo11081c().m11557G().m11539b("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public final void m10983K(Bundle bundle, Bundle bundle2) {
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                if (!bundle.containsKey(str)) {
                    m11313j().m10981L(bundle, str, bundle2.get(str));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public final void m10981L(Bundle bundle, String str, Object obj) {
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
                mo11081c().m11555I().m11538c("Not putting event parameter. Invalid value type. name, type", m11314i().m11566x(str), obj != null ? obj.getClass().getSimpleName() : null);
            }
        }
    }

    /* renamed from: L0 */
    public final boolean m10980L0() {
        try {
            mo11075f().getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: M */
    public final void m10979M(zzw zzwVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f9354a.mo11081c().m11557G().m11539b("Error returning int value to wrapper", e);
        }
    }

    /* renamed from: N */
    public final void m10978N(zzw zzwVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f9354a.mo11081c().m11557G().m11539b("Error returning long value to wrapper", e);
        }
    }

    /* renamed from: O */
    public final void m10977O(zzw zzwVar, Bundle bundle) {
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f9354a.mo11081c().m11557G().m11539b("Error returning bundle value to wrapper", e);
        }
    }

    /* renamed from: P */
    public final void m10976P(zzw zzwVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f9354a.mo11081c().m11557G().m11539b("Error returning string value to wrapper", e);
        }
    }

    /* renamed from: Q */
    public final void m10975Q(zzw zzwVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f9354a.mo11081c().m11557G().m11539b("Error returning bundle list to wrapper", e);
        }
    }

    /* renamed from: R */
    public final void m10974R(zzw zzwVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f9354a.mo11081c().m11557G().m11539b("Error returning boolean value to wrapper", e);
        }
    }

    /* renamed from: S */
    public final void m10973S(zzw zzwVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzwVar.zza(bundle);
        } catch (RemoteException e) {
            this.f9354a.mo11081c().m11557G().m11539b("Error returning byte array to wrapper", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public final void m10972T(zzev zzevVar, int i) {
        int i2 = 0;
        for (String str : new TreeSet(zzevVar.f9129d.keySet())) {
            if (m10963c0(str)) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    StringBuilder sb = new StringBuilder(48);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    mo11081c().m11558F().m11538c(sb.toString(), m11314i().m11569u(zzevVar.f9126a), m11314i().m11571s(zzevVar.f9129d));
                    m10942t0(zzevVar.f9129d, 5);
                    zzevVar.f9129d.remove(str);
                    i2 = i3;
                }
            }
        }
    }

    /* renamed from: U */
    public final void m10971U(zzkv zzkvVar, int i, String str, String str2, int i2) {
        m10970V(zzkvVar, null, i, str, str2, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public final void m10970V(zzkv zzkvVar, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        m10942t0(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        if (!zzlx.m11967a() || !m11311l().m10880r(zzat.f8916O0)) {
            this.f9354a.m11382F().m11273X("auto", "_err", bundle);
        } else {
            zzkvVar.mo11004a(str, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"ApplySharedPref"})
    /* renamed from: d0 */
    public final boolean m10962d0(String str, double d) {
        try {
            SharedPreferences.Editor edit = mo11075f().getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
            edit.putString("deeplink", str);
            edit.putLong("timestamp", Double.doubleToRawLongBits(d));
            return edit.commit();
        } catch (Exception e) {
            mo11081c().m11560D().m11539b("Failed to persist Deferred Deep Link. exception", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e0 */
    public final boolean m10961e0(String str, int i, String str2) {
        if (str2 == null) {
            mo11081c().m11558F().m11539b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            mo11081c().m11558F().m11537d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f0 */
    public final boolean m10960f0(String str, String str2) {
        if (str2 == null) {
            mo11081c().m11558F().m11539b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            mo11081c().m11558F().m11539b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                mo11081c().m11558F().m11538c("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    mo11081c().m11558F().m11538c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g0 */
    public final boolean m10959g0(String str, String str2, int i, Object obj) {
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
        mo11081c().m11555I().m11537d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h0 */
    public final boolean m10958h0(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (m10984J0(str)) {
                return true;
            }
            if (!this.f9354a.m11378J()) {
                return false;
            }
            mo11081c().m11558F().m11539b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzer.m11546v(str));
            return false;
        } else if (zznt.m11872a() && m11311l().m10880r(zzat.f8947j0) && !TextUtils.isEmpty(str3)) {
            return true;
        } else {
            if (!TextUtils.isEmpty(str2)) {
                if (m10984J0(str2)) {
                    return true;
                }
                mo11081c().m11558F().m11539b("Invalid admob_app_id. Analytics disabled.", zzer.m11546v(str2));
                return false;
            } else if (!this.f9354a.m11378J()) {
                return false;
            } else {
                mo11081c().m11558F().m11540a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k0 */
    public final boolean m10955k0(String str, String[] strArr, String str2) {
        return m10954l0(str, strArr, null, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l0 */
    public final boolean m10954l0(String str, String[] strArr, String[] strArr2, String str2) {
        boolean z;
        if (str2 == null) {
            mo11081c().m11558F().m11539b("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.m14523k(str2);
        String[] strArr3 = f9711g;
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
            mo11081c().m11558F().m11538c("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        } else if (strArr == null || !m10956j0(str2, strArr)) {
            return true;
        } else {
            if (strArr2 != null && m10956j0(str2, strArr2)) {
                return true;
            }
            mo11081c().m11558F().m11538c("Name is reserved. Type, name", str, str2);
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.measurement.internal.zzgr
    @androidx.annotation.WorkerThread
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo10953m() {
        /*
            r5 = this;
            r0 = r5
            r0.mo11316e()
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
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11557G()
            java.lang.String r1 = "Utils falling back to Random for random id"
            r0.m11540a(r1)
            r0 = r7
            r9 = r0
        L_0x0038:
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.f9714d
            r1 = r9
            r0.set(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkw.mo10953m():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o0 */
    public final int m10950o0(String str) {
        if (!m10940u0("user property", str)) {
            return 6;
        }
        if (!m10955k0("user property", zzgu.f9365a, str)) {
            return 15;
        }
        return !m10961e0("user property", 24, str) ? 6 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p0 */
    public final int m10949p0(String str, Object obj) {
        return "_ldl".equals(str) ? m10959g0("user property referrer", str, m10982K0(str), obj) : m10959g0("user property", str, m10982K0(str), obj) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    /* renamed from: q */
    protected final boolean mo10948q() {
        return true;
    }

    /* renamed from: s */
    public final int m10945s(int i) {
        return GoogleApiAvailabilityLight.m15064h().mo15062j(mo11075f(), GooglePlayServicesUtilLight.f6984a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public final int m10941u(String str, boolean z) {
        if (!m10940u0(Constants.FirelogAnalytics.PARAM_EVENT, str)) {
            return 2;
        }
        if (z) {
            if (!m10954l0(Constants.FirelogAnalytics.PARAM_EVENT, zzgs.f9361a, zzgs.f9362b, str)) {
                return 13;
            }
        } else if (!m10955k0(Constants.FirelogAnalytics.PARAM_EVENT, zzgs.f9361a, str)) {
            return 13;
        }
        return !m10961e0(Constants.FirelogAnalytics.PARAM_EVENT, 40, str) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u0 */
    public final boolean m10940u0(String str, String str2) {
        if (str2 == null) {
            mo11081c().m11558F().m11539b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            mo11081c().m11558F().m11539b("Name is required and can't be empty. Type", str);
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
                        mo11081c().m11558F().m11538c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            mo11081c().m11558F().m11538c("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0086 -> B:17:0x0094). Please submit an issue!!! */
    @WorkerThread
    /* renamed from: w */
    public final long m10937w(Context context, String str) {
        mo11316e();
        Preconditions.m14523k(context);
        Preconditions.m14527g(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest H0 = m10988H0();
        long j = -1;
        if (H0 == null) {
            mo11081c().m11560D().m11540a("Could not get MD5 instance");
        } else {
            if (packageManager != null) {
                try {
                } catch (PackageManager.NameNotFoundException e) {
                    mo11081c().m11560D().m11539b("Package name not found", e);
                }
                if (!m10934x0(context, str)) {
                    PackageInfo e2 = Wrappers.m14278a(context).m14283e(mo11075f().getPackageName(), 64);
                    if (e2.signatures == null || e2.signatures.length <= 0) {
                        mo11081c().m11557G().m11540a("Could not get signatures");
                    } else {
                        j = m10933y(H0.digest(e2.signatures[0].toByteArray()));
                    }
                }
            }
            j = 0;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w0 */
    public final Object m10936w0(String str, Object obj) {
        return "_ldl".equals(str) ? m10995E(m10982K0(str), obj, true, false) : m10995E(m10982K0(str), obj, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: y0 */
    public final boolean m10932y0(String str) {
        mo11316e();
        if (Wrappers.m14278a(mo11075f()).m14287a(str) == 0) {
            return true;
        }
        mo11081c().m11553K().m11539b("Permission not granted", str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public final Bundle m10931z(@NonNull Uri uri) {
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
            mo11081c().m11557G().m11539b("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }
}
