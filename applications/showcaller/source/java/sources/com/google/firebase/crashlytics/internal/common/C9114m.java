package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import com.google.firebase.crashlytics.p293d.p297h.C9043w;
import com.google.firebase.crashlytics.p293d.p302l.AbstractC9071d;
import com.google.firebase.crashlytics.p293d.p302l.C9072e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.google.firebase.crashlytics.internal.common.m */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/m.class */
public class C9114m {

    /* renamed from: a */
    private static final Map<String, Integer> f39371a;

    /* renamed from: b */
    static final String f39372b = String.format(Locale.US, "Crashlytics Android SDK/%s", "17.4.1");

    /* renamed from: c */
    private final Context f39373c;

    /* renamed from: d */
    private final C9125t f39374d;

    /* renamed from: e */
    private final C9075a f39375e;

    /* renamed from: f */
    private final AbstractC9071d f39376f;

    static {
        HashMap hashMap = new HashMap();
        f39371a = hashMap;
        hashMap.put("armeabi", 5);
        hashMap.put("armeabi-v7a", 6);
        hashMap.put("arm64-v8a", 9);
        hashMap.put("x86", 0);
        hashMap.put("x86_64", 1);
    }

    public C9114m(Context context, C9125t c9125t, C9075a c9075a, AbstractC9071d abstractC9071d) {
        this.f39373c = context;
        this.f39374d = c9125t;
        this.f39375e = c9075a;
        this.f39376f = abstractC9071d;
    }

    /* renamed from: a */
    private AbstractC9004v.AbstractC9005a m1823a() {
        return AbstractC9004v.m2309b().mo2289h("17.4.1").mo2293d(this.f39375e.f39267a).mo2292e(this.f39374d.mo1772a()).mo2295b(this.f39375e.f39271e).mo2294c(this.f39375e.f39272f).mo2290g(4);
    }

    /* renamed from: d */
    private static int m1820d() {
        Integer num;
        String str = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str) && (num = f39371a.get(str.toLowerCase(Locale.US))) != null) {
            return num.intValue();
        }
        return 7;
    }

    /* renamed from: e */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a m1819e() {
        return AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.m2181a().mo2174b(0L).mo2172d(0L).mo2173c(this.f39375e.f39270d).mo2171e(this.f39375e.f39268b).mo2175a();
    }

    /* renamed from: f */
    private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a> m1818f() {
        return C9043w.m2085d(m1819e());
    }

    /* renamed from: g */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a m1817g(int i, C9072e c9072e, Thread thread, int i2, int i3, boolean z) {
        Boolean bool;
        ActivityManager.RunningAppProcessInfo m1965j = CommonUtils.m1965j(this.f39375e.f39270d, this.f39373c);
        if (m1965j != null) {
            bool = Boolean.valueOf(m1965j.importance != 100);
        } else {
            bool = null;
        }
        return AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.m2197a().mo2190b(bool).mo2187e(i).mo2188d(m1813k(c9072e, thread, i2, i3, z)).mo2191a();
    }

    /* renamed from: h */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c m1816h(int i) {
        C9081d m1932a = C9081d.m1932a(this.f39373c);
        Float m1931b = m1932a.m1931b();
        Double valueOf = m1931b != null ? Double.valueOf(m1931b.doubleValue()) : null;
        int m1930c = m1932a.m1930c();
        return AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.m2118a().mo2110b(valueOf).mo2109c(m1930c).mo2106f(CommonUtils.m1959p(this.f39373c)).mo2107e(i).mo2105g(CommonUtils.m1955t() - CommonUtils.m1974a(this.f39373c)).mo2108d(CommonUtils.m1973b(Environment.getDataDirectory().getPath())).mo2111a();
    }

    /* renamed from: i */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c m1815i(C9072e c9072e, int i, int i2) {
        return m1814j(c9072e, i, i2, 0);
    }

    /* renamed from: j */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c m1814j(C9072e c9072e, int i, int i2, int i3) {
        String str = c9072e.f39241b;
        String str2 = c9072e.f39240a;
        StackTraceElement[] stackTraceElementArr = c9072e.f39242c;
        int i4 = 0;
        int i5 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        C9072e c9072e2 = c9072e.f39243d;
        if (i3 >= i2) {
            C9072e c9072e3 = c9072e2;
            while (true) {
                i4 = i5;
                if (c9072e3 == null) {
                    break;
                }
                c9072e3 = c9072e3.f39243d;
                i5++;
            }
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a mo2155d = AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.m2164a().mo2153f(str).mo2154e(str2).mo2156c(C9043w.m2086c(m1811m(stackTraceElementArr, i))).mo2155d(i4);
        if (c9072e2 != null && i4 == 0) {
            mo2155d.mo2157b(m1814j(c9072e2, i, i2, i3 + 1));
        }
        return mo2155d.mo2158a();
    }

    /* renamed from: k */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b m1813k(C9072e c9072e, Thread thread, int i, int i2, boolean z) {
        return AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.m2186a().mo2165e(m1803u(c9072e, thread, i, z)).mo2167c(m1815i(c9072e, i, i2)).mo2166d(m1806r()).mo2168b(m1818f()).mo2169a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* renamed from: l */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b m1812l(StackTraceElement stackTraceElement, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a abstractC9033a) {
        ?? max = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : false;
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        ?? r15 = false;
        if (!stackTraceElement.isNativeMethod()) {
            r15 = false;
            if (stackTraceElement.getLineNumber() > 0) {
                r15 = stackTraceElement.getLineNumber();
            }
        }
        return abstractC9033a.mo2126e(max == true ? 1L : 0L).mo2125f(str).mo2129b(fileName).mo2127d(r15 == true ? 1L : 0L).mo2130a();
    }

    /* renamed from: m */
    private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> m1811m(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(m1812l(stackTraceElement, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.m2136a().mo2128c(i)));
        }
        return C9043w.m2086c(arrayList);
    }

    /* renamed from: n */
    private AbstractC9004v.AbstractC9012d.AbstractC9013a m1810n() {
        AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a mo2240f = AbstractC9004v.AbstractC9012d.AbstractC9013a.m2253a().mo2241e(this.f39374d.m1779d()).mo2239g(this.f39375e.f39271e).mo2242d(this.f39375e.f39272f).mo2240f(this.f39374d.mo1772a());
        String mo1978a = this.f39375e.f39273g.mo1978a();
        if (mo1978a != null) {
            mo2240f.mo2244b("Unity").mo2243c(mo1978a);
        }
        return mo2240f.mo2245a();
    }

    /* renamed from: o */
    private AbstractC9004v.AbstractC9012d m1809o(String str, long j) {
        return AbstractC9004v.AbstractC9012d.m2269a().mo2226l(j).mo2229i(str).mo2231g(f39372b).mo2236b(m1810n()).mo2227k(m1807q()).mo2234d(m1808p()).mo2230h(3).mo2237a();
    }

    /* renamed from: p */
    private AbstractC9004v.AbstractC9012d.AbstractC9017c m1808p() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int m1820d = m1820d();
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long m1955t = CommonUtils.m1955t();
        long blockCount = statFs.getBlockCount();
        long blockSize = statFs.getBlockSize();
        boolean m1950y = CommonUtils.m1950y(this.f39373c);
        int m1962m = CommonUtils.m1962m(this.f39373c);
        return AbstractC9004v.AbstractC9012d.AbstractC9017c.m2224a().mo2213b(m1820d).mo2209f(Build.MODEL).mo2212c(availableProcessors).mo2207h(m1955t).mo2211d(blockCount * blockSize).mo2206i(m1950y).mo2205j(m1962m).mo2210e(Build.MANUFACTURER).mo2208g(Build.PRODUCT).mo2214a();
    }

    /* renamed from: q */
    private AbstractC9004v.AbstractC9012d.AbstractC9039e m1807q() {
        return AbstractC9004v.AbstractC9012d.AbstractC9039e.m2100a().mo2092d(3).mo2091e(Build.VERSION.RELEASE).mo2094b(Build.VERSION.CODENAME).mo2093c(CommonUtils.m1949z(this.f39373c)).mo2095a();
    }

    /* renamed from: r */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d m1806r() {
        return AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.m2152a().mo2145d("0").mo2146c("0").mo2147b(0L).mo2148a();
    }

    /* renamed from: s */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e m1805s(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return m1804t(thread, stackTraceElementArr, 0);
    }

    /* renamed from: t */
    private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e m1804t(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        return AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.m2144a().mo2137d(thread.getName()).mo2138c(i).mo2139b(C9043w.m2086c(m1811m(stackTraceElementArr, i))).mo2140a();
    }

    /* renamed from: u */
    private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e> m1803u(C9072e c9072e, Thread thread, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m1804t(thread, c9072e.f39242c, i));
        if (z) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(m1805s(key, this.f39376f.mo1979a(entry.getValue())));
                }
            }
        }
        return C9043w.m2086c(arrayList);
    }

    /* renamed from: b */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d m1822b(Throwable th, Thread thread, String str, long j, int i, int i2, boolean z) {
        int i3 = this.f39373c.getResources().getConfiguration().orientation;
        return AbstractC9004v.AbstractC9012d.AbstractC9019d.m2204a().mo2119f(str).mo2120e(j).mo2123b(m1817g(i3, new C9072e(th, this.f39376f), thread, i, i2, z)).mo2122c(m1816h(i3)).mo2124a();
    }

    /* renamed from: c */
    public AbstractC9004v m1821c(String str, long j) {
        return m1823a().mo2288i(m1809o(str, j)).mo2296a();
    }
}
