package p131c.p431l.p432a.p468n.p469s.p470a;

import java.util.Calendar;
/* renamed from: c.l.a.n.s.a.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/s/a/a.class */
public class C6862a {
    /* renamed from: a */
    public static int m19529a() {
        return m19527a(System.currentTimeMillis(), 5);
    }

    /* renamed from: a */
    public static int m19528a(long j) {
        return m19527a(j, 5);
    }

    /* renamed from: a */
    public static int m19527a(long j, int i) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        return instance.get(i);
    }

    /* renamed from: b */
    public static int m19526b() {
        return m19527a(System.currentTimeMillis(), 2);
    }

    /* renamed from: b */
    public static int m19525b(long j) {
        return m19527a(j, 2);
    }

    /* renamed from: c */
    public static boolean m19524c(long j) {
        Calendar.getInstance().setTimeInMillis(j);
        return m19526b() == m19525b(j) && m19529a() == m19528a(j);
    }

    /* renamed from: d */
    public static boolean m19523d(long j) {
        return m19526b() == m19525b(j) && m19529a() == m19528a(j) + 1;
    }
}
