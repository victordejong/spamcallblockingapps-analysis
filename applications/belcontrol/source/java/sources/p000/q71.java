package p000;

import android.app.Application;
import java.util.EnumSet;
import java.util.Iterator;
import p000.r71;
/* renamed from: q71 */
/* loaded from: classes3-dex2jar.jar:q71.class */
public class q71 {

    /* renamed from: a */
    public static final byte[] f7710a = {-38, 95, -105, -35, 8, 67, -22, -103, 52, 56, 9, -90, 79, 56, -76, 31, 124, -61, 106, 111, 74, 82};

    /* renamed from: b */
    public static final byte[] f7711b = {18, 96, -80, -71, -37, 16, -98, -116};

    /* renamed from: q71$a */
    /* loaded from: classes3-dex2jar.jar:q71$a.class */
    public enum EnumC1614a {
        DEFAULT(-1, Integer.valueOf(i61.bydefault)),
        PICKUP_HANGUP(0, Integer.valueOf(i61.drop)),
        IGNORE(1, Integer.valueOf(i61.ignore)),
        VOICE_MAIL(2, Integer.valueOf(i61.sentToVoicemail));
        

        /* renamed from: a */
        public Integer f7717a;

        /* renamed from: b */
        public Integer f7718b;

        EnumC1614a(Integer num, Integer num2) {
            this.f7717a = num;
            this.f7718b = num2;
        }

        /* renamed from: a */
        public static EnumC1614a m915a() {
            return m908h(Integer.valueOf(r71.EnumC1638a.f7970n.m691e()));
        }

        /* renamed from: b */
        public static EnumC1614a m914b() {
            return m908h(Integer.valueOf(r71.EnumC1638a.f7973o.m691e()));
        }

        /* renamed from: e */
        public static void m911e(EnumC1614a enumC1614a) {
            if (DEFAULT != enumC1614a) {
                r71.EnumC1638a.f7970n.m683m(enumC1614a.m909g());
                return;
            }
            throw new IllegalArgumentException("Trying to set preferred BlockMode as DEFAULT which is illegal");
        }

        /* renamed from: f */
        public static void m910f(EnumC1614a enumC1614a) {
            if (DEFAULT != enumC1614a) {
                r71.EnumC1638a.f7973o.m683m(enumC1614a.m909g());
                return;
            }
            throw new IllegalArgumentException("Trying to set second line preferred BlockMode as DEFAULT which is illegal");
        }

        /* renamed from: h */
        public static EnumC1614a m908h(Integer num) {
            EnumC1614a[] values;
            for (EnumC1614a enumC1614a : values()) {
                if (enumC1614a.m909g().equals(num)) {
                    return enumC1614a;
                }
            }
            return DEFAULT;
        }

        /* renamed from: c */
        public Integer m913c() {
            return this.f7718b;
        }

        /* renamed from: d */
        public EnumC1614a m912d() {
            return DEFAULT != this ? this : m915a();
        }

        /* renamed from: g */
        public Integer m909g() {
            return this.f7717a;
        }
    }

    /* renamed from: q71$b */
    /* loaded from: classes3-dex2jar.jar:q71$b.class */
    public enum EnumC1615b {
        DEFAULT,
        ITELEPHONY_SAFE
    }

    /* renamed from: q71$c */
    /* loaded from: classes3-dex2jar.jar:q71$c.class */
    public enum EnumC1616c {
        BLOCK_LIST(i61.phone_filter_black),
        ALLOWED_LIST(i61.phone_filter_white);

        EnumC1616c(int i) {
        }

        /* renamed from: a */
        public static EnumC1616c m907a() {
            return ALLOWED_LIST;
        }

        /* renamed from: b */
        public static EnumC1616c m906b() {
            int m691e = r71.EnumC1638a.f7894F.m691e();
            EnumC1616c[] values = values();
            return (m691e < 0 || m691e > values.length) ? m907a() : values[m691e];
        }

        /* renamed from: c */
        public static void m905c(EnumC1616c enumC1616c) {
            r71.EnumC1638a.f7894F.m683m(Integer.valueOf(enumC1616c.ordinal()));
        }
    }

    /* renamed from: q71$d */
    /* loaded from: classes3-dex2jar.jar:q71$d.class */
    public enum EnumC1617d {
        UNKNOWN(1),
        ERROR(2),
        SUCCESS(3);
        

        /* renamed from: a */
        public Integer f7729a;

        EnumC1617d(Integer num) {
            this.f7729a = num;
        }

        /* renamed from: a */
        public Integer m904a() {
            return this.f7729a;
        }
    }

    /* renamed from: q71$e */
    /* loaded from: classes3-dex2jar.jar:q71$e.class */
    public enum EnumC1618e {
        CALL(1),
        SMS(2),
        MMS(4);
        

        /* renamed from: a */
        public Integer f7734a;

        EnumC1618e(Integer num) {
            this.f7734a = num;
        }

        /* renamed from: a */
        public static Integer m903a(EnumSet<EnumC1618e> enumSet) {
            Iterator it = enumSet.iterator();
            Integer num = 0;
            while (true) {
                Integer num2 = num;
                if (it.hasNext()) {
                    num = Integer.valueOf(num2.intValue() | ((EnumC1618e) it.next()).m902b().intValue());
                } else {
                    return num2;
                }
            }
        }

        /* renamed from: c */
        public static EnumSet<EnumC1618e> m901c(Integer num) {
            EnumC1618e[] values;
            EnumSet<EnumC1618e> noneOf = EnumSet.noneOf(EnumC1618e.class);
            for (EnumC1618e enumC1618e : values()) {
                if ((num.intValue() & enumC1618e.m902b().intValue()) == enumC1618e.m902b().intValue()) {
                    noneOf.add(enumC1618e);
                }
            }
            return noneOf;
        }

        /* renamed from: b */
        public Integer m902b() {
            return this.f7734a;
        }
    }

    /* renamed from: q71$f */
    /* loaded from: classes3-dex2jar.jar:q71$f.class */
    public static class C1619f {

        /* renamed from: a */
        public static String f7735a;

        /* renamed from: a */
        public static String m900a() {
            m896e();
            StringBuilder sb = new StringBuilder();
            sb.append(" ");
            sb.append(m897d() ? "" : f7735a);
            return sb.toString();
        }

        /* renamed from: b */
        public static boolean m899b() {
            m896e();
            return "alpha".equalsIgnoreCase(f7735a);
        }

        /* renamed from: c */
        public static boolean m898c() {
            m896e();
            return "beta".equalsIgnoreCase(f7735a);
        }

        /* renamed from: d */
        public static boolean m897d() {
            m896e();
            return "prod".equalsIgnoreCase(f7735a);
        }

        /* renamed from: e */
        public static void m896e() {
            if (f7735a != null) {
                return;
            }
            Application m1840j = fa1.m1840j();
            try {
                String string = m1840j.getPackageManager().getApplicationInfo(m1840j.getPackageName(), 128).metaData.getString("com.kedlin.cca.features");
                f7735a = string;
                if (string != null && (m898c() || m899b())) {
                    return;
                }
                f7735a = "prod";
            } catch (Throwable th) {
                f7735a = "prod";
            }
        }
    }

    /* renamed from: q71$g */
    /* loaded from: classes3-dex2jar.jar:q71$g.class */
    public enum EnumC1620g {
        UNSPECIFIED,
        WHITE_LIST,
        BLACK_LIST
    }

    /* renamed from: q71$h */
    /* loaded from: classes3-dex2jar.jar:q71$h.class */
    public enum EnumC1621h {
        UNDEFINED(-1),
        NUMBER(0),
        CONTACT(1);
        

        /* renamed from: a */
        public Integer f7744a;

        EnumC1621h(Integer num) {
            this.f7744a = num;
        }

        /* renamed from: a */
        public Integer m895a() {
            return this.f7744a;
        }
    }
}
