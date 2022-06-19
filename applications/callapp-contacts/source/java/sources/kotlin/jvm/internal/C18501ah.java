package kotlin.jvm.internal;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.jvm.internal.p534a.AbstractC18482b;
import kotlin.jvm.internal.p534a.AbstractC18483c;
import kotlin.jvm.internal.p534a.AbstractC18485e;
import kotlin.jvm.internal.p534a.AbstractC18486f;
import kotlin.jvm.internal.p534a.AbstractC18488h;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: kotlin.jvm.internal.ah */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ah.class */
public class C18501ah {
    /* renamed from: a */
    public static Iterable m3877a(Object obj) {
        if ((obj instanceof AbstractC18481a) && !(obj instanceof AbstractC18483c)) {
            m3875a(obj, "kotlin.collections.MutableIterable");
        }
        return m3869f(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0177  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m3876a(java.lang.Object r4, int r5) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.C18501ah.m3876a(java.lang.Object, int):java.lang.Object");
    }

    /* renamed from: a */
    private static <T extends Throwable> T m3874a(T t) {
        return (T) C18524p.m3845a((Throwable) t, C18501ah.class.getName());
    }

    /* renamed from: a */
    private static void m3875a(Object obj, String str) {
        String name = obj == null ? JsonReaderKt.NULL : obj.getClass().getName();
        throw ((ClassCastException) m3874a(new ClassCastException(name + " cannot be cast to " + str)));
    }

    /* renamed from: b */
    public static Collection m3873b(Object obj) {
        if ((obj instanceof AbstractC18481a) && !(obj instanceof AbstractC18482b)) {
            m3875a(obj, "kotlin.collections.MutableCollection");
        }
        return m3868g(obj);
    }

    /* renamed from: c */
    public static List m3872c(Object obj) {
        if ((obj instanceof AbstractC18481a) && !(obj instanceof AbstractC18485e)) {
            m3875a(obj, "kotlin.collections.MutableList");
        }
        return m3867h(obj);
    }

    /* renamed from: d */
    public static Set m3871d(Object obj) {
        if ((obj instanceof AbstractC18481a) && !(obj instanceof AbstractC18488h)) {
            m3875a(obj, "kotlin.collections.MutableSet");
        }
        return m3866i(obj);
    }

    /* renamed from: e */
    public static Map m3870e(Object obj) {
        if ((obj instanceof AbstractC18481a) && !(obj instanceof AbstractC18486f)) {
            m3875a(obj, "kotlin.collections.MutableMap");
        }
        return m3865j(obj);
    }

    /* renamed from: f */
    private static Iterable m3869f(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) m3874a(e));
        }
    }

    /* renamed from: g */
    private static Collection m3868g(Object obj) {
        try {
            return (Collection) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) m3874a(e));
        }
    }

    /* renamed from: h */
    private static List m3867h(Object obj) {
        try {
            return (List) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) m3874a(e));
        }
    }

    /* renamed from: i */
    private static Set m3866i(Object obj) {
        try {
            return (Set) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) m3874a(e));
        }
    }

    /* renamed from: j */
    private static Map m3865j(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e) {
            throw ((ClassCastException) m3874a(e));
        }
    }
}
