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
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6228f;
import com.google.android.gms.internal.measurement.AbstractC7441kc;
import com.google.android.gms.internal.measurement.C7411ia;
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
/* renamed from: com.google.android.gms.measurement.internal.u9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/u9.class */
public final class C7885u9 extends AbstractC7804n5 {

    /* renamed from: c */
    private static final String[] f35722c = {"firebase_", "google_", "ga_"};

    /* renamed from: d */
    private static final String[] f35723d = {"_err"};

    /* renamed from: e */
    public static final /* synthetic */ int f35724e = 0;

    /* renamed from: f */
    private SecureRandom f35725f;

    /* renamed from: h */
    private int f35727h;

    /* renamed from: i */
    private Integer f35728i = null;

    /* renamed from: g */
    private final AtomicLong f35726g = new AtomicLong(0);

    public C7885u9(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: A */
    public static MessageDigest m6000A() {
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
    /* renamed from: B */
    public static long m5999B(byte[] bArr) {
        C6155o.m17018j(bArr);
        int length = bArr.length;
        int i = 0;
        C6155o.m17015m(length > 0);
        char c = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            c += (bArr[i2] & 255) << i;
            i += 8;
        }
        return c;
    }

    /* renamed from: D */
    public static boolean m5998D(Context context, boolean z) {
        C6155o.m17018j(context);
        return Build.VERSION.SDK_INT >= 24 ? m5970f0(context, "com.google.android.gms.measurement.AppMeasurementJobService") : m5970f0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* renamed from: F */
    public static boolean m5996F(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* renamed from: G */
    public static boolean m5995G(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str != null) {
            return str.equals(str2);
        }
        return false;
    }

    /* renamed from: M */
    public static boolean m5989M(String str) {
        return !f35723d[0].equals(str);
    }

    /* renamed from: Y */
    public static ArrayList<Bundle> m5977Y(List<zzaa> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzaa zzaaVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzaaVar.f35860d);
            bundle.putString("origin", zzaaVar.f35861e);
            bundle.putLong("creation_timestamp", zzaaVar.f35863g);
            bundle.putString(ShortCut.NAME, zzaaVar.f35862f.f35877e);
            C7826p5.m6099a(bundle, zzaaVar.f35862f.m5862k0());
            bundle.putBoolean("active", zzaaVar.f35864h);
            String str = zzaaVar.f35865i;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzas zzasVar = zzaaVar.f35866j;
            if (zzasVar != null) {
                bundle.putString("timed_out_event_name", zzasVar.f35872d);
                zzaq zzaqVar = zzaaVar.f35866j.f35873e;
                if (zzaqVar != null) {
                    bundle.putBundle("timed_out_event_params", zzaqVar.m5864p0());
                }
            }
            bundle.putLong("trigger_timeout", zzaaVar.f35867k);
            zzas zzasVar2 = zzaaVar.f35868l;
            if (zzasVar2 != null) {
                bundle.putString("triggered_event_name", zzasVar2.f35872d);
                zzaq zzaqVar2 = zzaaVar.f35868l.f35873e;
                if (zzaqVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzaqVar2.m5864p0());
                }
            }
            bundle.putLong("triggered_timestamp", zzaaVar.f35862f.f35878f);
            bundle.putLong("time_to_live", zzaaVar.f35869m);
            zzas zzasVar3 = zzaaVar.f35870n;
            if (zzasVar3 != null) {
                bundle.putString("expired_event_name", zzasVar3.f35872d);
                zzaq zzaqVar3 = zzaaVar.f35870n.f35873e;
                if (zzaqVar3 != null) {
                    bundle.putBundle("expired_event_params", zzaqVar3.m5864p0());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: a0 */
    public static boolean m5975a0(Context context) {
        ActivityInfo receiverInfo;
        C6155o.m17018j(context);
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

    /* renamed from: b0 */
    static final boolean m5974b0(Bundle bundle, int i) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            return true;
        }
        return false;
    }

    /* renamed from: c0 */
    static final boolean m5973c0(String str) {
        C6155o.m17018j(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* renamed from: d0 */
    private final Object m5972d0(int i, Object obj, boolean z, boolean z2) {
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
                return m5958o(String.valueOf(obj), i, z);
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
                    Bundle m5993I = m5993I((Bundle) parcelable);
                    if (!m5993I.isEmpty()) {
                        arrayList.add(m5993I);
                    }
                }
            }
            return arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    /* renamed from: e0 */
    private final int m5971e0(String str) {
        if ("_ldl".equals(str)) {
            this.f35460a.m6006y();
            return 2048;
        } else if ("_id".equals(str)) {
            this.f35460a.m6006y();
            return 256;
        } else if (!this.f35460a.m6006y().m6471u(null, C7672c3.f35075g0) || !"_lgclid".equals(str)) {
            this.f35460a.m6006y();
            return 36;
        } else {
            this.f35460a.m6006y();
            return 100;
        }
    }

    /* renamed from: f0 */
    private static boolean m5970f0(Context context, String str) {
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

    /* renamed from: g0 */
    private static boolean m5969g0(String str, String[] strArr) {
        C6155o.m17018j(strArr);
        for (String str2 : strArr) {
            if (m5995G(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j0 */
    public static boolean m5965j0(String str) {
        C6155o.m17022f(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* renamed from: E */
    public final boolean m5997E(String str) {
        mo6113f();
        if (C6198c.m16885a(this.f35460a.mo6030a()).m16893a(str) == 0) {
            return true;
        }
        this.f35460a.mo6047C().m6188t().m6215b("Permission not granted", str);
        return false;
    }

    /* renamed from: H */
    public final boolean m5994H(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String m6491D = this.f35460a.m6006y().m6491D();
        this.f35460a.mo6028c();
        return m6491D.equals(str);
    }

    /* renamed from: I */
    public final Bundle m5993I(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object m5954q = m5954q(str, bundle.get(str));
                if (m5954q == null) {
                    this.f35460a.mo6047C().m6190r().m6215b("Param value can't be null", this.f35460a.m6042H().m6344o(str));
                } else {
                    m5941y(bundle2, str, m5954q);
                }
            }
        }
        return bundle2;
    }

    /* renamed from: J */
    public final zzas m5992J(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (m5955p0(str2) != 0) {
            this.f35460a.mo6047C().m6195m().m6215b("Invalid conditional property event name", this.f35460a.m6042H().m6343p(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle m5952r = m5952r(str, str2, bundle2, C6228f.m16816b("_o"), false);
        Bundle bundle3 = m5952r;
        if (z) {
            bundle3 = m5993I(m5952r);
        }
        C6155o.m17018j(bundle3);
        return new zzas(str2, new zzaq(bundle3), str3, j);
    }

    /* renamed from: K */
    public final boolean m5991K(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo m16888f = C6198c.m16885a(context).m16888f(str, 64);
            if (m16888f != null && (signatureArr = m16888f.signatures) != null && signatureArr.length > 0) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            this.f35460a.mo6047C().m6195m().m6215b("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            this.f35460a.mo6047C().m6195m().m6215b("Error obtaining certificate", e2);
            return true;
        }
    }

    /* renamed from: L */
    public final byte[] m5990L(Parcelable parcelable) {
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
    /* renamed from: N */
    public final int m5988N() {
        if (this.f35728i == null) {
            this.f35728i = Integer.valueOf(C6086c.m17221f().m17226a(this.f35460a.mo6030a()) / 1000);
        }
        return this.f35728i.intValue();
    }

    /* renamed from: O */
    public final int m5987O(int i) {
        return C6086c.m17221f().mo17219h(this.f35460a.mo6030a(), C6094e.f19409a);
    }

    /* renamed from: P */
    public final long m5986P(long j, long j2) {
        return (j + (j2 * 60000)) / 86400000;
    }

    /* renamed from: Q */
    public final void m5985Q(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            this.f35460a.mo6047C().m6192p().m6215b("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    /* renamed from: R */
    public final void m5984R(AbstractC7441kc abstractC7441kc, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error returning string value to wrapper", e);
        }
    }

    /* renamed from: S */
    public final void m5983S(AbstractC7441kc abstractC7441kc, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error returning long value to wrapper", e);
        }
    }

    /* renamed from: T */
    public final void m5982T(AbstractC7441kc abstractC7441kc, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error returning int value to wrapper", e);
        }
    }

    /* renamed from: U */
    public final void m5981U(AbstractC7441kc abstractC7441kc, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error returning byte array to wrapper", e);
        }
    }

    /* renamed from: V */
    public final void m5980V(AbstractC7441kc abstractC7441kc, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error returning boolean value to wrapper", e);
        }
    }

    /* renamed from: W */
    public final void m5979W(AbstractC7441kc abstractC7441kc, Bundle bundle) {
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error returning bundle value to wrapper", e);
        }
    }

    /* renamed from: X */
    public final void m5978X(AbstractC7441kc abstractC7441kc, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            abstractC7441kc.mo7197C0(bundle);
        } catch (RemoteException e) {
            this.f35460a.mo6047C().m6192p().m6215b("Error returning bundle list to wrapper", e);
        }
    }

    /* renamed from: Z */
    public final URL m5976Z(long j, String str, String str2, long j2) {
        try {
            C6155o.m17022f(str2);
            C6155o.m17022f(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 39065L, Integer.valueOf(m5988N())), str2, str, Long.valueOf(j2));
            String str3 = format;
            if (str.equals(this.f35460a.m6006y().m6490E())) {
                str3 = format.concat("&ddl_test=1");
            }
            return new URL(str3);
        } catch (IllegalArgumentException | MalformedURLException e) {
            this.f35460a.mo6047C().m6195m().m6215b("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: g */
    protected final boolean mo5878g() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: h */
    protected final void mo5968h() {
        mo6113f();
        SecureRandom secureRandom = new SecureRandom();
        ?? nextLong = secureRandom.nextLong();
        char c = nextLong;
        if (nextLong == 0) {
            ?? nextLong2 = secureRandom.nextLong();
            c = nextLong2;
            if (nextLong2 == 0) {
                this.f35460a.mo6047C().m6192p().m6216a("Utils falling back to Random for random id");
                c = nextLong2;
            }
        }
        this.f35726g.set(c);
    }

    /* renamed from: h0 */
    public final long m5967h0() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.f35726g.get() != 0) {
            synchronized (this.f35726g) {
                this.f35726g.compareAndSet(-1L, 1L);
                andIncrement = this.f35726g.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.f35726g) {
            nextLong = new Random(System.nanoTime() ^ this.f35460a.mo6007x().mo16807a()).nextLong();
            int i = this.f35727h + 1;
            this.f35727h = i;
            j = i;
        }
        return nextLong + j;
    }

    @EnsuresNonNull({"this.secureRandom"})
    /* renamed from: i0 */
    public final SecureRandom m5966i0() {
        mo6113f();
        if (this.f35725f == null) {
            this.f35725f = new SecureRandom();
        }
        return this.f35725f;
    }

    /* renamed from: k0 */
    public final Bundle m5964k0(Uri uri) {
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
                this.f35460a.mo6047C().m6192p().m6215b("Install referrer url isn't a hierarchical URI", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: l0 */
    public final boolean m5963l0(String str, String str2) {
        if (str2 == null) {
            this.f35460a.mo6047C().m6193o().m6215b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f35460a.mo6047C().m6193o().m6215b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.f35460a.mo6047C().m6193o().m6214c("Name must start with a letter. Type, name", str, str2);
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
                    this.f35460a.mo6047C().m6193o().m6214c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i + Character.charCount(codePointAt2);
            }
        }
    }

    /* renamed from: m */
    public final boolean m5962m(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (m5973c0(str)) {
                return true;
            }
            if (!this.f35460a.m6039K()) {
                return false;
            }
            this.f35460a.mo6047C().m6193o().m6215b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", C7813o3.m6186v(str));
            return false;
        }
        C7411ia.m7293a();
        if (this.f35460a.m6006y().m6471u(null, C7672c3.f35079i0) && !TextUtils.isEmpty(str3)) {
            return true;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (m5973c0(str2)) {
                return true;
            }
            this.f35460a.mo6047C().m6193o().m6215b("Invalid admob_app_id. Analytics disabled.", C7813o3.m6186v(str2));
            return false;
        } else if (!this.f35460a.m6039K()) {
            return false;
        } else {
            this.f35460a.mo6047C().m6193o().m6216a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
    }

    /* renamed from: m0 */
    public final boolean m5961m0(String str, String str2) {
        if (str2 == null) {
            this.f35460a.mo6047C().m6193o().m6215b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f35460a.mo6047C().m6193o().m6215b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            int i = codePointAt;
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt != 95) {
                    this.f35460a.mo6047C().m6193o().m6214c("Name must start with a letter or _ (underscore). Type, name", str, str2);
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
                    this.f35460a.mo6047C().m6193o().m6214c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount = i2 + Character.charCount(codePointAt2);
            }
        }
    }

    /* renamed from: n */
    public final boolean m5960n(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            C6155o.m17018j(str);
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

    /* renamed from: n0 */
    public final boolean m5959n0(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.f35460a.mo6047C().m6193o().m6215b("Name is required and can't be null. Type", str);
            return false;
        }
        C6155o.m17018j(str2);
        String[] strArr3 = f35722c;
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(strArr3[i])) {
                this.f35460a.mo6047C().m6193o().m6214c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !m5969g0(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && m5969g0(str2, strArr2)) {
            return true;
        }
        this.f35460a.mo6047C().m6193o().m6214c("Name is reserved. Type, name", str, str2);
        return false;
    }

    /* renamed from: o */
    public final String m5958o(String str, int i, boolean z) {
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

    /* renamed from: o0 */
    public final boolean m5957o0(String str, int i, String str2) {
        if (str2 == null) {
            this.f35460a.mo6047C().m6193o().m6215b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            this.f35460a.mo6047C().m6193o().m6213d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015e  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int m5956p(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List<java.lang.String> r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7885u9.m5956p(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* renamed from: p0 */
    public final int m5955p0(String str) {
        if (!m5961m0("event", str)) {
            return 2;
        }
        if (!m5959n0("event", C7837q5.f35593a, C7837q5.f35594b, str)) {
            return 13;
        }
        this.f35460a.m6006y();
        return !m5957o0("event", 40, str) ? 2 : 0;
    }

    /* renamed from: q */
    public final Object m5954q(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            this.f35460a.m6006y();
            return m5972d0(256, obj, true, true);
        }
        if (m5996F(str)) {
            this.f35460a.m6006y();
        } else {
            this.f35460a.m6006y();
            i = 100;
        }
        return m5972d0(i, obj, false, true);
    }

    /* renamed from: q0 */
    public final int m5953q0(String str) {
        if (!m5961m0("user property", str)) {
            return 6;
        }
        if (!m5959n0("user property", C7859s5.f35669a, null, str)) {
            return 15;
        }
        this.f35460a.m6006y();
        return !m5957o0("user property", 24, str) ? 6 : 0;
    }

    /* renamed from: r */
    public final Bundle m5952r(String str, String str2, Bundle bundle, List<String> list, boolean z) {
        int i;
        boolean m5969g0 = m5969g0(str2, C7837q5.f35596d);
        Bundle bundle2 = new Bundle(bundle);
        int m6481k = this.f35460a.m6006y().m6481k();
        int i2 = 0;
        for (String str3 : this.f35460a.m6006y().m6471u(str, C7672c3.f35060Y) ? new TreeSet(bundle.keySet()) : bundle.keySet()) {
            if (list == null || !list.contains(str3)) {
                int m5951r0 = z ? m5951r0(str3) : 0;
                int i3 = m5951r0;
                if (m5951r0 == 0) {
                    i3 = m5949s0(str3);
                }
                i = i3;
            } else {
                i = 0;
            }
            if (i != 0) {
                m5946u(bundle2, i, str3, str3, i == 3 ? str3 : null);
                bundle2.remove(str3);
            } else {
                int m5956p = m5956p(str, str2, str3, bundle.get(str3), bundle2, list, z, m5969g0);
                if (m5956p == 17) {
                    m5946u(bundle2, 17, str3, str3, Boolean.FALSE);
                } else if (m5956p != 0 && !"_ev".equals(str3)) {
                    m5946u(bundle2, m5956p, m5956p == 21 ? str2 : str3, str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (m5965j0(str3)) {
                    i2++;
                    if (i2 > m6481k) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Event can't contain more than ");
                        sb.append(m6481k);
                        sb.append(" params");
                        this.f35460a.mo6047C().m6193o().m6214c(sb.toString(), this.f35460a.m6042H().m6345n(str2), this.f35460a.m6042H().m6342q(bundle));
                        m5974b0(bundle2, 5);
                        bundle2.remove(str3);
                    }
                }
            }
        }
        return bundle2;
    }

    /* renamed from: r0 */
    final int m5951r0(String str) {
        if (!m5963l0("event param", str)) {
            return 3;
        }
        if (!m5959n0("event param", null, null, str)) {
            return 14;
        }
        this.f35460a.m6006y();
        return !m5957o0("event param", 40, str) ? 3 : 0;
    }

    /* renamed from: s */
    public final void m5950s(C7824p3 c7824p3, int i) {
        int i2 = 0;
        for (String str : new TreeSet(c7824p3.f35572d.keySet())) {
            if (m5965j0(str)) {
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    StringBuilder sb = new StringBuilder(48);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    this.f35460a.mo6047C().m6193o().m6214c(sb.toString(), this.f35460a.m6042H().m6345n(c7824p3.f35569a), this.f35460a.m6042H().m6342q(c7824p3.f35572d));
                    m5974b0(c7824p3.f35572d, 5);
                    c7824p3.f35572d.remove(str);
                    i2 = i3;
                }
            }
        }
    }

    /* renamed from: s0 */
    final int m5949s0(String str) {
        if (!m5961m0("event param", str)) {
            return 3;
        }
        if (!m5959n0("event param", null, null, str)) {
            return 14;
        }
        this.f35460a.m6006y();
        return !m5957o0("event param", 40, str) ? 3 : 0;
    }

    /* renamed from: t */
    public final void m5948t(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.f35460a.m6043G().m5941y(bundle, str, bundle2.get(str));
            }
        }
    }

    /* renamed from: t0 */
    public final boolean m5947t0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* renamed from: u */
    final void m5946u(Bundle bundle, int i, String str, String str2, Object obj) {
        if (m5974b0(bundle, i)) {
            this.f35460a.m6006y();
            bundle.putString("_ev", m5958o(str, 40, true));
            if (obj == null) {
                return;
            }
            C6155o.m17018j(bundle);
            if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
                return;
            }
            bundle.putLong("_el", String.valueOf(obj).length());
        }
    }

    /* renamed from: u0 */
    public final boolean m5945u0(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) <= i) {
                return true;
            }
            this.f35460a.mo6047C().m6190r().m6213d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        }
        return true;
    }

    /* renamed from: v */
    public final int m5944v(String str, Object obj) {
        return "_ldl".equals(str) ? m5945u0("user property referrer", str, m5971e0(str), obj) : m5945u0("user property", str, m5971e0(str), obj) ? 0 : 7;
    }

    /* renamed from: v0 */
    final void m5943v0(String str, String str2, String str3, Bundle bundle, List<String> list, boolean z) {
        int i;
        int i2;
        if (bundle == null) {
            return;
        }
        this.f35460a.m6006y();
        int i3 = 0;
        for (String str4 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str4)) {
                int m5951r0 = z ? m5951r0(str4) : 0;
                int i4 = m5951r0;
                if (m5951r0 == 0) {
                    i4 = m5949s0(str4);
                }
                i = i4;
            } else {
                i = 0;
            }
            if (i != 0) {
                m5946u(bundle, i, str4, str4, i == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (m5947t0(bundle.get(str4))) {
                    this.f35460a.mo6047C().m6190r().m6213d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str4);
                    i2 = 22;
                } else {
                    i2 = m5956p(str, str2, str4, bundle.get(str4), bundle, list, z, false);
                }
                if (i2 != 0 && !"_ev".equals(str4)) {
                    m5946u(bundle, i2, str4, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (m5965j0(str4) && !m5969g0(str4, C7848r5.f35614d)) {
                    int i5 = i3 + 1;
                    i3 = i5;
                    if (i5 > 0) {
                        this.f35460a.mo6047C().m6193o().m6214c("Item cannot contain custom parameters", this.f35460a.m6042H().m6345n(str2), this.f35460a.m6042H().m6342q(bundle));
                        m5974b0(bundle, 23);
                        bundle.remove(str4);
                        i3 = i5;
                    }
                }
            }
        }
    }

    /* renamed from: w */
    public final Object m5942w(String str, Object obj) {
        return "_ldl".equals(str) ? m5972d0(m5971e0(str), obj, true, false) : m5972d0(m5971e0(str), obj, false, false);
    }

    /* renamed from: y */
    public final void m5941y(Bundle bundle, String str, Object obj) {
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
            this.f35460a.mo6047C().m6190r().m6214c("Not putting event parameter. Invalid value type. name, type", this.f35460a.m6042H().m6344o(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    /* renamed from: z */
    public final void m5940z(AbstractC7874t9 abstractC7874t9, String str, int i, String str2, String str3, int i2, boolean z) {
        Bundle bundle = new Bundle();
        m5974b0(bundle, i);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        if (z) {
            abstractC7874t9.mo6004b(str, "_err", bundle);
            return;
        }
        this.f35460a.mo6028c();
        this.f35460a.m6044F().m5917X("auto", "_err", bundle);
    }
}
