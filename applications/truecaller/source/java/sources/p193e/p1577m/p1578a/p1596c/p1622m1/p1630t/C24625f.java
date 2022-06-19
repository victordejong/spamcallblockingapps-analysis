package p193e.p1577m.p1578a.p1596c.p1622m1.p1630t;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24622e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.t.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/f.class */
public final class C24625f {

    /* renamed from: b */
    public static final Pattern f68973b = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: c */
    public static final Pattern f68974c = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: a */
    public final StringBuilder f68975a = new StringBuilder();

    /* renamed from: e.m.a.c.m1.t.f$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/f$a.class */
    public static final class C24626a {

        /* renamed from: e */
        public static final String[] f68976e = new String[0];

        /* renamed from: a */
        public final String f68977a;

        /* renamed from: b */
        public final int f68978b;

        /* renamed from: c */
        public final String f68979c;

        /* renamed from: d */
        public final String[] f68980d;

        public C24626a(String str, int i, String str2, String[] strArr) {
            this.f68978b = i;
            this.f68977a = str;
            this.f68979c = str2;
            this.f68980d = strArr;
        }
    }

    /* renamed from: e.m.a.c.m1.t.f$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/f$b.class */
    public static final class C24627b implements Comparable<C24627b> {

        /* renamed from: a */
        public final int f68981a;

        /* renamed from: b */
        public final C24621d f68982b;

        public C24627b(int i, C24621d c24621d) {
            this.f68981a = i;
            this.f68982b = c24621d;
        }

        @Override // java.lang.Comparable
        public int compareTo(C24627b c24627b) {
            return this.f68981a - c24627b.f68981a;
        }
    }

    /* renamed from: a */
    public static void m4822a(String str, C24626a c24626a, SpannableStringBuilder spannableStringBuilder, List<C24621d> list, List<C24627b> list2) {
        Object[] objArr;
        int i;
        int i2 = c24626a.f68978b;
        int length = spannableStringBuilder.length();
        String str2 = c24626a.f68977a;
        str2.hashCode();
        int hashCode = str2.hashCode();
        if (hashCode == 0) {
            if (str2.equals("")) {
                objArr = null;
            }
            objArr = -1;
        } else if (hashCode == 105) {
            if (str2.equals("i")) {
                objArr = 3;
            }
            objArr = -1;
        } else if (hashCode == 3314158) {
            if (str2.equals("lang")) {
                objArr = 6;
            }
            objArr = -1;
        } else if (hashCode == 98) {
            if (str2.equals(C22021b.f61237c)) {
                objArr = 1;
            }
            objArr = -1;
        } else if (hashCode == 99) {
            if (str2.equals(AbstractC2405c.f7629a)) {
                objArr = 2;
            }
            objArr = -1;
        } else if (hashCode != 117) {
            if (hashCode == 118 && str2.equals("v")) {
                objArr = 5;
            }
            objArr = -1;
        } else {
            if (str2.equals("u")) {
                objArr = 4;
            }
            objArr = -1;
        }
        switch (objArr) {
            case null:
            case 2:
            case 5:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i2, length, 33);
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i2, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
                break;
            default:
                return;
        }
        list2.clear();
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            C24621d c24621d = list.get(i3);
            String str3 = c24626a.f68977a;
            String[] strArr = c24626a.f68980d;
            String str4 = c24626a.f68979c;
            if (!c24621d.f68947a.isEmpty() || !c24621d.f68948b.isEmpty() || !c24621d.f68949c.isEmpty() || !c24621d.f68950d.isEmpty()) {
                int m4825b = C24621d.m4825b(C24621d.m4825b(C24621d.m4825b(0, c24621d.f68947a, str, 1073741824), c24621d.f68948b, str3, 2), c24621d.f68950d, str4, 4);
                i = (m4825b == -1 || !Arrays.asList(strArr).containsAll(c24621d.f68949c)) ? 0 : m4825b + (c24621d.f68949c.size() * 4);
            } else {
                i = TextUtils.isEmpty(str3) ? 1 : 0;
            }
            if (i > 0) {
                list2.add(new C24627b(i, c24621d));
            }
        }
        Collections.sort(list2);
        int size2 = list2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            C24621d c24621d2 = list2.get(i4).f68982b;
            if (c24621d2 != null) {
                if (c24621d2.m4826a() != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(c24621d2.m4826a()), i2, length, 33);
                }
                if ((c24621d2.f68956j == 1 ? 1 : null) != null) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i2, length, 33);
                }
                if ((c24621d2.f68957k == 1 ? 1 : null) != null) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
                }
                if (c24621d2.f68953g) {
                    if (!c24621d2.f68953g) {
                        throw new IllegalStateException("Font color not defined");
                    }
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(c24621d2.f68952f), i2, length, 33);
                }
                if (c24621d2.f68955i) {
                    if (!c24621d2.f68955i) {
                        throw new IllegalStateException("Background color not defined.");
                    }
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(c24621d2.f68954h), i2, length, 33);
                }
                if (c24621d2.f68951e != null) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(c24621d2.f68951e), i2, length, 33);
                }
                int i5 = c24621d2.f68960n;
                if (i5 == 1) {
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) 0.0f, true), i2, length, 33);
                } else if (i5 == 2) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.0f), i2, length, 33);
                } else if (i5 == 3) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.0f), i2, length, 33);
                }
            }
        }
    }

    /* renamed from: b */
    public static boolean m4821b(String str, Matcher matcher, C24798t c24798t, C24622e.C24624b c24624b, StringBuilder sb, List<C24621d> list) {
        try {
            c24624b.f68963a = C24629h.m4815b(matcher.group(1));
            c24624b.f68964b = C24629h.m4815b(matcher.group(2));
            m4820c(matcher.group(3), c24624b);
            sb.setLength(0);
            String m4540f = c24798t.m4540f();
            while (true) {
                String str2 = m4540f;
                if (TextUtils.isEmpty(str2)) {
                    m4819d(str, sb.toString(), c24624b, list);
                    return true;
                }
                if (sb.length() > 0) {
                    sb.append(StringConstant.NEW_LINE);
                }
                sb.append(str2.trim());
                m4540f = c24798t.m4540f();
            }
        } catch (NumberFormatException e) {
            matcher.group();
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011a, code lost:
        if (r0.equals(com.razorpay.AnalyticsConstants.END) == false) goto L27;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4820c(java.lang.String r5, p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24622e.C24624b r6) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24625f.m4820c(java.lang.String, e.m.a.c.m1.t.e$b):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c2  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4819d(java.lang.String r8, java.lang.String r9, p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24622e.C24624b r10, java.util.List<p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24621d> r11) {
        /*
            Method dump skipped, instructions count: 1108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24625f.m4819d(java.lang.String, java.lang.String, e.m.a.c.m1.t.e$b, java.util.List):void");
    }

    /* renamed from: e */
    public static int m4818e(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    z = false;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    z = true;
                    break;
                }
                break;
            case 100571:
                if (str.equals(AnalyticsConstants.END)) {
                    z = true;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(AnalyticsConstants.START)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
                return 1;
            case true:
                return 2;
            case true:
                return 0;
            default:
                return Integer.MIN_VALUE;
        }
    }
}
