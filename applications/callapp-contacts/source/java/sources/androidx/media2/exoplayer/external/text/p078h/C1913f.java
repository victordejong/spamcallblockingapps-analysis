package androidx.media2.exoplayer.external.text.p078h;

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
import androidx.media2.exoplayer.external.text.p078h.C1910e;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
import com.appsflyer.share.Constants;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.api.client.googleapis.notifications.C15291b;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.media2.exoplayer.external.text.h.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/f.class */
public final class C1913f {

    /* renamed from: a */
    public static final Pattern f7697a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b */
    private static final Pattern f7698b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c */
    private final StringBuilder f7699c = new StringBuilder();

    /* renamed from: androidx.media2.exoplayer.external.text.h.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/f$a.class */
    public static final class C1914a {

        /* renamed from: e */
        private static final String[] f7700e = new String[0];

        /* renamed from: a */
        public final String f7701a;

        /* renamed from: b */
        public final int f7702b;

        /* renamed from: c */
        public final String f7703c;

        /* renamed from: d */
        public final String[] f7704d;

        private C1914a(String str, int i, String str2, String[] strArr) {
            this.f7702b = i;
            this.f7701a = str;
            this.f7703c = str2;
            this.f7704d = strArr;
        }

        /* renamed from: a */
        public static C1914a m41894a() {
            return new C1914a("", 0, "", new String[0]);
        }

        /* renamed from: a */
        public static C1914a m41893a(String str, int i) {
            String str2;
            String trim = str.trim();
            if (trim.isEmpty()) {
                return null;
            }
            int indexOf = trim.indexOf(StringUtils.SPACE);
            if (indexOf == -1) {
                str2 = "";
            } else {
                str2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
            }
            String[] m41654a = C1996ac.m41654a(trim, "\\.");
            return new C1914a(m41654a[0], i, str2, m41654a.length > 1 ? (String[]) Arrays.copyOfRange(m41654a, 1, m41654a.length) : f7700e);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.h.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/f$b.class */
    public static final class C1915b implements Comparable<C1915b> {

        /* renamed from: a */
        public final int f7705a;

        /* renamed from: b */
        public final C1909d f7706b;

        public C1915b(int i, C1909d c1909d) {
            this.f7705a = i;
            this.f7706b = c1909d;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(C1915b c1915b) {
            return this.f7705a - c1915b.f7705a;
        }
    }

    /* renamed from: a */
    private static int m41900a(String str) {
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
                if (str.equals(EventConstants.START)) {
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
                String valueOf = String.valueOf(str);
                C2009j.m41584a("WebvttCueParser", valueOf.length() != 0 ? "Invalid anchor value: ".concat(valueOf) : new String("Invalid anchor value: "));
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    /* renamed from: a */
    public static void m41899a(String str, C1910e.C1912a c1912a) {
        Layout.Alignment alignment;
        Matcher matcher = f7698b.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                boolean z = false;
                if ("line".equals(group)) {
                    int indexOf = group2.indexOf(44);
                    if (indexOf != -1) {
                        c1912a.f7693g = m41900a(group2.substring(indexOf + 1));
                        group2 = group2.substring(0, indexOf);
                    } else {
                        c1912a.f7693g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                    }
                    if (group2.endsWith("%")) {
                        c1912a.f7691e = C1917h.m41886b(group2);
                        c1912a.f7692f = 0;
                    } else {
                        int parseInt = Integer.parseInt(group2);
                        int i = parseInt;
                        if (parseInt < 0) {
                            i = parseInt - 1;
                        }
                        c1912a.f7691e = i;
                        c1912a.f7692f = 1;
                    }
                } else if ("align".equals(group)) {
                    switch (group2.hashCode()) {
                        case -1364013995:
                            if (group2.equals("center")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1074341483:
                            if (group2.equals("middle")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 100571:
                            if (group2.equals("end")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 3317767:
                            if (group2.equals("left")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 108511772:
                            if (group2.equals("right")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 109757538:
                            if (group2.equals(EventConstants.START)) {
                                break;
                            }
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                    if (!z || z) {
                        alignment = Layout.Alignment.ALIGN_NORMAL;
                    } else if (z || z) {
                        alignment = Layout.Alignment.ALIGN_CENTER;
                    } else if (z || z) {
                        alignment = Layout.Alignment.ALIGN_OPPOSITE;
                    } else {
                        String valueOf = String.valueOf(group2);
                        C2009j.m41584a("WebvttCueParser", valueOf.length() != 0 ? "Invalid alignment value: ".concat(valueOf) : new String("Invalid alignment value: "));
                        alignment = null;
                    }
                    c1912a.f7690d = alignment;
                } else if ("position".equals(group)) {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        c1912a.f7695i = m41900a(group2.substring(indexOf2 + 1));
                        group2 = group2.substring(0, indexOf2);
                    } else {
                        c1912a.f7695i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                    }
                    c1912a.f7694h = C1917h.m41886b(group2);
                } else if ("size".equals(group)) {
                    c1912a.f7696j = C1917h.m41886b(group2);
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(group).length() + 21 + String.valueOf(group2).length());
                    sb.append("Unknown cue setting ");
                    sb.append(group);
                    sb.append(":");
                    sb.append(group2);
                    C2009j.m41584a("WebvttCueParser", sb.toString());
                }
            } catch (NumberFormatException e) {
                String valueOf2 = String.valueOf(matcher.group());
                C2009j.m41584a("WebvttCueParser", valueOf2.length() != 0 ? "Skipping bad cue setting: ".concat(valueOf2) : new String("Skipping bad cue setting: "));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static void m41898a(String str, C1914a c1914a, SpannableStringBuilder spannableStringBuilder, List<C1909d> list, List<C1915b> list2) {
        boolean z;
        int i = c1914a.f7702b;
        int length = spannableStringBuilder.length();
        String str2 = c1914a.f7701a;
        str2.hashCode();
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 98:
                if (str2.equals(C15291b.f55271a)) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 99:
                if (str2.equals(Constants.URL_CAMPAIGN)) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 105:
                if (str2.equals("i")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 117:
                if (str2.equals("u")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 118:
                if (str2.equals("v")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3314158:
                if (str2.equals("lang")) {
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
        m41895a(list, str, c1914a, list2);
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1909d c1909d = list2.get(i2).f7706b;
            if (c1909d != null) {
                if (c1909d.m41906a() != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(c1909d.m41906a()), i, length, 33);
                }
                if (c1909d.f7677j == 1) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i, length, 33);
                }
                if (c1909d.f7678k == 1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                }
                if (c1909d.f7674g) {
                    if (!c1909d.f7674g) {
                        throw new IllegalStateException("Font color not defined");
                    }
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(c1909d.f7673f), i, length, 33);
                }
                if (c1909d.f7676i) {
                    if (!c1909d.f7676i) {
                        throw new IllegalStateException("Background color not defined.");
                    }
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(c1909d.f7675h), i, length, 33);
                }
                if (c1909d.f7672e != null) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(c1909d.f7672e), i, length, 33);
                }
                if (c1909d.f7683p != null) {
                    spannableStringBuilder.setSpan(new AlignmentSpan.Standard(c1909d.f7683p), i, length, 33);
                }
                int i3 = c1909d.f7681n;
                if (i3 == 1) {
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) c1909d.f7682o, true), i, length, 33);
                } else if (i3 == 2) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(c1909d.f7682o), i, length, 33);
                } else if (i3 == 3) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(c1909d.f7682o / 100.0f), i, length, 33);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m41897a(String str, String str2, C1910e.C1912a c1912a, List<C1909d> list) {
        boolean z;
        boolean z2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            if (charAt == '&') {
                i++;
                int indexOf = str2.indexOf(59, i);
                int indexOf2 = str2.indexOf(32, i);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    String substring = str2.substring(i, indexOf);
                    substring.hashCode();
                    switch (substring.hashCode()) {
                        case 3309:
                            if (substring.equals("gt")) {
                                z2 = false;
                                break;
                            } else {
                                z2 = true;
                                break;
                            }
                        case 3464:
                            if (substring.equals("lt")) {
                                z2 = true;
                                break;
                            } else {
                                z2 = true;
                                break;
                            }
                        case 96708:
                            if (substring.equals("amp")) {
                                z2 = true;
                                break;
                            } else {
                                z2 = true;
                                break;
                            }
                        case 3374865:
                            if (substring.equals("nbsp")) {
                                z2 = true;
                                break;
                            } else {
                                z2 = true;
                                break;
                            }
                        default:
                            z2 = true;
                            break;
                    }
                    switch (z2) {
                        case false:
                            spannableStringBuilder.append('>');
                            break;
                        case true:
                            spannableStringBuilder.append('<');
                            break;
                        case true:
                            spannableStringBuilder.append('&');
                            break;
                        case true:
                            spannableStringBuilder.append(' ');
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 33);
                            sb.append("ignoring unsupported entity: '&");
                            sb.append(substring);
                            sb.append(";'");
                            C2009j.m41584a("WebvttCueParser", sb.toString());
                            break;
                    }
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) StringUtils.SPACE);
                    }
                    i = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i++;
            } else {
                int i2 = i + 1;
                if (i2 >= str2.length()) {
                    i = i2;
                } else {
                    boolean z3 = str2.charAt(i2) == '/';
                    int indexOf3 = str2.indexOf(62, i2);
                    int length = indexOf3 == -1 ? str2.length() : indexOf3 + 1;
                    int i3 = length - 2;
                    boolean z4 = str2.charAt(i3) == '/';
                    int i4 = z3 ? 2 : 1;
                    if (!z4) {
                        i3 = length - 1;
                    }
                    String substring2 = str2.substring(i + i4, i3);
                    String trim = substring2.trim();
                    String str3 = trim.isEmpty() ? null : C1996ac.m41630b(trim, "[ \\.]")[0];
                    i = length;
                    if (str3 != null) {
                        str3.hashCode();
                        switch (str3.hashCode()) {
                            case 98:
                                if (str3.equals(C15291b.f55271a)) {
                                    z = false;
                                    break;
                                } else {
                                    z = true;
                                    break;
                                }
                            case 99:
                                if (str3.equals(Constants.URL_CAMPAIGN)) {
                                    z = true;
                                    break;
                                } else {
                                    z = true;
                                    break;
                                }
                            case 105:
                                if (str3.equals("i")) {
                                    z = true;
                                    break;
                                } else {
                                    z = true;
                                    break;
                                }
                            case 117:
                                if (str3.equals("u")) {
                                    z = true;
                                    break;
                                } else {
                                    z = true;
                                    break;
                                }
                            case 118:
                                if (str3.equals("v")) {
                                    z = true;
                                    break;
                                } else {
                                    z = true;
                                    break;
                                }
                            case 3314158:
                                if (str3.equals("lang")) {
                                    z = true;
                                    break;
                                } else {
                                    z = true;
                                    break;
                                }
                            default:
                                z = true;
                                break;
                        }
                        boolean z5 = true;
                        switch (z) {
                            case false:
                            case true:
                            case true:
                            case true:
                            case true:
                            case true:
                                break;
                            default:
                                z5 = false;
                                break;
                        }
                        i = length;
                        if (z5) {
                            if (z3) {
                                while (true) {
                                    i = length;
                                    if (!arrayDeque.isEmpty()) {
                                        C1914a c1914a = (C1914a) arrayDeque.pop();
                                        m41898a(str, c1914a, spannableStringBuilder, list, arrayList);
                                        if (c1914a.f7701a.equals(str3)) {
                                            i = length;
                                        }
                                    }
                                }
                            } else {
                                i = length;
                                if (!z4) {
                                    arrayDeque.push(C1914a.m41893a(substring2, spannableStringBuilder.length()));
                                    i = length;
                                }
                            }
                        }
                    }
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            m41898a(str, (C1914a) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        m41898a(str, C1914a.m41894a(), spannableStringBuilder, list, arrayList);
        c1912a.f7689c = spannableStringBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00db A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m41895a(java.util.List<androidx.media2.exoplayer.external.text.p078h.C1909d> r6, java.lang.String r7, androidx.media2.exoplayer.external.text.p078h.C1913f.C1914a r8, java.util.List<androidx.media2.exoplayer.external.text.p078h.C1913f.C1915b> r9) {
        /*
            r0 = r6
            int r0 = r0.size()
            r10 = r0
            r0 = 0
            r11 = r0
        Lb:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto Le1
            r0 = r6
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.media2.exoplayer.external.text.h.d r0 = (androidx.media2.exoplayer.external.text.p078h.C1909d) r0
            r12 = r0
            r0 = r8
            java.lang.String r0 = r0.f7701a
            r13 = r0
            r0 = r8
            java.lang.String[] r0 = r0.f7704d
            r14 = r0
            r0 = r8
            java.lang.String r0 = r0.f7703c
            r15 = r0
            r0 = r12
            java.lang.String r0 = r0.f7668a
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L6d
            r0 = r12
            java.lang.String r0 = r0.f7669b
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L6d
            r0 = r12
            java.util.List<java.lang.String> r0 = r0.f7670c
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L6d
            r0 = r12
            java.lang.String r0 = r0.f7671d
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L6d
            r0 = r13
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lc1
            r0 = 1
            r16 = r0
            goto Lc4
        L6d:
            r0 = 0
            r1 = r12
            java.lang.String r1 = r1.f7668a
            r2 = r7
            r3 = 1073741824(0x40000000, float:2.0)
            int r0 = androidx.media2.exoplayer.external.text.p078h.C1909d.m41905a(r0, r1, r2, r3)
            r1 = r12
            java.lang.String r1 = r1.f7669b
            r2 = r13
            r3 = 2
            int r0 = androidx.media2.exoplayer.external.text.p078h.C1909d.m41905a(r0, r1, r2, r3)
            r1 = r12
            java.lang.String r1 = r1.f7671d
            r2 = r15
            r3 = 4
            int r0 = androidx.media2.exoplayer.external.text.p078h.C1909d.m41905a(r0, r1, r2, r3)
            r16 = r0
            r0 = r16
            r1 = -1
            if (r0 == r1) goto Lc1
            r0 = r14
            java.util.List r0 = java.util.Arrays.asList(r0)
            r1 = r12
            java.util.List<java.lang.String> r1 = r1.f7670c
            boolean r0 = r0.containsAll(r1)
            if (r0 != 0) goto Lad
            goto Lc1
        Lad:
            r0 = r16
            r1 = r12
            java.util.List<java.lang.String> r1 = r1.f7670c
            int r1 = r1.size()
            r2 = 4
            int r1 = r1 * r2
            int r0 = r0 + r1
            r16 = r0
            goto Lc4
        Lc1:
            r0 = 0
            r16 = r0
        Lc4:
            r0 = r16
            if (r0 <= 0) goto Ldb
            r0 = r9
            androidx.media2.exoplayer.external.text.h.f$b r1 = new androidx.media2.exoplayer.external.text.h.f$b
            r2 = r1
            r3 = r16
            r4 = r12
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
        Ldb:
            int r11 = r11 + 1
            goto Lb
        Le1:
            r0 = r9
            java.util.Collections.sort(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p078h.C1913f.m41895a(java.util.List, java.lang.String, androidx.media2.exoplayer.external.text.h.f$a, java.util.List):void");
    }

    /* renamed from: a */
    private static boolean m41896a(String str, Matcher matcher, C2018p c2018p, C1910e.C1912a c1912a, StringBuilder sb, List<C1909d> list) {
        try {
            c1912a.f7687a = C1917h.m41888a(matcher.group(1));
            c1912a.f7688b = C1917h.m41888a(matcher.group(2));
            m41899a(matcher.group(3), c1912a);
            sb.setLength(0);
            while (true) {
                String m41515r = c2018p.m41515r();
                if (TextUtils.isEmpty(m41515r)) {
                    m41897a(str, sb.toString(), c1912a, list);
                    return true;
                }
                if (sb.length() > 0) {
                    sb.append(StringUtils.f67179LF);
                }
                sb.append(m41515r.trim());
            }
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(matcher.group());
            C2009j.m41584a("WebvttCueParser", valueOf.length() != 0 ? "Skipping cue with bad header: ".concat(valueOf) : new String("Skipping cue with bad header: "));
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m41901a(C2018p c2018p, C1910e.C1912a c1912a, List<C1909d> list) {
        String m41515r = c2018p.m41515r();
        if (m41515r == null) {
            return false;
        }
        Pattern pattern = f7697a;
        Matcher matcher = pattern.matcher(m41515r);
        if (matcher.matches()) {
            return m41896a(null, matcher, c2018p, c1912a, this.f7699c, list);
        }
        String m41515r2 = c2018p.m41515r();
        if (m41515r2 == null) {
            return false;
        }
        Matcher matcher2 = pattern.matcher(m41515r2);
        if (!matcher2.matches()) {
            return false;
        }
        return m41896a(m41515r.trim(), matcher2, c2018p, c1912a, this.f7699c, list);
    }
}
