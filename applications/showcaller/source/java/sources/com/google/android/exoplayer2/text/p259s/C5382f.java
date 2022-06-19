package com.google.android.exoplayer2.text.p259s;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.p259s.C5379e;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.s.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/f.class */
public final class C5382f {

    /* renamed from: a */
    public static final Pattern f17229a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b */
    private static final Pattern f17230b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c */
    private final StringBuilder f17231c = new StringBuilder();

    /* renamed from: com.google.android.exoplayer2.text.s.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/f$a.class */
    public static final class C5383a {

        /* renamed from: a */
        private static final String[] f17232a = new String[0];

        /* renamed from: b */
        public final String f17233b;

        /* renamed from: c */
        public final int f17234c;

        /* renamed from: d */
        public final String f17235d;

        /* renamed from: e */
        public final String[] f17236e;

        private C5383a(String str, int i, String str2, String[] strArr) {
            this.f17234c = i;
            this.f17233b = str;
            this.f17235d = str2;
            this.f17236e = strArr;
        }

        /* renamed from: a */
        public static C5383a m19382a(String str, int i) {
            String str2;
            String trim = str.trim();
            C5508e.m18915a(!trim.isEmpty());
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                str2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
            }
            String[] m18818n0 = C5515h0.m18818n0(trim, "\\.");
            return new C5383a(m18818n0[0], i, str2, m18818n0.length > 1 ? (String[]) C5515h0.m18832g0(m18818n0, 1, m18818n0.length) : f17232a);
        }

        /* renamed from: b */
        public static C5383a m19381b() {
            return new C5383a("", 0, "", new String[0]);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.s.f$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/f$b.class */
    public static final class C5384b implements Comparable<C5384b> {

        /* renamed from: d */
        public final int f17237d;

        /* renamed from: e */
        public final C5378d f17238e;

        public C5384b(int i, C5378d c5378d) {
            this.f17237d = i;
            this.f17238e = c5378d;
        }

        /* renamed from: a */
        public int compareTo(C5384b c5384b) {
            return this.f17237d - c5384b.f17237d;
        }
    }

    /* renamed from: a */
    private static void m19397a(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals("gt")) {
                    z = false;
                    break;
                }
                break;
            case 3464:
                if (str.equals("lt")) {
                    z = true;
                    break;
                }
                break;
            case 96708:
                if (str.equals("amp")) {
                    z = true;
                    break;
                }
                break;
            case 3374865:
                if (str.equals("nbsp")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                spannableStringBuilder.append('>');
                return;
            case true:
                spannableStringBuilder.append('<');
                return;
            case true:
                spannableStringBuilder.append('&');
                return;
            case true:
                spannableStringBuilder.append(' ');
                return;
            default:
                C5526o.m18742f("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                return;
        }
    }

    /* renamed from: b */
    private static void m19396b(String str, C5383a c5383a, SpannableStringBuilder spannableStringBuilder, List<C5378d> list, List<C5384b> list2) {
        int i = c5383a.f17234c;
        int length = spannableStringBuilder.length();
        String str2 = c5383a.f17233b;
        str2.hashCode();
        boolean z = true;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    z = false;
                    break;
                }
                break;
            case 98:
                if (str2.equals("b")) {
                    z = true;
                    break;
                }
                break;
            case 99:
                if (str2.equals("c")) {
                    z = true;
                    break;
                }
                break;
            case 105:
                if (str2.equals("i")) {
                    z = true;
                    break;
                }
                break;
            case 117:
                if (str2.equals("u")) {
                    z = true;
                    break;
                }
                break;
            case 118:
                if (str2.equals("v")) {
                    z = true;
                    break;
                }
                break;
            case 3314158:
                if (str2.equals("lang")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
            case true:
                break;
            case true:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case true:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case true:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            default:
                return;
        }
        list2.clear();
        m19393e(list, str, c5383a, list2);
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            m19395c(spannableStringBuilder, list2.get(i2).f17238e, i, length);
        }
    }

    /* renamed from: c */
    private static void m19395c(SpannableStringBuilder spannableStringBuilder, C5378d c5378d, int i, int i2) {
        if (c5378d == null) {
            return;
        }
        if (c5378d.m19433g() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(c5378d.m19433g()), i, i2, 33);
        }
        if (c5378d.m19429k()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (c5378d.m19428l()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (c5378d.m19430j()) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(c5378d.m19438b()), i, i2, 33);
        }
        if (c5378d.m19431i()) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(c5378d.m19439a()), i, i2, 33);
        }
        if (c5378d.m19437c() != null) {
            spannableStringBuilder.setSpan(new TypefaceSpan(c5378d.m19437c()), i, i2, 33);
        }
        Layout.Alignment m19432h = c5378d.m19432h();
        if (m19432h != null) {
            spannableStringBuilder.setSpan(new AlignmentSpan.Standard(m19432h), i, i2, 33);
        }
        int m19435e = c5378d.m19435e();
        if (m19435e == 1) {
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) c5378d.m19436d(), true), i, i2, 33);
        } else if (m19435e == 2) {
            spannableStringBuilder.setSpan(new RelativeSizeSpan(c5378d.m19436d()), i, i2, 33);
        } else if (m19435e != 3) {
        } else {
            spannableStringBuilder.setSpan(new RelativeSizeSpan(c5378d.m19436d() / 100.0f), i, i2, 33);
        }
    }

    /* renamed from: d */
    private static int m19394d(String str, int i) {
        int indexOf = str.indexOf(62, i);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    /* renamed from: e */
    private static void m19393e(List<C5378d> list, String str, C5383a c5383a, List<C5384b> list2) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C5378d c5378d = list.get(i);
            int m19434f = c5378d.m19434f(str, c5383a.f17233b, c5383a.f17236e, c5383a.f17235d);
            if (m19434f > 0) {
                list2.add(new C5384b(m19434f, c5378d));
            }
        }
        Collections.sort(list2);
    }

    /* renamed from: f */
    private static String m19392f(String str) {
        String trim = str.trim();
        C5508e.m18915a(!trim.isEmpty());
        return C5515h0.m18816o0(trim, "[ \\.]")[0];
    }

    /* renamed from: g */
    private static boolean m19391g(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 98:
                if (str.equals("b")) {
                    z = false;
                    break;
                }
                break;
            case 99:
                if (str.equals("c")) {
                    z = true;
                    break;
                }
                break;
            case 105:
                if (str.equals("i")) {
                    z = true;
                    break;
                }
                break;
            case 117:
                if (str.equals("u")) {
                    z = true;
                    break;
                }
                break;
            case 118:
                if (str.equals("v")) {
                    z = true;
                    break;
                }
                break;
            case 3314158:
                if (str.equals("lang")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: i */
    private static boolean m19389i(String str, Matcher matcher, C5536v c5536v, C5379e.C5381b c5381b, StringBuilder sb, List<C5378d> list) {
        try {
            c5381b.m19401n(C5386h.m19373d(matcher.group(1))).m19407h(C5386h.m19373d(matcher.group(2)));
            m19388j(matcher.group(3), c5381b);
            sb.setLength(0);
            String m18666m = c5536v.m18666m();
            while (true) {
                String str2 = m18666m;
                if (TextUtils.isEmpty(str2)) {
                    m19387k(str, sb.toString(), c5381b, list);
                    return true;
                }
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(str2.trim());
                m18666m = c5536v.m18666m();
            }
        } catch (NumberFormatException e) {
            C5526o.m18742f("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return false;
        }
    }

    /* renamed from: j */
    public static void m19388j(String str, C5379e.C5381b c5381b) {
        Matcher matcher = f17230b.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                if ("line".equals(group)) {
                    m19386l(group2, c5381b);
                } else if ("align".equals(group)) {
                    c5381b.m19399p(m19383o(group2));
                } else if ("position".equals(group)) {
                    m19384n(group2, c5381b);
                } else if ("size".equals(group)) {
                    c5381b.m19398q(C5386h.m19374c(group2));
                } else {
                    C5526o.m18742f("WebvttCueParser", "Unknown cue setting " + group + ":" + group2);
                }
            } catch (NumberFormatException e) {
                C5526o.m18742f("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* renamed from: k */
    public static void m19387k(String str, String str2, C5379e.C5381b c5381b, List<C5378d> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            if (charAt == '&') {
                int i2 = i + 1;
                int indexOf = str2.indexOf(59, i2);
                int indexOf2 = str2.indexOf(32, i2);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    m19397a(str2.substring(i2, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                    i = i2;
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i++;
            } else {
                int i3 = i + 1;
                if (i3 >= str2.length()) {
                    i = i3;
                } else {
                    int i4 = 1;
                    boolean z = str2.charAt(i3) == '/';
                    int m19394d = m19394d(str2, i3);
                    int i5 = m19394d - 2;
                    boolean z2 = str2.charAt(i5) == '/';
                    if (z) {
                        i4 = 2;
                    }
                    if (!z2) {
                        i5 = m19394d - 1;
                    }
                    String substring = str2.substring(i + i4, i5);
                    if (substring.trim().isEmpty()) {
                        i = m19394d;
                    } else {
                        String m19392f = m19392f(substring);
                        if (!m19391g(m19392f)) {
                            i = m19394d;
                        } else if (z) {
                            while (true) {
                                if (!arrayDeque.isEmpty()) {
                                    C5383a c5383a = (C5383a) arrayDeque.pop();
                                    m19396b(str, c5383a, spannableStringBuilder, list, arrayList);
                                    if (c5383a.f17233b.equals(m19392f)) {
                                        i = m19394d;
                                        break;
                                    }
                                } else {
                                    i = m19394d;
                                    break;
                                }
                            }
                        } else {
                            i = m19394d;
                            if (!z2) {
                                arrayDeque.push(C5383a.m19382a(substring, spannableStringBuilder.length()));
                                i = m19394d;
                            }
                        }
                    }
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            m19396b(str, (C5383a) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        m19396b(str, C5383a.m19381b(), spannableStringBuilder, list, arrayList);
        c5381b.m19400o(spannableStringBuilder);
    }

    /* renamed from: l */
    private static void m19386l(String str, C5379e.C5381b c5381b) {
        int indexOf = str.indexOf(44);
        String str2 = str;
        if (indexOf != -1) {
            c5381b.m19405j(m19385m(str.substring(indexOf + 1)));
            str2 = str.substring(0, indexOf);
        }
        if (str2.endsWith("%")) {
            c5381b.m19406i(C5386h.m19374c(str2)).m19404k(0);
            return;
        }
        int parseInt = Integer.parseInt(str2);
        int i = parseInt;
        if (parseInt < 0) {
            i = parseInt - 1;
        }
        c5381b.m19406i(i).m19404k(1);
    }

    /* renamed from: m */
    private static int m19385m(String str) {
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
                if (str.equals("end")) {
                    z = true;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
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
                C5526o.m18742f("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    /* renamed from: n */
    private static void m19384n(String str, C5379e.C5381b c5381b) {
        int indexOf = str.indexOf(44);
        String str2 = str;
        if (indexOf != -1) {
            c5381b.m19402m(m19385m(str.substring(indexOf + 1)));
            str2 = str.substring(0, indexOf);
        }
        c5381b.m19403l(C5386h.m19374c(str2));
    }

    /* renamed from: o */
    private static int m19383o(String str) {
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
                if (str.equals("end")) {
                    z = true;
                    break;
                }
                break;
            case 3317767:
                if (str.equals("left")) {
                    z = true;
                    break;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    z = true;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
                return 2;
            case true:
                return 3;
            case true:
                return 4;
            case true:
                return 5;
            case true:
                return 1;
            default:
                C5526o.m18742f("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    /* renamed from: h */
    public boolean m19390h(C5536v c5536v, C5379e.C5381b c5381b, List<C5378d> list) {
        String m18666m = c5536v.m18666m();
        if (m18666m == null) {
            return false;
        }
        Pattern pattern = f17229a;
        Matcher matcher = pattern.matcher(m18666m);
        if (matcher.matches()) {
            return m19389i(null, matcher, c5536v, c5381b, this.f17231c, list);
        }
        String m18666m2 = c5536v.m18666m();
        if (m18666m2 == null) {
            return false;
        }
        Matcher matcher2 = pattern.matcher(m18666m2);
        if (!matcher2.matches()) {
            return false;
        }
        return m19389i(m18666m.trim(), matcher2, c5536v, c5381b, this.f17231c, list);
    }
}
