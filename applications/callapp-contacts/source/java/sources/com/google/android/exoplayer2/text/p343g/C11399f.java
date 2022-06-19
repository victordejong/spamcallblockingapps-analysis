package com.google.android.exoplayer2.text.p343g;

import java.util.ArrayDeque;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.text.g.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/f.class */
public final class C11399f {
    private C11399f() {
    }

    /* renamed from: a */
    public static C11397d m20676a(C11397d c11397d, Map<String, C11400g> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c11397d);
        while (!arrayDeque.isEmpty()) {
            C11397d c11397d2 = (C11397d) arrayDeque.pop();
            C11400g m20675a = m20675a(c11397d2.f37592f, c11397d2.f37593g, map);
            if (m20675a != null && m20675a.f37622m == 3) {
                return c11397d2;
            }
            for (int m20687a = c11397d2.m20687a() - 1; m20687a >= 0; m20687a--) {
                arrayDeque.push(c11397d2.m20686a(m20687a));
            }
        }
        return null;
    }

    /* renamed from: a */
    public static C11400g m20675a(C11400g c11400g, String[] strArr, Map<String, C11400g> map) {
        if (c11400g == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                C11400g c11400g2 = new C11400g();
                for (String str : strArr) {
                    c11400g2.m20671a(map.get(str));
                }
                return c11400g2;
            }
        } else if (strArr != null && strArr.length == 1) {
            return c11400g.m20671a(map.get(strArr[0]));
        } else {
            if (strArr != null && strArr.length > 1) {
                for (String str2 : strArr) {
                    c11400g.m20671a(map.get(str2));
                }
            }
        }
        return c11400g;
    }

    /* renamed from: b */
    public static C11397d m20674b(C11397d c11397d, Map<String, C11400g> map) {
        while (c11397d != null) {
            C11400g m20675a = m20675a(c11397d.f37592f, c11397d.f37593g, map);
            if (m20675a != null && m20675a.f37622m == 1) {
                return c11397d;
            }
            c11397d = c11397d.f37596j;
        }
        return null;
    }
}
