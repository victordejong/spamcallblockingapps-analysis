package p193e.p194a.p1114o5;

import android.content.Context;
import android.text.format.DateUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.C3656R;
import com.truecaller.util.DatePattern;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p372b0.p430q.C8602m;
import s1.i;
import s1.z.c.l;
import w3.b.a.e0.e;
import w3.b.a.g;
import w3.b.a.i0.a;
import w3.b.a.i0.b;
import w3.b.a.p;
/* renamed from: e.a.o5.c0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/c0.class */
public final class C18955c0 implements AbstractC18951b0 {

    /* renamed from: a */
    public final Context f53108a;

    @Inject
    public C18955c0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53108a = context;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: a */
    public String mo14294a(long j, DatePattern datePattern) {
        b bVar;
        l.e(datePattern, "datePattern");
        int ordinal = datePattern.ordinal();
        if (ordinal == 0) {
            bVar = a.a("EEEE, dd MMM YYYY");
        } else if (ordinal != 1) {
            throw new i();
        } else {
            bVar = a.a("EEEE, dd MMM");
        }
        String e = bVar.e(j);
        l.d(e, "when (datePattern) {\n   …       }.print(timestamp)");
        return e;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: b */
    public long mo14293b() {
        return TimeUnit.MILLISECONDS.toSeconds(((e) mo14285j()).a);
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: c */
    public int mo14292c(long j) {
        return new w3.b.a.b(j).q();
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: d */
    public boolean mo14291d(long j) {
        return p.h().a(new p(j)) == 0;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: e */
    public boolean mo14290e(long j) {
        boolean z = true;
        if (p.h().g(1).a(new p(j)) != 0) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: f */
    public boolean mo14289f(w3.b.a.b bVar, w3.b.a.b bVar2) {
        l.e(bVar, "date");
        l.e(bVar2, "compareDate");
        return bVar.i(bVar2);
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: g */
    public boolean mo14288g(w3.b.a.b bVar, w3.b.a.b bVar2) {
        l.e(bVar, "date");
        l.e(bVar2, "compareDate");
        return bVar.f(bVar2);
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: h */
    public int mo14287h(long j) {
        return new w3.b.a.b(j).r();
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: i */
    public String mo14286i(long j) {
        String m28253e = C8602m.m28253e(this.f53108a, j);
        l.d(m28253e, "DateTimeUtils.getFormatt…uration(context, seconds)");
        return m28253e;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: j */
    public w3.b.a.b mo14285j() {
        w3.b.a.b bVar = new w3.b.a.b();
        l.d(bVar, "DateTime.now()");
        return bVar;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: k */
    public CharSequence mo14284k(long j) {
        String m28252f;
        Context context = this.f53108a;
        StringBuilder sb = C8602m.f26433e;
        synchronized (C8602m.class) {
            try {
                C8602m.f26433e.setLength(0);
                long currentTimeMillis = System.currentTimeMillis();
                long offset = TimeZone.getDefault().getOffset(currentTimeMillis);
                long j2 = C8602m.f26429a;
                long j3 = (currentTimeMillis + offset) / j2;
                long j4 = (offset + j) / j2;
                m28252f = j3 == j4 ? C8602m.m28252f(context, j) : j3 - j4 == 1 ? C19231g0.m13816A(context.getResources().getString(C3656R.string.yesterday), C8502h.f26287b) : j3 - j4 >= 7 ? C8602m.m28254d(context, j) : DateUtils.formatDateRange(context, C8602m.f26434f, j, j, 32770).toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        l.d(m28252f, "DateTimeUtils.getRelativ…text, date, false, false)");
        return m28252f;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: l */
    public String mo14283l(long j) {
        String m28252f = C8602m.m28252f(this.f53108a, j);
        l.d(m28252f, "DateTimeUtils.getFormattedTime(context, millis)");
        return m28252f;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: m */
    public int mo14282m(long j) {
        return new w3.b.a.b(j).u();
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: n */
    public CharSequence mo14281n(long j) {
        CharSequence m28250h = C8602m.m28250h(this.f53108a, j);
        l.d(m28250h, "DateTimeUtils.getRelativeDate(context, date)");
        return m28250h;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: o */
    public boolean mo14280o(long j) {
        boolean z = true;
        if (p.h().i(1).a(new p(j)) != 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: p */
    public long mo14279p(String str, String str2) {
        char c;
        l.e(str, "dateString");
        l.e(str2, "formatString");
        try {
            c = a.a(str2).d(str);
        } catch (IllegalArgumentException e) {
            c = 0;
        }
        return c;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: q */
    public CharSequence mo14278q(long j, long j2, int i) {
        CharSequence relativeTimeSpanString = DateUtils.getRelativeTimeSpanString(j, System.currentTimeMillis(), j2, i);
        l.d(relativeTimeSpanString, "DateUtils.getRelativeTim…(), minResolution, flags)");
        return relativeTimeSpanString;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: r */
    public int mo14277r(long j) {
        return new w3.b.a.b(j).t();
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: s */
    public String mo14276s(int i) {
        return C22128a.m8562v(new Object[]{Integer.valueOf(i / 60), Integer.valueOf(i % 60)}, 2, "%02d:%02d", "java.lang.String.format(format, *args)");
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: t */
    public String mo14275t(long j, String str) {
        l.e(str, "pattern");
        String e = a.a(str).e(j);
        l.d(e, "DateTimeFormat.forPatter…pattern).print(timestamp)");
        return e;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: u */
    public boolean mo14274u(long j, long j2) {
        return new p(j).a(new p(j2)) == 0;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: v */
    public CharSequence mo14273v(long j) {
        CharSequence m28249i = C8602m.m28249i(this.f53108a, j, false);
        l.d(m28249i, "DateTimeUtils.getRelativ…ate(context, date, false)");
        return m28249i;
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: w */
    public boolean mo14272w(long j) {
        p h = p.h();
        l.d(h, "LocalDate.now()");
        return h.f() == new p(j).f();
    }

    @Override // p193e.p194a.p1114o5.AbstractC18951b0
    /* renamed from: x */
    public String mo14271x() {
        StringBuilder sb = C8602m.f26433e;
        g h = g.h();
        w3.b.a.b bVar = new w3.b.a.b();
        Objects.requireNonNull(h);
        int m = h.m(bVar.k());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long j = m;
        int hours = (int) timeUnit.toHours(j);
        String format = String.format(Locale.ENGLISH, "GMT%+03d:%02d", Integer.valueOf(hours), Integer.valueOf(Math.abs((int) (timeUnit.toMinutes(j) - (TimeUnit.HOURS.toMinutes(1L) * hours)))));
        l.d(format, "DateTimeUtils.getCurrentTimeZoneString()");
        return format;
    }
}
