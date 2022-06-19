package p080e5;

import android.content.Context;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p103g5.AbstractC2878v;
import p103g5.C2860n;
import p103g5.C2864p;
import p103g5.C2866q;
import p103g5.C2904w;
import p179n5.AbstractC3718c;
import p237t.C4343c;
/* renamed from: e5.x */
/* loaded from: classes-dex2jar.jar:e5/x.class */
public class C2579x {

    /* renamed from: e */
    public static final Map<String, Integer> f8996e;

    /* renamed from: f */
    public static final String f8997f = String.format(Locale.US, "Crashlytics Android SDK/%s", "18.1.0");

    /* renamed from: a */
    public final Context f8998a;

    /* renamed from: b */
    public final C2548e0 f8999b;

    /* renamed from: c */
    public final C2537a f9000c;

    /* renamed from: d */
    public final AbstractC3718c f9001d;

    static {
        HashMap hashMap = new HashMap();
        f8996e = hashMap;
        hashMap.put("armeabi", 5);
        hashMap.put("armeabi-v7a", 6);
        hashMap.put("arm64-v8a", 9);
        hashMap.put("x86", 0);
        hashMap.put("x86_64", 1);
    }

    public C2579x(Context context, C2548e0 c2548e0, C2537a c2537a, AbstractC3718c abstractC3718c) {
        this.f8998a = context;
        this.f8999b = c2548e0;
        this.f9000c = c2537a;
        this.f9001d = abstractC3718c;
    }

    /* renamed from: a */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b m3421a(C4343c c4343c, int i, int i2, int i3) {
        String str = (String) c4343c.f13539b;
        String str2 = (String) c4343c.f13538a;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) c4343c.f13540c;
        int i4 = 0;
        int i5 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        C4343c c4343c2 = (C4343c) c4343c.f13541d;
        if (i3 >= i2) {
            C4343c c4343c3 = c4343c2;
            while (true) {
                i4 = i5;
                if (c4343c3 == null) {
                    break;
                }
                c4343c3 = (C4343c) c4343c3.f13541d;
                i5++;
            }
        }
        Objects.requireNonNull(str, "Null type");
        C2904w c2904w = new C2904w(m3420b(stackTraceElementArr, i));
        Integer valueOf = Integer.valueOf(i4);
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2894b m3421a = (c4343c2 == null || i4 != 0) ? null : m3421a(c4343c2, i, i2, i3 + 1);
        String str3 = valueOf == null ? " overflowCount" : "";
        if (str3.isEmpty()) {
            return new C2860n(str, str2, c2904w, m3421a, valueOf.intValue(), null);
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* renamed from: b */
    public final C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a> m3420b(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            C2866q.C2868b c2868b = new C2866q.C2868b();
            c2868b.f9770e = Integer.valueOf(i);
            ?? max = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : false;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            ?? r20 = false;
            if (!stackTraceElement.isNativeMethod()) {
                r20 = false;
                if (stackTraceElement.getLineNumber() > 0) {
                    r20 = stackTraceElement.getLineNumber();
                }
            }
            c2868b.f9766a = Long.valueOf(max == true ? 1L : 0L);
            Objects.requireNonNull(str, "Null symbol");
            c2868b.f9767b = str;
            c2868b.f9768c = fileName;
            c2868b.f9769d = Long.valueOf(r20 == true ? 1L : 0L);
            arrayList.add(c2868b.m2964a());
        }
        return new C2904w<>(arrayList);
    }

    /* renamed from: c */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d m3419c(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        String name = thread.getName();
        Objects.requireNonNull(name, "Null name");
        Integer valueOf = Integer.valueOf(i);
        C2904w c2904w = new C2904w(m3420b(stackTraceElementArr, i));
        String str = valueOf == null ? " importance" : "";
        if (str.isEmpty()) {
            return new C2864p(name, valueOf.intValue(), c2904w, null);
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str));
    }
}
