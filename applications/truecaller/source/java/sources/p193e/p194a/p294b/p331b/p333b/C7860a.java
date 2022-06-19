package p193e.p194a.p294b.p331b.p333b;

import java.text.DateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b.b.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/b/a.class */
public final class C7860a {

    /* renamed from: a */
    public final int f24425a;

    /* renamed from: b */
    public final g f24426b = C25225a.m3978P1(new C7861a(0, this));

    /* renamed from: c */
    public final g f24427c = C25225a.m3978P1(new C7861a(1, this));

    /* renamed from: d */
    public final int f24428d;

    /* renamed from: e */
    public final int f24429e;

    /* renamed from: e.a.b.b.b.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/b/a$a.class */
    public static final class C7861a extends m implements a<String> {

        /* renamed from: b */
        public final /* synthetic */ int f24430b;

        /* renamed from: c */
        public final /* synthetic */ Object f24431c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7861a(int i, Object obj) {
            super(0);
            this.f24430b = i;
            this.f24431c = obj;
        }

        public final Object invoke() {
            int i = this.f24430b;
            if (i == 0) {
                String format = String.format(Locale.US, "%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(((C7860a) this.f24431c).f24428d), Integer.valueOf(((C7860a) this.f24431c).f24429e)}, 2));
                l.d(format, "java.lang.String.format(locale, format, *args)");
                return format;
            } else if (i != 1) {
                throw null;
            } else {
                Calendar calendar = Calendar.getInstance();
                calendar.set(11, ((C7860a) this.f24431c).f24428d);
                calendar.set(12, ((C7860a) this.f24431c).f24429e);
                DateFormat timeInstance = DateFormat.getTimeInstance(3);
                l.d(calendar, "calendar");
                return timeInstance.format(calendar.getTime()).toString();
            }
        }
    }

    public C7860a(int i, int i2) {
        this.f24428d = i;
        this.f24429e = i2;
        this.f24425a = (i * 60) + i2;
    }

    /* renamed from: a */
    public final String m29221a() {
        return (String) this.f24426b.getValue();
    }

    /* renamed from: b */
    public final String m29220b() {
        return (String) this.f24427c.getValue();
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7860a)) {
                return false;
            }
            C7860a c7860a = (C7860a) obj;
            return this.f24428d == c7860a.f24428d && this.f24429e == c7860a.f24429e;
        }
        return true;
    }

    public int hashCode() {
        return (this.f24428d * 31) + this.f24429e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("HourMinute(hour=");
        m8728C.append(this.f24428d);
        m8728C.append(", minute=");
        return C22128a.m8697J2(m8728C, this.f24429e, ")");
    }
}
