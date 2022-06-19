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
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.internal.measurement.AbstractC13706nc;
import com.google.android.gms.internal.measurement.C13650la;
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
/* renamed from: com.google.android.gms.measurement.internal.ju */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ju.class */
public final class C14116ju extends AbstractC14001fn {

    /* renamed from: a */
    public static final /* synthetic */ int f51995a = 0;

    /* renamed from: b */
    private static final String[] f51996b = {"firebase_", "google_", "ga_"};

    /* renamed from: c */
    private static final String[] f51997c = {"_err"};

    /* renamed from: d */
    private SecureRandom f51998d;

    /* renamed from: f */
    private int f52000f;

    /* renamed from: g */
    private Integer f52001g = null;

    /* renamed from: e */
    private final AtomicLong f51999e = new AtomicLong(0);

    public C14116ju(C13979es c13979es) {
        super(c13979es);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0139  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m11578a(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14116ju.m11578a(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* renamed from: a */
    public static long m11610a(long j, long j2) {
        return (j + (j2 * Constants.MINUTE_IN_MILLIS)) / 86400000;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: a */
    public static long m11573a(byte[] bArr) {
        C12045o.m19162a(bArr);
        int length = bArr.length;
        int i = 0;
        C12045o.m19158a(length > 0);
        char c = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            c += (bArr[i2] & 255) << i;
            i += 8;
        }
        return c;
    }

    /* renamed from: a */
    private final Object m11611a(int i, Object obj, boolean z, boolean z2) {
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
                return m11587a(String.valueOf(obj), i, z);
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
                    Bundle m11606a = m11606a((Bundle) parcelable);
                    if (!m11606a.isEmpty()) {
                        arrayList.add(m11606a);
                    }
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    /* renamed from: a */
    public static String m11587a(String str, int i, boolean z) {
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

    /* renamed from: a */
    public static ArrayList<Bundle> m11574a(List<zzaa> list) {
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
            C14003fp.m11878a(bundle, zzaaVar.zzc.zza());
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

    /* renamed from: a */
    private void m11604a(Bundle bundle, int i, String str, Object obj) {
        if (m11605a(bundle, i)) {
            bundle.putString("_ev", m11587a(str, 40, true));
            if (obj == null) {
                return;
            }
            C12045o.m19162a(bundle);
            if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
                return;
            }
            bundle.putLong("_el", String.valueOf(obj).length());
        }
    }

    /* renamed from: a */
    private void m11579a(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        int i2;
        if (bundle == null) {
            return;
        }
        int i3 = 0;
        for (String str4 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str4)) {
                int m11558h = z ? m11558h(str4) : 0;
                i = m11558h;
                if (m11558h == 0) {
                    i = m11557i(str4);
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                m11604a(bundle, i, str4, i == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (m11590a(bundle.get(str4))) {
                    this.f51637t.mo11661c().f51400h.m12089a("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                    i2 = 22;
                } else {
                    i2 = m11578a(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                }
                if (i2 != 0 && !"_ev".equals(str4)) {
                    m11604a(bundle, i2, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (m11589a(str4) && !m11576a(str4, C14005fr.f51646d)) {
                    int i4 = i3 + 1;
                    i3 = i4;
                    if (i4 > 0) {
                        this.f51637t.mo11661c().f51397e.m12090a("Item cannot contain custom parameters", this.f51637t.m11987h().m12097a(str2), this.f51637t.m11987h().m12098a(bundle));
                        m11605a(bundle, 23);
                        bundle.remove(str4);
                        i3 = i4;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m11609a(Context context) {
        C12045o.m19162a(context);
        return Build.VERSION.SDK_INT >= 24 ? m11570b(context, "com.google.android.gms.measurement.AppMeasurementJobService") : m11570b(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* renamed from: a */
    private static boolean m11605a(Bundle bundle, int i) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m11590a(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* renamed from: a */
    public static boolean m11589a(String str) {
        C12045o.m19160a(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* renamed from: a */
    public static boolean m11577a(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            C12045o.m19162a(str);
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

    /* renamed from: a */
    private static boolean m11576a(String str, String[] strArr) {
        C12045o.m19162a(strArr);
        for (String str2 : strArr) {
            if (m11564c(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static byte[] m11600a(Parcelable parcelable) {
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
    public static boolean m11571b(Context context) {
        ActivityInfo receiverInfo;
        C12045o.m19162a(context);
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

    /* renamed from: b */
    private static boolean m11570b(Context context, String str) {
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
    public static boolean m11564c(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str != null) {
            return str.equals(str2);
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m11561e(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* renamed from: g */
    public static boolean m11559g(String str) {
        return !f51997c[0].equals(str);
    }

    /* renamed from: h */
    private int m11558h(String str) {
        if (!m11585a("event param", str)) {
            return 3;
        }
        if (!m11575a("event param", (String[]) null, (String[]) null, str)) {
            return 14;
        }
        return !m11588a("event param", 40, str) ? 3 : 0;
    }

    /* renamed from: i */
    private int m11557i(String str) {
        if (!m11567b("event param", str)) {
            return 3;
        }
        if (!m11575a("event param", (String[]) null, (String[]) null, str)) {
            return 14;
        }
        return !m11588a("event param", 40, str) ? 3 : 0;
    }

    /* renamed from: j */
    private final int m11556j(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return !"_id".equals(str) ? (!this.f51637t.f51529g.m12061d(null, C13935dc.f51317ae) || !"_lgclid".equals(str)) ? 36 : 100 : PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
    }

    /* renamed from: k */
    private static boolean m11555k(String str) {
        C12045o.m19162a(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* renamed from: m */
    public static MessageDigest m11553m() {
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

    /* renamed from: a */
    public final Bundle m11607a(Uri uri) {
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
                this.f51637t.mo11661c().f51398f.m12091a("Install referrer url isn't a hierarchical URI", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final Bundle m11606a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object m11586a = m11586a(str, bundle.get(str));
                if (m11586a == null) {
                    this.f51637t.mo11661c().f51400h.m12091a("Param value can't be null", this.f51637t.m11987h().m12094b(str));
                } else {
                    m11601a(bundle2, str, m11586a);
                }
            }
        }
        return bundle2;
    }

    /* renamed from: a */
    public final Bundle m11581a(String str, String str2, Bundle bundle, List<String> list, boolean z) {
        int i;
        boolean m11576a = m11576a(str2, C14004fq.f51642d);
        Bundle bundle2 = new Bundle(bundle);
        int m12073P_ = this.f51637t.f51529g.m12073P_();
        int i2 = 0;
        for (String str3 : this.f51637t.f51529g.m12061d(str, C13935dc.f51300W) ? new TreeSet(bundle.keySet()) : bundle.keySet()) {
            if (list == null || !list.contains(str3)) {
                int m11558h = z ? m11558h(str3) : 0;
                i = m11558h;
                if (m11558h == 0) {
                    i = m11557i(str3);
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                m11604a(bundle2, i, str3, i == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int m11578a = m11578a(str, str2, str3, bundle.get(str3), bundle2, list, z, m11576a);
                if (m11578a == 17) {
                    m11604a(bundle2, 17, str3, Boolean.FALSE);
                } else if (m11578a != 0 && !"_ev".equals(str3)) {
                    m11604a(bundle2, m11578a, m11578a == 21 ? str2 : str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (m11589a(str3)) {
                    i2++;
                    if (i2 > m12073P_) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Event can't contain more than ");
                        sb.append(m12073P_);
                        sb.append(" params");
                        this.f51637t.mo11661c().f51397e.m12090a(sb.toString(), this.f51637t.m11987h().m12097a(str2), this.f51637t.m11987h().m12098a(bundle));
                        m11605a(bundle2, 5);
                        bundle2.remove(str3);
                    }
                }
            }
        }
        return bundle2;
    }

    /* renamed from: a */
    public final zzas m11582a(String str, String str2, Bundle bundle, String str3, long j, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (m11569b(str2) != 0) {
            this.f51637t.mo11661c().f51395c.m12091a("Invalid conditional property event name", this.f51637t.m11987h().m12093c(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle m11581a = m11581a(str, str2, bundle2, Collections.singletonList("_o"), false);
        Bundle bundle3 = m11581a;
        if (z) {
            bundle3 = m11606a(m11581a);
        }
        C12045o.m19162a(bundle3);
        return new zzas(str2, new zzaq(bundle3), str3, j);
    }

    /* renamed from: a */
    public final Object m11586a(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            return m11611a(PropertyFlags.INDEX_PARTIAL_SKIP_NULL, obj, true, true);
        }
        if (!m11561e(str)) {
            i = 100;
        }
        return m11611a(i, obj, false, true);
    }

    /* renamed from: a */
    public final URL m11583a(String str, String str2, long j) {
        try {
            C12045o.m19160a(str2);
            C12045o.m19160a(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 39065L, Integer.valueOf(m11552n())), str2, str, Long.valueOf(j));
            String str3 = format;
            if (str.equals(this.f51637t.f51529g.m12062d("debug.deferred.deeplink"))) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            this.f51637t.mo11661c().f51395c.m12091a("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public final void m11603a(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.f51637t.mo11661c().f51398f.m12091a("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    /* renamed from: a */
    public final void m11602a(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.f51637t.m11988g().m11601a(bundle, str, bundle2.get(str));
            }
        }
    }

    /* renamed from: a */
    public final void m11601a(Bundle bundle, String str, Object obj) {
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
            this.f51637t.mo11661c().f51400h.m12090a("Not putting event parameter. Invalid value type. name, type", this.f51637t.m11987h().m12094b(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    /* renamed from: a */
    public final void m11599a(AbstractC13706nc abstractC13706nc, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error returning int value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m11598a(AbstractC13706nc abstractC13706nc, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error returning long value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m11597a(AbstractC13706nc abstractC13706nc, Bundle bundle) {
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error returning bundle value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m11596a(AbstractC13706nc abstractC13706nc, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error returning string value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m11595a(AbstractC13706nc abstractC13706nc, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error returning bundle list to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m11594a(AbstractC13706nc abstractC13706nc, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error returning boolean value to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m11593a(AbstractC13706nc abstractC13706nc, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            abstractC13706nc.mo12294a(bundle);
        } catch (RemoteException e) {
            this.f51637t.mo11661c().f51398f.m12091a("Error returning byte array to wrapper", e);
        }
    }

    /* renamed from: a */
    public final void m11592a(C13948dp c13948dp, int i) {
        int i2 = 0;
        for (String str : new TreeSet(c13948dp.f51408d.keySet())) {
            if (m11589a(str)) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    StringBuilder sb = new StringBuilder(48);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    this.f51637t.mo11661c().f51397e.m12090a(sb.toString(), this.f51637t.m11987h().m12097a(c13948dp.f51405a), this.f51637t.m11987h().m12098a(c13948dp.f51408d));
                    m11605a(c13948dp.f51408d, 5);
                    c13948dp.f51408d.remove(str);
                    i2 = i3;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m11591a(AbstractC14115jt abstractC14115jt, String str, int i, String str2, String str3, int i2, boolean z) {
        Bundle bundle = new Bundle();
        m11605a(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        if (z) {
            abstractC14115jt.mo11612a(str, bundle);
        } else {
            this.f51637t.m11989f().m11856a("auto", "_err", bundle);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: a */
    protected final boolean mo11519a() {
        return true;
    }

    /* renamed from: a */
    public final boolean m11608a(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo m19259b = C11946c.m19258a(context).m19259b(str, 64);
            if (m19259b == null || m19259b.signatures == null || m19259b.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(m19259b.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            this.f51637t.mo11661c().f51395c.m12091a("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.f51637t.mo11661c().f51395c.m12091a("Error obtaining certificate", e2);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m11588a(String str, int i, String str2) {
        if (str2 == null) {
            this.f51637t.mo11661c().f51397e.m12091a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            this.f51637t.mo11661c().f51397e.m12089a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m11585a(String str, String str2) {
        if (str2 == null) {
            this.f51637t.mo11661c().f51397e.m12091a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f51637t.mo11661c().f51397e.m12091a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.f51637t.mo11661c().f51397e.m12090a("Name must start with a letter. Type, name", str, str2);
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
                    this.f51637t.mo11661c().f51397e.m12090a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i + Character.charCount(codePointAt2);
            }
        }
    }

    /* renamed from: a */
    public final boolean m11584a(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) <= i) {
                return true;
            }
            this.f51637t.mo11661c().f51400h.m12089a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m11580a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (m11555k(str)) {
                return true;
            }
            if (!TextUtils.isEmpty(this.f51637t.f51524b)) {
                return false;
            }
            this.f51637t.mo11661c().f51397e.m12091a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", C13947do.m12087a(str));
            return false;
        }
        C13650la.m12368b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51319ag) && !TextUtils.isEmpty(str3)) {
            return true;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (m11555k(str2)) {
                return true;
            }
            this.f51637t.mo11661c().f51397e.m12091a("Invalid admob_app_id. Analytics disabled.", C13947do.m12087a(str2));
            return false;
        } else if (!TextUtils.isEmpty(this.f51637t.f51524b)) {
            return false;
        } else {
            this.f51637t.mo11661c().f51397e.m12092a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m11575a(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.f51637t.mo11661c().f51397e.m12091a("Name is required and can't be null. Type", str);
            return false;
        }
        C12045o.m19162a(str2);
        String[] strArr3 = f51996b;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.f51637t.mo11661c().f51397e.m12090a("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !m11576a(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && m11576a(str2, strArr2)) {
            return true;
        }
        this.f51637t.mo11661c().f51397e.m12090a("Name is reserved. Type, name", str, str2);
        return false;
    }

    /* renamed from: b */
    public final int m11569b(String str) {
        if (!m11567b("event", str)) {
            return 2;
        }
        if (!m11575a("event", C14004fq.f51639a, C14004fq.f51640b, str)) {
            return 13;
        }
        return !m11588a("event", 40, str) ? 2 : 0;
    }

    /* renamed from: b */
    public final int m11568b(String str, Object obj) {
        return "_ldl".equals(str) ? m11584a("user property referrer", str, m11556j(str), obj) : m11584a("user property", str, m11556j(str), obj) ? 0 : 7;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: b */
    protected final void mo11572b() {
        mo11884S_();
        SecureRandom secureRandom = new SecureRandom();
        ?? nextLong = secureRandom.nextLong();
        char c = nextLong;
        if (nextLong == 0) {
            ?? nextLong2 = secureRandom.nextLong();
            c = nextLong2;
            if (nextLong2 == 0) {
                this.f51637t.mo11661c().f51398f.m12092a("Utils falling back to Random for random id");
                c = nextLong2;
            }
        }
        this.f51999e.set(c);
    }

    /* renamed from: b */
    public final boolean m11567b(String str, String str2) {
        if (str2 == null) {
            this.f51637t.mo11661c().f51397e.m12091a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f51637t.mo11661c().f51397e.m12091a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            int i = codePointAt;
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt != 95) {
                    this.f51637t.mo11661c().f51397e.m12090a("Name must start with a letter or _ (underscore). Type, name", str, str2);
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
                    this.f51637t.mo11661c().f51397e.m12090a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i2 + Character.charCount(codePointAt2);
            }
        }
    }

    /* renamed from: c */
    public final int m11566c(String str) {
        if (!m11567b("user property", str)) {
            return 6;
        }
        if (!m11575a("user property", C14006fs.f51647a, (String[]) null, str)) {
            return 15;
        }
        return !m11588a("user property", 24, str) ? 6 : 0;
    }

    /* renamed from: c */
    public final Object m11565c(String str, Object obj) {
        return "_ldl".equals(str) ? m11611a(m11556j(str), obj, true, false) : m11611a(m11556j(str), obj, false, false);
    }

    /* renamed from: d */
    public final boolean m11563d(String str) {
        mo11884S_();
        if (C11946c.m19258a(this.f51637t.f51523a).m19263a(str) == 0) {
            return true;
        }
        this.f51637t.mo11661c().f51402j.m12091a("Permission not granted", str);
        return false;
    }

    /* renamed from: e */
    public final long m11562e() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.f51999e.get() != 0) {
            synchronized (this.f51999e) {
                this.f51999e.compareAndSet(-1L, 1L);
                andIncrement = this.f51999e.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.f51999e) {
            nextLong = new Random(System.nanoTime() ^ this.f51637t.f51532j.mo19039a()).nextLong();
            int i = this.f52000f + 1;
            this.f52000f = i;
            j = i;
        }
        return nextLong + j;
    }

    /* renamed from: f */
    public final boolean m11560f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.f51637t.f51529g.m12062d("debug.firebase.analytics.app").equals(str);
    }

    @EnsuresNonNull({"this.secureRandom"})
    /* renamed from: l */
    public final SecureRandom m11554l() {
        mo11884S_();
        if (this.f51998d == null) {
            this.f51998d = new SecureRandom();
        }
        return this.f51998d;
    }

    @EnsuresNonNull({"this.apkVersion"})
    /* renamed from: n */
    public final int m11552n() {
        if (this.f52001g == null) {
            C11941c.m19271b();
            this.f52001g = Integer.valueOf(C11941c.m19268c(this.f51637t.f51523a) / 1000);
        }
        return this.f52001g.intValue();
    }

    /* renamed from: o */
    public final int m11551o() {
        return C11941c.m19271b().mo19269b(this.f51637t.f51523a, C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }
}
