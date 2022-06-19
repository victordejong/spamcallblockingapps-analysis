package p193e.p194a.p1129p5;

import android.app.ActivityManager;
import android.app.role.RoleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.graphics.Point;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.provider.Telephony;
import android.view.WindowManager;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.C12864a2;
import s1.e0.x;
import s1.f0.r;
import s1.f0.v;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.p5.h */
/* loaded from: classes15-dex2jar.jar:e/a/p5/h.class */
public final class C19232h implements AbstractC19230g {

    /* renamed from: a */
    public final Context f53599a;

    /* renamed from: b */
    public final AbstractC19219a0 f53600b;

    /* renamed from: c */
    public final AbstractC19225d0 f53601c;

    /* renamed from: d */
    public final String f53602d;

    @Inject
    public C19232h(Context context, AbstractC19219a0 abstractC19219a0, AbstractC19225d0 abstractC19225d0, @Named("applicationId") String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19225d0, "rootChecker");
        l.e(str, "applicationId");
        this.f53599a = context;
        this.f53600b = abstractC19219a0;
        this.f53601c = abstractC19225d0;
        this.f53602d = str;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: A */
    public List<String> mo13803A() {
        ArrayList arrayList;
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr != null) {
            ArrayList arrayList2 = new ArrayList();
            int length = strArr.length;
            int i = 0;
            while (true) {
                arrayList = arrayList2;
                if (i >= length) {
                    break;
                }
                String str = strArr[i];
                if (!(str == null || r.p(str))) {
                    arrayList2.add(str);
                }
                i++;
            }
        } else {
            arrayList = s.a;
        }
        return arrayList;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: B */
    public boolean mo13802B() {
        return mo13782o(mo13799E());
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: C */
    public boolean mo13801C(Class<?> cls) {
        l.e(cls, "componentClass");
        boolean z = true;
        if (this.f53599a.getPackageManager().getComponentEnabledSetting(new ComponentName(this.f53599a, cls)) != 1) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: D */
    public boolean mo13800D(String str) {
        boolean z;
        if (str == null) {
            if (Build.VERSION.SDK_INT < 29) {
                z = false;
            } else {
                Object systemService = this.f53599a.getSystemService("role");
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
                RoleManager roleManager = (RoleManager) systemService;
                z = false;
                if (roleManager.isRoleAvailable("android.app.role.SMS")) {
                    z = false;
                    if (roleManager.isRoleHeld("android.app.role.SMS")) {
                        z = true;
                    }
                }
            }
            if (z) {
                return true;
            }
        }
        return l.a(this.f53602d, str);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: E */
    public String mo13799E() {
        return this.f53599a.getPackageManager().hasSystemFeature("android.hardware.telephony") ? Telephony.Sms.getDefaultSmsPackage(this.f53599a) : null;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: F */
    public boolean mo13798F() {
        Point point = new Point();
        Object systemService = this.f53599a.getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getSize(point);
        return point.x > point.y;
    }

    /* renamed from: G */
    public final Signature[] m13797G(String str) {
        Signature[] signatureArr;
        if (Build.VERSION.SDK_INT < 28) {
            PackageManager packageManager = this.f53599a.getPackageManager();
            signatureArr = null;
            if (packageManager != null) {
                PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
                signatureArr = null;
                if (packageInfo != null) {
                    signatureArr = packageInfo.signatures;
                }
            }
        } else {
            PackageManager packageManager2 = this.f53599a.getPackageManager();
            signatureArr = null;
            if (packageManager2 != null) {
                PackageInfo packageInfo2 = packageManager2.getPackageInfo(str, 134217728);
                signatureArr = null;
                if (packageInfo2 != null) {
                    SigningInfo signingInfo = packageInfo2.signingInfo;
                    signatureArr = null;
                    if (signingInfo != null) {
                        signatureArr = signingInfo.getApkContentsSigners();
                    }
                }
            }
        }
        return signatureArr;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: a */
    public boolean mo13796a() {
        boolean z;
        try {
            Signature[] m13797G = m13797G("com.truecaller.qa");
            z = false;
            if (m13797G != null) {
                ArrayList arrayList = new ArrayList();
                for (Signature signature : m13797G) {
                    byte[] byteArray = signature.toByteArray();
                    l.d(byteArray, "it.toByteArray()");
                    byte[] m22585I = C12864a2.m22585I(byteArray, "SHA-1");
                    String m22584J = m22585I != null ? C12864a2.m22584J(m22585I, "SHA-256") : null;
                    if (m22584J != null) {
                        arrayList.add(m22584J);
                    }
                }
                if (!arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        } else if (l.a((String) it.next(), "44887c084cdd9707930642f96d12fcce415f9c3d5423cd8ef5ae6b49e4ef8941")) {
                            z = true;
                            break;
                        }
                    }
                } else {
                    z = false;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: b */
    public long mo13795b() {
        char c;
        try {
            c = this.f53599a.getPackageManager().getPackageInfo(this.f53599a.getPackageName(), 0).firstInstallTime;
        } catch (Exception e) {
            c = 0;
        }
        return c;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: c */
    public boolean mo13794c() {
        return mo13800D(mo13799E());
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: d */
    public boolean mo13793d(String str) {
        l.e(str, "packageName");
        PackageManager packageManager = this.f53599a.getPackageManager();
        return packageManager != null && packageManager.checkSignatures("com.truecaller", str) == 0;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: e */
    public String mo13792e() {
        return Build.DEVICE;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: f */
    public boolean mo13791f() {
        boolean z;
        if (Build.VERSION.SDK_INT >= 29) {
            Object systemService = this.f53599a.getSystemService("role");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
            z = ((RoleManager) systemService).isRoleHeld("android.app.role.DIALER");
        } else {
            z = r.n(this.f53599a.getPackageName(), mo13781p(), true);
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: g */
    public String mo13790g() {
        String str = Build.MODEL;
        if (str == null) {
            str = "";
        }
        String obj = v.g0(str).toString();
        String str2 = Build.MANUFACTURER;
        String str3 = "";
        if (str2 != null) {
            str3 = str2;
        }
        String obj2 = v.g0(str3).toString();
        Locale locale = Locale.ENGLISH;
        l.d(locale, "Locale.ENGLISH");
        Objects.requireNonNull(obj, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = obj.toLowerCase(locale);
        l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        l.d(locale, "Locale.ENGLISH");
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type java.lang.String");
        String lowerCase2 = obj2.toLowerCase(locale);
        l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
        boolean z = false;
        String str4 = obj;
        if (!r.y(lowerCase, lowerCase2, false, 2)) {
            str4 = C22128a.m8615h2(obj2, ' ', obj);
        }
        if (str4.length() > 0) {
            z = true;
        }
        return (!z || !(l.a(AnalyticsConstants.NULL, str4) ^ true)) ? "Unknown" : r.l(str4);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    public String getPackageName() {
        Context applicationContext = this.f53599a.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        return applicationContext.getPackageName();
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: h */
    public boolean mo13789h() {
        return r.n(Build.BRAND, "HUAWEI", true);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: i */
    public boolean mo13788i() {
        return false;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: j */
    public String mo13787j() {
        return Build.MANUFACTURER;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: k */
    public boolean mo13786k() {
        boolean z = true;
        boolean z2 = Build.VERSION.SDK_INT >= 24;
        if (!z2) {
            return false;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        Object systemService = this.f53599a.getSystemService("activity");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        boolean z3 = memoryInfo.availMem / ((long) 1048576) >= ((long) 512);
        if (!z2 || !z3) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: l */
    public String mo13785l() {
        String str;
        try {
            str = Build.VERSION.SECURITY_PATCH;
        } catch (Throwable th) {
            str = null;
        }
        return str;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: m */
    public boolean mo13784m() {
        return Settings.System.canWrite(this.f53599a);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: n */
    public boolean mo13783n() {
        return C19291g.m13541j0(this.f53599a).getPhoneType() == 2;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: o */
    public boolean mo13782o(String str) {
        return this.f53600b.mo13825h("android.permission.RECEIVE_SMS") && mo13800D(str);
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: p */
    public String mo13781p() {
        return this.f53599a.getPackageManager().hasSystemFeature("android.hardware.telephony") ? C19291g.m13544i0(this.f53599a).getDefaultDialerPackage() : null;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: q */
    public int mo13780q() {
        return Build.VERSION.SDK_INT;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: r */
    public boolean mo13779r() {
        boolean z;
        if (Build.VERSION.SDK_INT >= 29) {
            Object systemService = this.f53599a.getSystemService("role");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
            z = ((RoleManager) systemService).isRoleHeld("android.app.role.CALL_SCREENING");
        } else {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: s */
    public boolean mo13778s() {
        boolean z;
        if (Build.VERSION.SDK_INT < 29) {
            z = false;
        } else {
            Object systemService = this.f53599a.getSystemService("role");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
            z = ((RoleManager) systemService).isRoleAvailable("android.app.role.CALL_SCREENING");
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: t */
    public boolean mo13777t() {
        boolean z;
        if (Build.VERSION.SDK_INT >= 29) {
            Object systemService = this.f53599a.getSystemService("role");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
            z = ((RoleManager) systemService).isRoleAvailable("android.app.role.DIALER");
        } else {
            z = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER").resolveActivity(this.f53599a.getPackageManager()) != null;
        }
        return z;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: u */
    public String mo13776u() {
        String str = Build.MODEL;
        if (str == null) {
            str = "";
        }
        return str;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: v */
    public boolean mo13775v() {
        boolean z;
        C19229f0 c19229f0 = (C19229f0) this.f53601c;
        Iterator<String> it = c19229f0.f53594a.iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            String next = it.next();
            for (String str : c19229f0.f53595b) {
                if (new File(str, next).exists()) {
                    z = true;
                    break loop0;
                }
            }
        }
        boolean z2 = true;
        if (!z) {
            z2 = ((((double) x.c(x.f(i.h(c19229f0.f53596c), new C19227e0(c19229f0)))) / ((double) c19229f0.f53596c.size())) > 0.3d ? 1 : ((((double) x.c(x.f(i.h(c19229f0.f53596c), new C19227e0(c19229f0)))) / ((double) c19229f0.f53596c.size())) == 0.3d ? 0 : -1)) >= 0;
        }
        return z2;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: w */
    public List<String> mo13774w() {
        List list;
        String packageName = getPackageName();
        l.d(packageName, "getPackageName()");
        Signature[] m13797G = m13797G(packageName);
        if (m13797G != null) {
            ArrayList arrayList = new ArrayList();
            for (Signature signature : m13797G) {
                byte[] byteArray = signature.toByteArray();
                l.d(byteArray, "it.toByteArray()");
                arrayList.add(C12864a2.m22584J(byteArray, "SHA-1"));
            }
            list = i.S0(arrayList);
        } else {
            list = s.a;
        }
        return list;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: x */
    public boolean mo13773x() {
        return this.f53599a.getPackageManager().hasSystemFeature("android.hardware.camera");
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: y */
    public boolean mo13772y(String str) {
        PackageInfo packageInfo;
        l.e(str, "pkgName");
        l.e(str, "packageName");
        try {
            packageInfo = this.f53599a.getPackageManager().getPackageInfo(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19230g
    /* renamed from: z */
    public boolean mo13771z() {
        Object systemService = this.f53599a.getSystemService("power");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isIgnoringBatteryOptimizations(getPackageName());
    }
}
