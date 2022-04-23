package p081h.p203i.p325c.p337n.p338d.p347m;

import android.app.ActivityManager;
import androidx.media2.session.MediaSessionImplBase;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p355q.C9830e;
/* renamed from: h.i.c.n.d.m.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/m/d.class */
public class C9783d {

    /* renamed from: a */
    public static final C9778a f22204a = C9778a.m14289a("0");

    /* renamed from: b */
    public static final C9778a f22205b = C9778a.m14289a("Unity");

    /* renamed from: a */
    public static int m14236a() {
        return C9781c.m14262b(1, f22204a) + 0 + C9781c.m14262b(2, f22204a) + C9781c.m14263b(3, 0L);
    }

    /* renamed from: a */
    public static int m14235a(int i, C9778a aVar, int i2, long j, long j2, boolean z, int i3, C9778a aVar2, C9778a aVar3) {
        int e = C9781c.m14250e(3, i);
        int i4 = 0;
        int b = aVar == null ? 0 : C9781c.m14262b(4, aVar);
        int g = C9781c.m14244g(5, i2);
        int b2 = C9781c.m14263b(6, j);
        int b3 = C9781c.m14263b(7, j2);
        int b4 = C9781c.m14261b(10, z);
        int g2 = C9781c.m14244g(12, i3);
        int b5 = aVar2 == null ? 0 : C9781c.m14262b(13, aVar2);
        if (aVar3 != null) {
            i4 = C9781c.m14262b(14, aVar3);
        }
        return e + 0 + b + g + b2 + b3 + b4 + g2 + b5 + i4;
    }

    /* renamed from: a */
    public static int m14234a(long j, String str, C9830e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2, C9778a aVar, C9778a aVar2, Float f, int i3, boolean z, long j2, long j3, C9778a aVar3) {
        int b = C9781c.m14263b(1, j);
        int b2 = C9781c.m14262b(2, C9778a.m14289a(str));
        int a = m14212a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2, map, runningAppProcessInfo, i2);
        int l = C9781c.m14239l(3);
        int j4 = C9781c.m14241j(a);
        int a2 = m14211a(f, i3, z, i2, j2, j3);
        int l2 = b + 0 + b2 + l + j4 + a + C9781c.m14239l(5) + C9781c.m14241j(a2) + a2;
        int i4 = l2;
        if (aVar3 != null) {
            int a3 = m14233a(aVar3);
            i4 = l2 + C9781c.m14239l(6) + C9781c.m14241j(a3) + a3;
        }
        return i4;
    }

    /* renamed from: a */
    public static int m14233a(C9778a aVar) {
        return C9781c.m14262b(1, aVar);
    }

    /* renamed from: a */
    public static int m14232a(C9778a aVar, C9778a aVar2) {
        int b = C9781c.m14263b(1, 0L) + 0 + C9781c.m14263b(2, 0L) + C9781c.m14262b(3, aVar);
        int i = b;
        if (aVar2 != null) {
            i = b + C9781c.m14262b(4, aVar2);
        }
        return i;
    }

    /* renamed from: a */
    public static int m14231a(C9778a aVar, C9778a aVar2, C9778a aVar3, C9778a aVar4, int i, C9778a aVar5) {
        int b = C9781c.m14262b(1, aVar) + 0 + C9781c.m14262b(2, aVar2) + C9781c.m14262b(3, aVar3) + C9781c.m14262b(6, aVar4);
        int i2 = b;
        if (aVar5 != null) {
            i2 = b + C9781c.m14262b(8, f22205b) + C9781c.m14262b(9, aVar5);
        }
        return i2 + C9781c.m14250e(10, i);
    }

    /* renamed from: a */
    public static int m14230a(C9778a aVar, C9778a aVar2, boolean z) {
        return C9781c.m14250e(1, 3) + 0 + C9781c.m14262b(2, aVar) + C9781c.m14262b(3, aVar2) + C9781c.m14261b(4, z);
    }

    /* renamed from: a */
    public static int m14214a(C9830e eVar, int i, int i2) {
        int i3 = 0;
        int b = C9781c.m14262b(1, C9778a.m14289a(eVar.f22300b)) + 0;
        String str = eVar.f22299a;
        int i4 = b;
        if (str != null) {
            i4 = b + C9781c.m14262b(3, C9778a.m14289a(str));
        }
        for (StackTraceElement stackTraceElement : eVar.f22301c) {
            int a = m14210a(stackTraceElement, true);
            i4 += C9781c.m14239l(4) + C9781c.m14241j(a) + a;
        }
        C9830e eVar2 = eVar.f22302d;
        int i5 = i4;
        if (eVar2 != null) {
            C9830e eVar3 = eVar2;
            if (i < i2) {
                int a2 = m14214a(eVar2, i + 1, i2);
                i5 = i4 + C9781c.m14239l(6) + C9781c.m14241j(a2) + a2;
            } else {
                while (eVar3 != null) {
                    eVar3 = eVar3.f22302d;
                    i3++;
                }
                i5 = i4 + C9781c.m14244g(7, i3);
            }
        }
        return i5;
    }

    /* renamed from: a */
    public static int m14213a(C9830e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C9778a aVar, C9778a aVar2) {
        int a = m14207a(thread, stackTraceElementArr, 4, true);
        int l = C9781c.m14239l(1);
        int j = C9781c.m14241j(a);
        int length = threadArr.length;
        int i2 = l + j + a + 0;
        for (int i3 = 0; i3 < length; i3++) {
            int a2 = m14207a(threadArr[i3], list.get(i3), 0, false);
            i2 += C9781c.m14239l(1) + C9781c.m14241j(a2) + a2;
        }
        int a3 = m14214a(eVar, 1, i);
        int l2 = C9781c.m14239l(2);
        int j2 = C9781c.m14241j(a3);
        int a4 = m14236a();
        int l3 = C9781c.m14239l(3);
        int j3 = C9781c.m14241j(a4);
        int a5 = m14232a(aVar, aVar2);
        return i2 + l2 + j2 + a3 + l3 + j3 + a4 + C9781c.m14239l(3) + C9781c.m14241j(a5) + a5;
    }

    /* renamed from: a */
    public static int m14212a(C9830e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C9778a aVar, C9778a aVar2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2) {
        int a = m14213a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2);
        boolean z = false;
        int l = C9781c.m14239l(1) + C9781c.m14241j(a) + a + 0;
        int i3 = l;
        if (map != null) {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (true) {
                i3 = l;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                int a2 = m14208a(next.getKey(), next.getValue());
                l += C9781c.m14239l(2) + C9781c.m14241j(a2) + a2;
            }
        }
        int i4 = i3;
        if (runningAppProcessInfo != null) {
            if (runningAppProcessInfo.importance != 100) {
                z = true;
            }
            i4 = i3 + C9781c.m14261b(3, z);
        }
        return i4 + C9781c.m14244g(4, i2);
    }

    /* renamed from: a */
    public static int m14211a(Float f, int i, boolean z, int i2, long j, long j2) {
        int i3 = 0;
        if (f != null) {
            i3 = 0 + C9781c.m14265b(1, f.floatValue());
        }
        return i3 + C9781c.m14247f(2, i) + C9781c.m14261b(3, z) + C9781c.m14244g(4, i2) + C9781c.m14263b(5, j) + C9781c.m14263b(6, j2);
    }

    /* renamed from: a */
    public static int m14210a(StackTraceElement stackTraceElement, boolean z) {
        int i = 0;
        int b = stackTraceElement.isNativeMethod() ? C9781c.m14263b(1, Math.max(stackTraceElement.getLineNumber(), 0)) : C9781c.m14263b(1, 0L);
        int b2 = b + 0 + C9781c.m14262b(2, C9778a.m14289a(stackTraceElement.getClassName() + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + stackTraceElement.getMethodName()));
        int i2 = b2;
        if (stackTraceElement.getFileName() != null) {
            i2 = b2 + C9781c.m14262b(3, C9778a.m14289a(stackTraceElement.getFileName()));
        }
        int i3 = i2;
        if (!stackTraceElement.isNativeMethod()) {
            i3 = i2;
            if (stackTraceElement.getLineNumber() > 0) {
                i3 = i2 + C9781c.m14263b(4, stackTraceElement.getLineNumber());
            }
        }
        if (z) {
            i = 2;
        }
        return i3 + C9781c.m14244g(5, i);
    }

    /* renamed from: a */
    public static int m14208a(String str, String str2) {
        int b = C9781c.m14262b(1, C9778a.m14289a(str));
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return b + C9781c.m14262b(2, C9778a.m14289a(str3));
    }

    /* renamed from: a */
    public static int m14207a(Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) {
        int b = C9781c.m14262b(1, C9778a.m14289a(thread.getName())) + C9781c.m14244g(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int a = m14210a(stackTraceElement, z);
            b += C9781c.m14239l(3) + C9781c.m14241j(a) + a;
        }
        return b;
    }

    /* renamed from: a */
    public static C9778a m14209a(String str) {
        return str == null ? null : C9778a.m14289a(str);
    }

    /* renamed from: a */
    public static void m14229a(C9781c cVar, int i, StackTraceElement stackTraceElement, boolean z) throws Exception {
        cVar.m14257c(i, 2);
        cVar.m14251e(m14210a(stackTraceElement, z));
        if (stackTraceElement.isNativeMethod()) {
            cVar.m14277a(1, Math.max(stackTraceElement.getLineNumber(), 0));
        } else {
            cVar.m14277a(1, 0L);
        }
        cVar.m14276a(2, C9778a.m14289a(stackTraceElement.getClassName() + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + stackTraceElement.getMethodName()));
        if (stackTraceElement.getFileName() != null) {
            cVar.m14276a(3, C9778a.m14289a(stackTraceElement.getFileName()));
        }
        int i2 = 4;
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            cVar.m14277a(4, stackTraceElement.getLineNumber());
        }
        if (!z) {
            i2 = 0;
        }
        cVar.m14253d(5, i2);
    }

    /* renamed from: a */
    public static void m14228a(C9781c cVar, int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) throws Exception {
        C9778a a = m14209a(str);
        C9778a a2 = m14209a(str3);
        C9778a a3 = m14209a(str2);
        cVar.m14257c(9, 2);
        cVar.m14251e(m14235a(i, a, i2, j, j2, z, i3, a3, a2));
        cVar.m14278a(3, i);
        cVar.m14276a(4, a);
        cVar.m14253d(5, i2);
        cVar.m14277a(6, j);
        cVar.m14277a(7, j2);
        cVar.m14275a(10, z);
        cVar.m14253d(12, i3);
        if (a3 != null) {
            cVar.m14276a(13, a3);
        }
        if (a2 != null) {
            cVar.m14276a(14, a2);
        }
    }

    /* renamed from: a */
    public static void m14227a(C9781c cVar, long j, String str, C9830e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, Map<String, String> map, byte[] bArr, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2, String str2, String str3, Float f, int i3, boolean z, long j2, long j3) throws Exception {
        C9778a aVar;
        C9778a a = C9778a.m14289a(str2);
        C9778a a2 = str3 == null ? null : C9778a.m14289a(str3.replace("-", ""));
        if (bArr != null) {
            aVar = C9778a.m14288a(bArr);
        } else {
            C9513b.m15015a().m15013a("No log data to include with this event.");
            aVar = null;
        }
        cVar.m14257c(10, 2);
        cVar.m14251e(m14234a(j, str, eVar, thread, stackTraceElementArr, threadArr, list, i, map, runningAppProcessInfo, i2, a, a2, f, i3, z, j2, j3, aVar));
        cVar.m14277a(1, j);
        cVar.m14276a(2, C9778a.m14289a(str));
        m14223a(cVar, eVar, thread, stackTraceElementArr, threadArr, list, i, a, a2, map, runningAppProcessInfo, i2);
        m14222a(cVar, f, i3, z, i2, j2, j3);
        m14226a(cVar, aVar);
    }

    /* renamed from: a */
    public static void m14226a(C9781c cVar, C9778a aVar) throws Exception {
        if (aVar != null) {
            cVar.m14257c(6, 2);
            cVar.m14251e(m14233a(aVar));
            cVar.m14276a(1, aVar);
        }
    }

    /* renamed from: a */
    public static void m14225a(C9781c cVar, C9830e eVar, int i, int i2, int i3) throws Exception {
        cVar.m14257c(i3, 2);
        cVar.m14251e(m14214a(eVar, 1, i2));
        cVar.m14276a(1, C9778a.m14289a(eVar.f22300b));
        String str = eVar.f22299a;
        if (str != null) {
            cVar.m14276a(3, C9778a.m14289a(str));
        }
        int i4 = 0;
        for (StackTraceElement stackTraceElement : eVar.f22301c) {
            m14229a(cVar, 4, stackTraceElement, true);
        }
        C9830e eVar2 = eVar.f22302d;
        if (eVar2 != null) {
            C9830e eVar3 = eVar2;
            if (i < i2) {
                m14225a(cVar, eVar2, i + 1, i2, 6);
                return;
            }
            while (eVar3 != null) {
                eVar3 = eVar3.f22302d;
                i4++;
            }
            cVar.m14253d(7, i4);
        }
    }

    /* renamed from: a */
    public static void m14224a(C9781c cVar, C9830e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C9778a aVar, C9778a aVar2) throws Exception {
        cVar.m14257c(1, 2);
        cVar.m14251e(m14213a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2));
        m14216a(cVar, thread, stackTraceElementArr, 4, true);
        int length = threadArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            m14216a(cVar, threadArr[i2], list.get(i2), 0, false);
        }
        m14225a(cVar, eVar, 1, i, 2);
        cVar.m14257c(3, 2);
        cVar.m14251e(m14236a());
        cVar.m14276a(1, f22204a);
        cVar.m14276a(2, f22204a);
        cVar.m14277a(3, 0L);
        cVar.m14257c(4, 2);
        cVar.m14251e(m14232a(aVar, aVar2));
        cVar.m14277a(1, 0L);
        cVar.m14277a(2, 0L);
        cVar.m14276a(3, aVar);
        if (aVar2 != null) {
            cVar.m14276a(4, aVar2);
        }
    }

    /* renamed from: a */
    public static void m14223a(C9781c cVar, C9830e eVar, Thread thread, StackTraceElement[] stackTraceElementArr, Thread[] threadArr, List<StackTraceElement[]> list, int i, C9778a aVar, C9778a aVar2, Map<String, String> map, ActivityManager.RunningAppProcessInfo runningAppProcessInfo, int i2) throws Exception {
        cVar.m14257c(3, 2);
        cVar.m14251e(m14212a(eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2, map, runningAppProcessInfo, i2));
        m14224a(cVar, eVar, thread, stackTraceElementArr, threadArr, list, i, aVar, aVar2);
        if (map != null && !map.isEmpty()) {
            m14215a(cVar, map);
        }
        if (runningAppProcessInfo != null) {
            cVar.m14275a(3, runningAppProcessInfo.importance != 100);
        }
        cVar.m14253d(4, i2);
    }

    /* renamed from: a */
    public static void m14222a(C9781c cVar, Float f, int i, boolean z, int i2, long j, long j2) throws Exception {
        cVar.m14257c(5, 2);
        cVar.m14251e(m14211a(f, i, z, i2, j, j2));
        if (f != null) {
            cVar.m14279a(1, f.floatValue());
        }
        cVar.m14264b(2, i);
        cVar.m14275a(3, z);
        cVar.m14253d(4, i2);
        cVar.m14277a(5, j);
        cVar.m14277a(6, j2);
    }

    /* renamed from: a */
    public static void m14221a(C9781c cVar, String str) throws Exception {
        C9778a a = C9778a.m14289a(str);
        cVar.m14257c(7, 2);
        int b = C9781c.m14262b(2, a);
        cVar.m14251e(C9781c.m14239l(5) + C9781c.m14241j(b) + b);
        cVar.m14257c(5, 2);
        cVar.m14251e(b);
        cVar.m14276a(2, a);
    }

    /* renamed from: a */
    public static void m14220a(C9781c cVar, String str, String str2, long j) throws Exception {
        cVar.m14276a(1, C9778a.m14289a(str2));
        cVar.m14276a(2, C9778a.m14289a(str));
        cVar.m14277a(3, j);
    }

    /* renamed from: a */
    public static void m14219a(C9781c cVar, String str, String str2, String str3) throws Exception {
        String str4 = str;
        if (str == null) {
            str4 = "";
        }
        C9778a a = C9778a.m14289a(str4);
        C9778a a2 = m14209a(str2);
        C9778a a3 = m14209a(str3);
        int b = C9781c.m14262b(1, a) + 0;
        int i = b;
        if (str2 != null) {
            i = b + C9781c.m14262b(2, a2);
        }
        int i2 = i;
        if (str3 != null) {
            i2 = i + C9781c.m14262b(3, a3);
        }
        cVar.m14257c(6, 2);
        cVar.m14251e(i2);
        cVar.m14276a(1, a);
        if (str2 != null) {
            cVar.m14276a(2, a2);
        }
        if (str3 != null) {
            cVar.m14276a(3, a3);
        }
    }

    /* renamed from: a */
    public static void m14218a(C9781c cVar, String str, String str2, String str3, String str4, int i, String str5) throws Exception {
        C9778a a = C9778a.m14289a(str);
        C9778a a2 = C9778a.m14289a(str2);
        C9778a a3 = C9778a.m14289a(str3);
        C9778a a4 = C9778a.m14289a(str4);
        C9778a a5 = str5 != null ? C9778a.m14289a(str5) : null;
        cVar.m14257c(7, 2);
        cVar.m14251e(m14231a(a, a2, a3, a4, i, a5));
        cVar.m14276a(1, a);
        cVar.m14276a(2, a2);
        cVar.m14276a(3, a3);
        cVar.m14276a(6, a4);
        if (a5 != null) {
            cVar.m14276a(8, f22205b);
            cVar.m14276a(9, a5);
        }
        cVar.m14278a(10, i);
    }

    /* renamed from: a */
    public static void m14217a(C9781c cVar, String str, String str2, boolean z) throws Exception {
        C9778a a = C9778a.m14289a(str);
        C9778a a2 = C9778a.m14289a(str2);
        cVar.m14257c(8, 2);
        cVar.m14251e(m14230a(a, a2, z));
        cVar.m14278a(1, 3);
        cVar.m14276a(2, a);
        cVar.m14276a(3, a2);
        cVar.m14275a(4, z);
    }

    /* renamed from: a */
    public static void m14216a(C9781c cVar, Thread thread, StackTraceElement[] stackTraceElementArr, int i, boolean z) throws Exception {
        cVar.m14257c(1, 2);
        cVar.m14251e(m14207a(thread, stackTraceElementArr, i, z));
        cVar.m14276a(1, C9778a.m14289a(thread.getName()));
        cVar.m14253d(2, i);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            m14229a(cVar, 3, stackTraceElement, z);
        }
    }

    /* renamed from: a */
    public static void m14215a(C9781c cVar, Map<String, String> map) throws Exception {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            cVar.m14257c(2, 2);
            cVar.m14251e(m14208a(entry.getKey(), entry.getValue()));
            cVar.m14276a(1, C9778a.m14289a(entry.getKey()));
            String value = entry.getValue();
            String str = value;
            if (value == null) {
                str = "";
            }
            cVar.m14276a(2, C9778a.m14289a(str));
        }
    }
}
