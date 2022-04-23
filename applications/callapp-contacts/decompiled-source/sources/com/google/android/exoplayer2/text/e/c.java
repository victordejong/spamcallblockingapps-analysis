package com.google.android.exoplayer2.text.e;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f21801a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21802b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f21803c;

    /* renamed from: d  reason: collision with root package name */
    public final float f21804d;
    public final boolean e;
    public final boolean f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/c$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21805a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21806b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21807c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21808d;
        public final int e;
        public final int f;
        public final int g;

        private a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f21805a = i;
            this.f21806b = i2;
            this.f21807c = i3;
            this.f21808d = i4;
            this.e = i5;
            this.f = i6;
            this.g = i7;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static a a(String str) {
            char c2;
            String[] split = TextUtils.split(str.substring(7), ",");
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            for (int i7 = 0; i7 < split.length; i7++) {
                String d2 = af.d(split[i7].trim());
                d2.hashCode();
                switch (d2.hashCode()) {
                    case -1178781136:
                        if (d2.equals("italic")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -70925746:
                        if (d2.equals("primarycolour")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3029637:
                        if (d2.equals("bold")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3373707:
                        if (d2.equals("name")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 366554320:
                        if (d2.equals("fontsize")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1767875043:
                        if (d2.equals("alignment")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        i6 = i7;
                        break;
                    case 1:
                        i3 = i7;
                        break;
                    case 2:
                        i5 = i7;
                        break;
                    case 3:
                        i = i7;
                        break;
                    case 4:
                        i4 = i7;
                        break;
                    case 5:
                        i2 = i7;
                        break;
                }
            }
            if (i != -1) {
                return new a(i, i2, i3, i4, i5, i6, split.length);
            }
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/c$b.class */
    static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Pattern f21809c = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: d  reason: collision with root package name */
        private static final Pattern f21810d = Pattern.compile(af.a("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        private static final Pattern e = Pattern.compile(af.a("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        private static final Pattern f = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a  reason: collision with root package name */
        public final int f21811a;

        /* renamed from: b  reason: collision with root package name */
        public final PointF f21812b;

        private b(int i, PointF pointF) {
            this.f21811a = i;
            this.f21812b = pointF;
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.google.android.exoplayer2.text.e.c.b a(java.lang.String r5) {
            /*
                Method dump skipped, instructions count: 276
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.e.c.b.a(java.lang.String):com.google.android.exoplayer2.text.e.c$b");
        }

        public static String b(String str) {
            return f21809c.matcher(str).replaceAll("");
        }
    }

    private c(String str, int i, Integer num, float f, boolean z, boolean z2) {
        this.f21801a = str;
        this.f21802b = i;
        this.f21803c = num;
        this.f21804d = f;
        this.e = z;
        this.f = z2;
    }

    static int a(String str) {
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
        n.a("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(str)));
        return -1;
    }

    public static c a(String str, a aVar) {
        com.google.android.exoplayer2.util.a.a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        if (split.length != aVar.g) {
            n.a("SsaStyle", af.a("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(aVar.g), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            return new c(split[aVar.f21805a].trim(), aVar.f21806b != -1 ? a(split[aVar.f21806b].trim()) : -1, aVar.f21807c != -1 ? b(split[aVar.f21807c].trim()) : null, aVar.f21808d != -1 ? c(split[aVar.f21808d].trim()) : -3.4028235E38f, aVar.e != -1 ? d(split[aVar.e].trim()) : false, aVar.f != -1 ? d(split[aVar.f].trim()) : false);
        } catch (RuntimeException e) {
            n.a("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e);
            return null;
        }
    }

    private static Integer b(String str) {
        try {
            long parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            com.google.android.exoplayer2.util.a.a(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(com.google.common.b.b.a(((parseLong >> 24) & 255) ^ 255), com.google.common.b.b.a(parseLong & 255), com.google.common.b.b.a((parseLong >> 8) & 255), com.google.common.b.b.a((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            n.a("SsaStyle", "Failed to parse color expression: '" + str + "'", e);
            return null;
        }
    }

    private static float c(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            n.a("SsaStyle", "Failed to parse font size: '" + str + "'", e);
            return -3.4028235E38f;
        }
    }

    private static boolean d(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e) {
            n.a("SsaStyle", "Failed to parse bold/italic: '" + str + "'", e);
            return false;
        }
    }
}
