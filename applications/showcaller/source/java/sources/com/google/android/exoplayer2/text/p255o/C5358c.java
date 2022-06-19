package com.google.android.exoplayer2.text.p255o;

import android.graphics.PointF;
import android.text.TextUtils;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.o.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/o/c.class */
public final class C5358c {

    /* renamed from: a */
    public final String f17111a;

    /* renamed from: b */
    public final int f17112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.o.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/o/c$a.class */
    public static final class C5359a {

        /* renamed from: a */
        public final int f17113a;

        /* renamed from: b */
        public final int f17114b;

        /* renamed from: c */
        public final int f17115c;

        private C5359a(int i, int i2, int i3) {
            this.f17113a = i;
            this.f17114b = i2;
            this.f17115c = i3;
        }

        /* renamed from: a */
        public static C5359a m19525a(String str) {
            String[] split = TextUtils.split(str.substring(7), ",");
            int i = -1;
            int i2 = -1;
            for (int i3 = 0; i3 < split.length; i3++) {
                String m18804u0 = C5515h0.m18804u0(split[i3].trim());
                m18804u0.hashCode();
                if (m18804u0.equals(ShortCut.NAME)) {
                    i = i3;
                } else if (m18804u0.equals("alignment")) {
                    i2 = i3;
                }
            }
            return i != -1 ? new C5359a(i, i2, split.length) : null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.o.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/o/c$b.class */
    static final class C5360b {

        /* renamed from: a */
        private static final Pattern f17116a = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: b */
        private static final Pattern f17117b = Pattern.compile(C5515h0.m18805u("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: c */
        private static final Pattern f17118c = Pattern.compile(C5515h0.m18805u("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: d */
        private static final Pattern f17119d = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: e */
        public final int f17120e;

        /* renamed from: f */
        public final PointF f17121f;

        private C5360b(int i, PointF pointF) {
            this.f17120e = i;
            this.f17121f = pointF;
        }

        /* renamed from: a */
        private static int m19524a(String str) {
            Matcher matcher = f17119d.matcher(str);
            return matcher.find() ? C5358c.m19526d(matcher.group(1)) : -1;
        }

        /* renamed from: b */
        public static C5360b m19523b(String str) {
            PointF pointF;
            Matcher matcher = f17116a.matcher(str);
            PointF pointF2 = null;
            int i = -1;
            while (matcher.find()) {
                String group = matcher.group(1);
                try {
                    PointF m19522c = m19522c(group);
                    pointF = pointF2;
                    if (m19522c != null) {
                        pointF = m19522c;
                    }
                } catch (RuntimeException e) {
                    pointF = pointF2;
                }
                try {
                    int m19524a = m19524a(group);
                    pointF2 = pointF;
                    if (m19524a != -1) {
                        i = m19524a;
                        pointF2 = pointF;
                    }
                } catch (RuntimeException e2) {
                    pointF2 = pointF;
                }
            }
            return new C5360b(i, pointF2);
        }

        /* renamed from: c */
        private static PointF m19522c(String str) {
            String str2;
            String str3;
            Matcher matcher = f17117b.matcher(str);
            Matcher matcher2 = f17118c.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                if (find2) {
                    C5526o.m18743e("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                str3 = matcher.group(1);
                str2 = matcher.group(2);
            } else if (!find2) {
                return null;
            } else {
                str3 = matcher2.group(1);
                str2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) C5508e.m18911e(str3)).trim()), Float.parseFloat(((String) C5508e.m18911e(str2)).trim()));
        }

        /* renamed from: d */
        public static String m19521d(String str) {
            return f17116a.matcher(str).replaceAll("");
        }
    }

    private C5358c(String str, int i) {
        this.f17111a = str;
        this.f17112b = i;
    }

    /* renamed from: b */
    public static C5358c m19528b(String str, C5359a c5359a) {
        C5508e.m18915a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i = c5359a.f17115c;
        if (length != i) {
            C5526o.m18742f("SsaStyle", C5515h0.m18805u("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            return new C5358c(split[c5359a.f17113a].trim(), m19526d(split[c5359a.f17114b]));
        } catch (RuntimeException e) {
            C5526o.m18741g("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e);
            return null;
        }
    }

    /* renamed from: c */
    private static boolean m19527c(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: d */
    public static int m19526d(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (m19527c(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException e) {
        }
        C5526o.m18742f("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }
}
