package p193e.p1577m.p1578a.p1596c.p1622m1.p1626p;

import android.graphics.PointF;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.m1.p.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/p/c.class */
public final class C24602c {

    /* renamed from: a */
    public final String f68859a;

    /* renamed from: b */
    public final int f68860b;

    /* renamed from: e.m.a.c.m1.p.c$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/p/c$a.class */
    public static final class C24603a {

        /* renamed from: a */
        public final int f68861a;

        /* renamed from: b */
        public final int f68862b;

        /* renamed from: c */
        public final int f68863c;

        public C24603a(int i, int i2, int i3) {
            this.f68861a = i;
            this.f68862b = i2;
            this.f68863c = i3;
        }
    }

    /* renamed from: e.m.a.c.m1.p.c$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/p/c$b.class */
    public static final class C24604b {

        /* renamed from: c */
        public static final Pattern f68864c = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: d */
        public static final Pattern f68865d = Pattern.compile(C24773d0.m4616h("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: e */
        public static final Pattern f68866e = Pattern.compile(C24773d0.m4616h("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: f */
        public static final Pattern f68867f = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a */
        public final int f68868a;

        /* renamed from: b */
        public final PointF f68869b;

        public C24604b(int i, PointF pointF) {
            this.f68868a = i;
            this.f68869b = pointF;
        }

        /* renamed from: a */
        public static PointF m4857a(String str) {
            String str2;
            String str3;
            Matcher matcher = f68865d.matcher(str);
            Matcher matcher2 = f68866e.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                str2 = matcher.group(1);
                str3 = matcher.group(2);
            } else if (!find2) {
                return null;
            } else {
                str2 = matcher2.group(1);
                str3 = matcher2.group(2);
            }
            Objects.requireNonNull(str2);
            float parseFloat = Float.parseFloat(str2.trim());
            Objects.requireNonNull(str3);
            return new PointF(parseFloat, Float.parseFloat(str3.trim()));
        }
    }

    public C24602c(String str, int i) {
        this.f68859a = str;
        this.f68860b = i;
    }

    /* renamed from: a */
    public static int m4858a(String str) {
        boolean z;
        try {
            int parseInt = Integer.parseInt(str.trim());
            switch (parseInt) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (!z) {
                return -1;
            }
            return parseInt;
        } catch (NumberFormatException e) {
            return -1;
        }
    }
}
