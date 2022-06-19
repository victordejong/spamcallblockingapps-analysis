package p286x5;

import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p029c4.C0821e;
import p306z5.AbstractC5107d;
/* renamed from: x5.l */
/* loaded from: classes-dex2jar.jar:x5/l.class */
public final class C4878l {

    /* renamed from: b */
    public static final long f14939b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c */
    public static final Pattern f14940c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d */
    public static C4878l f14941d;

    /* renamed from: a */
    public final C0821e f14942a;

    public C4878l(C0821e c0821e) {
        this.f14942a = c0821e;
    }

    /* renamed from: c */
    public static C4878l m320c() {
        if (C0821e.f3000a == null) {
            C0821e.f3000a = new C0821e();
        }
        C0821e c0821e = C0821e.f3000a;
        if (f14941d == null) {
            f14941d = new C4878l(c0821e);
        }
        return f14941d;
    }

    /* renamed from: a */
    public long m322a() {
        Objects.requireNonNull(this.f14942a);
        return System.currentTimeMillis();
    }

    /* renamed from: b */
    public long m321b() {
        return TimeUnit.MILLISECONDS.toSeconds(m322a());
    }

    /* renamed from: d */
    public boolean m319d(AbstractC5107d abstractC5107d) {
        if (TextUtils.isEmpty(abstractC5107d.mo30a())) {
            return true;
        }
        return abstractC5107d.mo29b() + abstractC5107d.mo24g() < m321b() + f14939b;
    }
}
