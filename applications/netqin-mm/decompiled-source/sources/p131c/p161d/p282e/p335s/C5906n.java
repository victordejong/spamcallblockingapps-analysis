package p131c.p161d.p282e.p335s;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p131c.p161d.p282e.p335s.p336o.AbstractC5911c;
import p131c.p161d.p282e.p335s.p338q.AbstractC5921a;
import p131c.p161d.p282e.p335s.p338q.C5922b;
/* renamed from: c.d.e.s.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/n.class */
public final class C5906n {

    /* renamed from: b */
    public static final long f19224b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c */
    public static final Pattern f19225c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d */
    public static C5906n f19226d;

    /* renamed from: a */
    public final AbstractC5921a f19227a;

    public C5906n(AbstractC5921a aVar) {
        this.f19227a = aVar;
    }

    /* renamed from: a */
    public static C5906n m22766a(AbstractC5921a aVar) {
        if (f19226d == null) {
            f19226d = new C5906n(aVar);
        }
        return f19226d;
    }

    /* renamed from: a */
    public static boolean m22765a(String str) {
        return f19225c.matcher(str).matches();
    }

    /* renamed from: b */
    public static boolean m22763b(String str) {
        return str.contains(":");
    }

    /* renamed from: d */
    public static C5906n m22761d() {
        return m22766a(C5922b.m22698a());
    }

    /* renamed from: a */
    public long m22768a() {
        return this.f19227a.mo22697b();
    }

    /* renamed from: a */
    public boolean m22767a(AbstractC5911c cVar) {
        return TextUtils.isEmpty(cVar.mo22751a()) || cVar.mo22741g() + cVar.mo22747b() < m22764b() + f19224b;
    }

    /* renamed from: b */
    public long m22764b() {
        return TimeUnit.MILLISECONDS.toSeconds(m22768a());
    }

    /* renamed from: c */
    public long m22762c() {
        return (long) (Math.random() * 1000.0d);
    }
}
