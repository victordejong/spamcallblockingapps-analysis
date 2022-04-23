package p081h.p203i.p325c.p367v;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p081h.p203i.p325c.p367v.p368q.AbstractC9958d;
import p081h.p203i.p325c.p367v.p370s.AbstractC9974a;
import p081h.p203i.p325c.p367v.p370s.C9975b;
/* renamed from: h.i.c.v.p */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/p.class */
public final class C9951p {

    /* renamed from: b */
    public static final long f22508b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c */
    public static final Pattern f22509c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d */
    public static C9951p f22510d;

    /* renamed from: a */
    public final AbstractC9974a f22511a;

    public C9951p(AbstractC9974a aVar) {
        this.f22511a = aVar;
    }

    /* renamed from: a */
    public static C9951p m13881a(AbstractC9974a aVar) {
        if (f22510d == null) {
            f22510d = new C9951p(aVar);
        }
        return f22510d;
    }

    /* renamed from: a */
    public static boolean m13880a(@Nullable String str) {
        return f22509c.matcher(str).matches();
    }

    /* renamed from: b */
    public static boolean m13878b(@Nullable String str) {
        return str.contains(":");
    }

    /* renamed from: d */
    public static C9951p m13876d() {
        return m13881a(C9975b.m13789a());
    }

    /* renamed from: a */
    public long m13883a() {
        return this.f22511a.currentTimeMillis();
    }

    /* renamed from: a */
    public boolean m13882a(@NonNull AbstractC9958d dVar) {
        return TextUtils.isEmpty(dVar.mo13863a()) || dVar.mo13853g() + dVar.mo13859b() < m13879b() + f22508b;
    }

    /* renamed from: b */
    public long m13879b() {
        return TimeUnit.MILLISECONDS.toSeconds(m13883a());
    }

    /* renamed from: c */
    public long m13877c() {
        return (long) (Math.random() * 1000.0d);
    }
}
