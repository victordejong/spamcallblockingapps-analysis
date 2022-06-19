package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;
/* renamed from: com.google.common.base.e */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/e.class */
public class C8746e {

    /* renamed from: a */
    private final String f38622a;

    private C8746e(String str) {
        this.f38622a = (String) C8756j.m2789l(str);
    }

    /* renamed from: e */
    public static C8746e m2814e(char c) {
        return new C8746e(String.valueOf(c));
    }

    /* renamed from: a */
    public <A extends Appendable> A m2818a(A a, Iterator<?> it) {
        C8756j.m2789l(a);
        if (it.hasNext()) {
            a.append(m2813f(it.next()));
            while (it.hasNext()) {
                a.append(this.f38622a);
                a.append(m2813f(it.next()));
            }
        }
        return a;
    }

    /* renamed from: b */
    public final StringBuilder m2817b(StringBuilder sb, Iterator<?> it) {
        try {
            m2818a(sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: c */
    public final String m2816c(Iterable<?> iterable) {
        return m2815d(iterable.iterator());
    }

    /* renamed from: d */
    public final String m2815d(Iterator<?> it) {
        return m2817b(new StringBuilder(), it).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.CharSequence] */
    /* renamed from: f */
    CharSequence m2813f(Object obj) {
        C8756j.m2789l(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
