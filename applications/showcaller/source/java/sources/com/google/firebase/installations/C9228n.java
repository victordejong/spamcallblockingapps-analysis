package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.local.AbstractC9225c;
import com.google.firebase.installations.p311p.AbstractC9230a;
import com.google.firebase.installations.p311p.C9231b;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* renamed from: com.google.firebase.installations.n */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/n.class */
public final class C9228n {

    /* renamed from: a */
    public static final long f39641a = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: b */
    private static final Pattern f39642b = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: c */
    private static C9228n f39643c;

    /* renamed from: d */
    private final AbstractC9230a f39644d;

    private C9228n(AbstractC9230a abstractC9230a) {
        this.f39644d = abstractC9230a;
    }

    /* renamed from: c */
    public static C9228n m1474c() {
        return m1473d(C9231b.m1466b());
    }

    /* renamed from: d */
    public static C9228n m1473d(AbstractC9230a abstractC9230a) {
        if (f39643c == null) {
            f39643c = new C9228n(abstractC9230a);
        }
        return f39643c;
    }

    /* renamed from: g */
    public static boolean m1470g(String str) {
        return f39642b.matcher(str).matches();
    }

    /* renamed from: h */
    public static boolean m1469h(String str) {
        return str.contains(":");
    }

    /* renamed from: a */
    public long m1476a() {
        return this.f39644d.mo1467a();
    }

    /* renamed from: b */
    public long m1475b() {
        return TimeUnit.MILLISECONDS.toSeconds(m1476a());
    }

    /* renamed from: e */
    public long m1472e() {
        return (long) (Math.random() * 1000.0d);
    }

    /* renamed from: f */
    public boolean m1471f(AbstractC9225c abstractC9225c) {
        return TextUtils.isEmpty(abstractC9225c.mo1505b()) || abstractC9225c.mo1499h() + abstractC9225c.mo1504c() < m1475b() + f39641a;
    }
}
