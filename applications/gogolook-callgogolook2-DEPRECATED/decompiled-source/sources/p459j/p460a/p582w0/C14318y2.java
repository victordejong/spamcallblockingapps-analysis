package p459j.p460a.p582w0;

import gogolook.callgogolook2.p074ad.AdConstant;
import java.time.Period;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\b¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/util/PeriodCompat;", "", "years", "", "months", AdConstant.KEY_DAYS, "(III)V", "getDays", "()I", "getMonths", "getYears", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.y2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/y2.class */
public final class C14318y2 {

    /* renamed from: d */
    public static final Pattern f32071d;

    /* renamed from: e */
    public static final C14319a f32072e = new C14319a(null);

    /* renamed from: a */
    public final int f32073a;

    /* renamed from: b */
    public final int f32074b;

    /* renamed from: c */
    public final int f32075c;

    /* renamed from: j.a.w0.y2$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/y2$a.class */
    public static final class C14319a {
        public C14319a() {
        }

        public /* synthetic */ C14319a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m1596a(String str, int i) {
            return str != null ? Integer.parseInt(str) * i : 0;
        }

        /* renamed from: a */
        public final C14318y2 m1598a(CharSequence charSequence) {
            Matcher matcher = C14318y2.f32071d.matcher(charSequence);
            C15149k.m383a((Object) matcher, "PATTERN.matcher(text)");
            if (matcher.matches()) {
                int i = 1;
                if (C15149k.m384a((Object) "-", (Object) matcher.group(1))) {
                    i = -1;
                }
                String group = matcher.group(2);
                String group2 = matcher.group(3);
                String group3 = matcher.group(4);
                String group4 = matcher.group(5);
                if (!(group == null && group2 == null && group4 == null && group3 == null)) {
                    try {
                        return new C14318y2(m1596a(group, i), m1596a(group2, i), (m1596a(group3, i) * 7) + m1596a(group4, i));
                    } catch (NumberFormatException e) {
                        throw new NumberFormatException(charSequence + " cannot be parsed to a Period");
                    }
                }
            }
            throw new NumberFormatException(charSequence + " cannot be parsed to a Period");
        }

        /* renamed from: a */
        public final C14318y2 m1597a(String str) {
            C14318y2 y2Var;
            C15149k.m377b(str, "periodStr");
            if (C14017g4.m2801w()) {
                Period parse = Period.parse(str);
                y2Var = new C14318y2(parse.getYears(), parse.getMonths(), parse.getDays());
            } else {
                y2Var = m1598a((CharSequence) str);
            }
            return y2Var;
        }
    }

    static {
        Pattern compile = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        C15149k.m383a((Object) compile, "Pattern.compile(\"([-+]?)…Pattern.CASE_INSENSITIVE)");
        f32071d = compile;
    }

    public C14318y2(int i, int i2, int i3) {
        this.f32073a = i;
        this.f32074b = i2;
        this.f32075c = i3;
    }

    /* renamed from: a */
    public final int m1602a() {
        return this.f32075c;
    }

    /* renamed from: b */
    public final int m1601b() {
        return this.f32074b;
    }

    /* renamed from: c */
    public final int m1600c() {
        return this.f32073a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14318y2)) {
            return false;
        }
        C14318y2 y2Var = (C14318y2) obj;
        if (!(this.f32073a == y2Var.f32073a)) {
            return false;
        }
        if (!(this.f32074b == y2Var.f32074b)) {
            return false;
        }
        return this.f32075c == y2Var.f32075c;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        hashCode = Integer.valueOf(this.f32073a).hashCode();
        hashCode2 = Integer.valueOf(this.f32074b).hashCode();
        hashCode3 = Integer.valueOf(this.f32075c).hashCode();
        return (((hashCode * 31) + hashCode2) * 31) + hashCode3;
    }

    public String toString() {
        return "PeriodCompat(years=" + this.f32073a + ", months=" + this.f32074b + ", days=" + this.f32075c + ")";
    }
}
