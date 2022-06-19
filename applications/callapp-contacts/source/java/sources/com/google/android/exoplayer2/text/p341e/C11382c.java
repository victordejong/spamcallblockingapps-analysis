package com.google.android.exoplayer2.text.p341e;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.common.p386b.C15361b;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.text.e.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/c.class */
public final class C11382c {

    /* renamed from: a */
    public final String f37534a;

    /* renamed from: b */
    public final int f37535b;

    /* renamed from: c */
    public final Integer f37536c;

    /* renamed from: d */
    public final float f37537d;

    /* renamed from: e */
    public final boolean f37538e;

    /* renamed from: f */
    public final boolean f37539f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.e.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/c$a.class */
    public static final class C11383a {

        /* renamed from: a */
        public final int f37540a;

        /* renamed from: b */
        public final int f37541b;

        /* renamed from: c */
        public final int f37542c;

        /* renamed from: d */
        public final int f37543d;

        /* renamed from: e */
        public final int f37544e;

        /* renamed from: f */
        public final int f37545f;

        /* renamed from: g */
        public final int f37546g;

        private C11383a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f37540a = i;
            this.f37541b = i2;
            this.f37542c = i3;
            this.f37543d = i4;
            this.f37544e = i5;
            this.f37545f = i6;
            this.f37546g = i7;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public static C11383a m20707a(String str) {
            boolean z;
            String[] split = TextUtils.split(str.substring(7), ",");
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            for (int i7 = 0; i7 < split.length; i7++) {
                String m19927d = C11599af.m19927d(split[i7].trim());
                m19927d.hashCode();
                switch (m19927d.hashCode()) {
                    case -1178781136:
                        if (m19927d.equals("italic")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -70925746:
                        if (m19927d.equals("primarycolour")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 3029637:
                        if (m19927d.equals("bold")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 3373707:
                        if (m19927d.equals("name")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 366554320:
                        if (m19927d.equals("fontsize")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1767875043:
                        if (m19927d.equals("alignment")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                switch (z) {
                    case false:
                        i6 = i7;
                        break;
                    case true:
                        i3 = i7;
                        break;
                    case true:
                        i5 = i7;
                        break;
                    case true:
                        i = i7;
                        break;
                    case true:
                        i4 = i7;
                        break;
                    case true:
                        i2 = i7;
                        break;
                }
            }
            if (i != -1) {
                return new C11383a(i, i2, i3, i4, i5, i6, split.length);
            }
            return null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.e.c$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/c$b.class */
    static final class C11384b {

        /* renamed from: c */
        private static final Pattern f37547c = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: d */
        private static final Pattern f37548d = Pattern.compile(C11599af.m19968a("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: e */
        private static final Pattern f37549e = Pattern.compile(C11599af.m19968a("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: f */
        private static final Pattern f37550f = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a */
        public final int f37551a;

        /* renamed from: b */
        public final PointF f37552b;

        private C11384b(int i, PointF pointF) {
            this.f37551a = i;
            this.f37552b = pointF;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:5|36|6|(4:8|(1:10)|11|12)(2:13|(1:15)(10:19|20|(1:22)|38|23|42|(1:25)(1:26)|27|(3:41|29|45)(1:44)|43))|16|17|18|20|(0)|38|23|42|(0)(0)|27|(0)(0)|43|3) */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00fd, code lost:
            r7 = r10;
         */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00d4 A[Catch: RuntimeException -> 0x00fc, TRY_LEAVE, TryCatch #1 {RuntimeException -> 0x00fc, blocks: (B:23:0x00c4, B:25:0x00d4), top: B:38:0x00c4 }] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00f3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x000c A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.google.android.exoplayer2.text.p341e.C11382c.C11384b m20706a(java.lang.String r5) {
            /*
                Method dump skipped, instructions count: 276
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p341e.C11382c.C11384b.m20706a(java.lang.String):com.google.android.exoplayer2.text.e.c$b");
        }

        /* renamed from: b */
        public static String m20705b(String str) {
            return f37547c.matcher(str).replaceAll("");
        }
    }

    private C11382c(String str, int i, Integer num, float f, boolean z, boolean z2) {
        this.f37534a = str;
        this.f37535b = i;
        this.f37536c = num;
        this.f37537d = f;
        this.f37538e = z;
        this.f37539f = z2;
    }

    /* renamed from: a */
    static int m20712a(String str) {
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
            if (z) {
                return parseInt;
            }
        } catch (NumberFormatException e) {
        }
        C11617n.m19863a("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(str)));
        return -1;
    }

    /* renamed from: a */
    public static C11382c m20711a(String str, C11383a c11383a) {
        C11593a.m20022a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        if (split.length != c11383a.f37546g) {
            C11617n.m19863a("SsaStyle", C11599af.m19968a("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(c11383a.f37546g), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            return new C11382c(split[c11383a.f37540a].trim(), c11383a.f37541b != -1 ? m20712a(split[c11383a.f37541b].trim()) : -1, c11383a.f37542c != -1 ? m20710b(split[c11383a.f37542c].trim()) : null, c11383a.f37543d != -1 ? m20709c(split[c11383a.f37543d].trim()) : -3.4028235E38f, c11383a.f37544e != -1 ? m20708d(split[c11383a.f37544e].trim()) : false, c11383a.f37545f != -1 ? m20708d(split[c11383a.f37545f].trim()) : false);
        } catch (RuntimeException e) {
            C11617n.m19862a("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: b */
    private static Integer m20710b(String str) {
        try {
            char parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            C11593a.m20022a(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(C15361b.m8980a(((parseLong >> 24) & 255) ^ 255), C15361b.m8980a(parseLong & 255), C15361b.m8980a((parseLong >> '\b') & 255), C15361b.m8980a((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            C11617n.m19862a("SsaStyle", "Failed to parse color expression: '" + str + "'", e);
            return null;
        }
    }

    /* renamed from: c */
    private static float m20709c(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            C11617n.m19862a("SsaStyle", "Failed to parse font size: '" + str + "'", e);
            return -3.4028235E38f;
        }
    }

    /* renamed from: d */
    private static boolean m20708d(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e) {
            C11617n.m19862a("SsaStyle", "Failed to parse bold/italic: '" + str + "'", e);
            return false;
        }
    }
}
