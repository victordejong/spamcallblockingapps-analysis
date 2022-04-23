package androidx.media2.exoplayer.external.text.h;

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
import androidx.media2.exoplayer.external.text.h.e;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.p;
import com.appsflyer.share.Constants;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f3925a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3926b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f3927c = new StringBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/f$a.class */
    public static final class a {
        private static final String[] e = new String[0];

        /* renamed from: a  reason: collision with root package name */
        public final String f3928a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3929b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3930c;

        /* renamed from: d  reason: collision with root package name */
        public final String[] f3931d;

        private a(String str, int i, String str2, String[] strArr) {
            this.f3929b = i;
            this.f3928a = str;
            this.f3930c = str2;
            this.f3931d = strArr;
        }

        public static a a() {
            return new a("", 0, "", new String[0]);
        }

        public static a a(String str, int i) {
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
            String[] a2 = ac.a(trim, "\\.");
            return new a(a2[0], i, str2, a2.length > 1 ? (String[]) Arrays.copyOfRange(a2, 1, a2.length) : e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/f$b.class */
    public static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final int f3932a;

        /* renamed from: b  reason: collision with root package name */
        public final d f3933b;

        public b(int i, d dVar) {
            this.f3932a = i;
            this.f3933b = dVar;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(b bVar) {
            return this.f3932a - bVar.f3932a;
        }
    }

    private static int a(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c2 = 2;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(EventConstants.START)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 0;
            default:
                String valueOf = String.valueOf(str);
                j.a("WebvttCueParser", valueOf.length() != 0 ? "Invalid anchor value: ".concat(valueOf) : new String("Invalid anchor value: "));
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, e.a aVar) {
        Layout.Alignment alignment;
        Matcher matcher = f3926b.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                char c2 = 0;
                if ("line".equals(group)) {
                    int indexOf = group2.indexOf(44);
                    if (indexOf != -1) {
                        aVar.g = a(group2.substring(indexOf + 1));
                        group2 = group2.substring(0, indexOf);
                    } else {
                        aVar.g = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                    }
                    if (group2.endsWith("%")) {
                        aVar.e = h.b(group2);
                        aVar.f = 0;
                    } else {
                        int parseInt = Integer.parseInt(group2);
                        int i = parseInt;
                        if (parseInt < 0) {
                            i = parseInt - 1;
                        }
                        aVar.e = i;
                        aVar.f = 1;
                    }
                } else if ("align".equals(group)) {
                    switch (group2.hashCode()) {
                        case -1364013995:
                            if (group2.equals("center")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -1074341483:
                            if (group2.equals("middle")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 100571:
                            if (group2.equals("end")) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 3317767:
                            if (group2.equals("left")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 108511772:
                            if (group2.equals("right")) {
                                c2 = 5;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 109757538:
                            if (group2.equals(EventConstants.START)) {
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    if (c2 == 0 || c2 == 1) {
                        alignment = Layout.Alignment.ALIGN_NORMAL;
                    } else if (c2 == 2 || c2 == 3) {
                        alignment = Layout.Alignment.ALIGN_CENTER;
                    } else if (c2 == 4 || c2 == 5) {
                        alignment = Layout.Alignment.ALIGN_OPPOSITE;
                    } else {
                        String valueOf = String.valueOf(group2);
                        j.a("WebvttCueParser", valueOf.length() != 0 ? "Invalid alignment value: ".concat(valueOf) : new String("Invalid alignment value: "));
                        alignment = null;
                    }
                    aVar.f3924d = alignment;
                } else if ("position".equals(group)) {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        aVar.i = a(group2.substring(indexOf2 + 1));
                        group2 = group2.substring(0, indexOf2);
                    } else {
                        aVar.i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                    }
                    aVar.h = h.b(group2);
                } else if ("size".equals(group)) {
                    aVar.j = h.b(group2);
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(group).length() + 21 + String.valueOf(group2).length());
                    sb.append("Unknown cue setting ");
                    sb.append(group);
                    sb.append(":");
                    sb.append(group2);
                    j.a("WebvttCueParser", sb.toString());
                }
            } catch (NumberFormatException e) {
                String valueOf2 = String.valueOf(matcher.group());
                j.a("WebvttCueParser", valueOf2.length() != 0 ? "Skipping bad cue setting: ".concat(valueOf2) : new String("Skipping bad cue setting: "));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void a(String str, a aVar, SpannableStringBuilder spannableStringBuilder, List<d> list, List<b> list2) {
        char c2;
        int i = aVar.f3929b;
        int length = spannableStringBuilder.length();
        String str2 = aVar.f3928a;
        str2.hashCode();
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 98:
                if (str2.equals(com.google.api.client.googleapis.notifications.b.f31754a)) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 99:
                if (str2.equals(Constants.URL_CAMPAIGN)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 105:
                if (str2.equals("i")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 117:
                if (str2.equals("u")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 118:
                if (str2.equals("v")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 3314158:
                if (str2.equals("lang")) {
                    c2 = 6;
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
            case 2:
            case 5:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            default:
                return;
        }
        list2.clear();
        a(list, str, aVar, list2);
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = list2.get(i2).f3933b;
            if (dVar != null) {
                if (dVar.a() != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(dVar.a()), i, length, 33);
                }
                if (dVar.j == 1) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i, length, 33);
                }
                if (dVar.k == 1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                }
                if (dVar.g) {
                    if (dVar.g) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(dVar.f), i, length, 33);
                    } else {
                        throw new IllegalStateException("Font color not defined");
                    }
                }
                if (dVar.i) {
                    if (dVar.i) {
                        spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.h), i, length, 33);
                    } else {
                        throw new IllegalStateException("Background color not defined.");
                    }
                }
                if (dVar.e != null) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(dVar.e), i, length, 33);
                }
                if (dVar.p != null) {
                    spannableStringBuilder.setSpan(new AlignmentSpan.Standard(dVar.p), i, length, 33);
                }
                int i3 = dVar.n;
                if (i3 == 1) {
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) dVar.o, true), i, length, 33);
                } else if (i3 == 2) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.o), i, length, 33);
                } else if (i3 == 3) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.o / 100.0f), i, length, 33);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, e.a aVar, List<d> list) {
        char c2;
        char c3;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            boolean z = true;
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
                                c3 = 0;
                                break;
                            } else {
                                c3 = 65535;
                                break;
                            }
                        case 3464:
                            if (substring.equals("lt")) {
                                c3 = 1;
                                break;
                            } else {
                                c3 = 65535;
                                break;
                            }
                        case 96708:
                            if (substring.equals("amp")) {
                                c3 = 2;
                                break;
                            } else {
                                c3 = 65535;
                                break;
                            }
                        case 3374865:
                            if (substring.equals("nbsp")) {
                                c3 = 3;
                                break;
                            } else {
                                c3 = 65535;
                                break;
                            }
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            spannableStringBuilder.append('>');
                            break;
                        case 1:
                            spannableStringBuilder.append('<');
                            break;
                        case 2:
                            spannableStringBuilder.append('&');
                            break;
                        case 3:
                            spannableStringBuilder.append(' ');
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 33);
                            sb.append("ignoring unsupported entity: '&");
                            sb.append(substring);
                            sb.append(";'");
                            j.a("WebvttCueParser", sb.toString());
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
                    boolean z2 = str2.charAt(i2) == '/';
                    int indexOf3 = str2.indexOf(62, i2);
                    int length = indexOf3 == -1 ? str2.length() : indexOf3 + 1;
                    int i3 = length - 2;
                    boolean z3 = str2.charAt(i3) == '/';
                    int i4 = z2 ? 2 : 1;
                    if (!z3) {
                        i3 = length - 1;
                    }
                    String substring2 = str2.substring(i + i4, i3);
                    String trim = substring2.trim();
                    String str3 = trim.isEmpty() ? null : ac.b(trim, "[ \\.]")[0];
                    i = length;
                    if (str3 != null) {
                        str3.hashCode();
                        switch (str3.hashCode()) {
                            case 98:
                                if (str3.equals(com.google.api.client.googleapis.notifications.b.f31754a)) {
                                    c2 = 0;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            case 99:
                                if (str3.equals(Constants.URL_CAMPAIGN)) {
                                    c2 = 1;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            case 105:
                                if (str3.equals("i")) {
                                    c2 = 2;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            case 117:
                                if (str3.equals("u")) {
                                    c2 = 3;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            case 118:
                                if (str3.equals("v")) {
                                    c2 = 4;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            case 3314158:
                                if (str3.equals("lang")) {
                                    c2 = 5;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                                break;
                            default:
                                z = false;
                                break;
                        }
                        i = length;
                        if (z) {
                            if (z2) {
                                while (true) {
                                    i = length;
                                    if (!arrayDeque.isEmpty()) {
                                        a aVar2 = (a) arrayDeque.pop();
                                        a(str, aVar2, spannableStringBuilder, list, arrayList);
                                        if (aVar2.f3928a.equals(str3)) {
                                            i = length;
                                        }
                                    }
                                }
                            } else {
                                i = length;
                                if (!z3) {
                                    arrayDeque.push(a.a(substring2, spannableStringBuilder.length()));
                                    i = length;
                                }
                            }
                        }
                    }
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            a(str, (a) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        a(str, a.a(), spannableStringBuilder, list, arrayList);
        aVar.f3923c = spannableStringBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00db A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.util.List<androidx.media2.exoplayer.external.text.h.d> r6, java.lang.String r7, androidx.media2.exoplayer.external.text.h.f.a r8, java.util.List<androidx.media2.exoplayer.external.text.h.f.b> r9) {
        /*
            r0 = r6
            int r0 = r0.size()
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x000b:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x00e1
            r0 = r6
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.media2.exoplayer.external.text.h.d r0 = (androidx.media2.exoplayer.external.text.h.d) r0
            r12 = r0
            r0 = r8
            java.lang.String r0 = r0.f3928a
            r13 = r0
            r0 = r8
            java.lang.String[] r0 = r0.f3931d
            r14 = r0
            r0 = r8
            java.lang.String r0 = r0.f3930c
            r15 = r0
            r0 = r12
            java.lang.String r0 = r0.f3916a
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x006d
            r0 = r12
            java.lang.String r0 = r0.f3917b
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x006d
            r0 = r12
            java.util.List<java.lang.String> r0 = r0.f3918c
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x006d
            r0 = r12
            java.lang.String r0 = r0.f3919d
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x006d
            r0 = r13
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x00c1
            r0 = 1
            r16 = r0
            goto L_0x00c4
        L_0x006d:
            r0 = 0
            r1 = r12
            java.lang.String r1 = r1.f3916a
            r2 = r7
            r3 = 1073741824(0x40000000, float:2.0)
            int r0 = androidx.media2.exoplayer.external.text.h.d.a(r0, r1, r2, r3)
            r1 = r12
            java.lang.String r1 = r1.f3917b
            r2 = r13
            r3 = 2
            int r0 = androidx.media2.exoplayer.external.text.h.d.a(r0, r1, r2, r3)
            r1 = r12
            java.lang.String r1 = r1.f3919d
            r2 = r15
            r3 = 4
            int r0 = androidx.media2.exoplayer.external.text.h.d.a(r0, r1, r2, r3)
            r16 = r0
            r0 = r16
            r1 = -1
            if (r0 == r1) goto L_0x00c1
            r0 = r14
            java.util.List r0 = java.util.Arrays.asList(r0)
            r1 = r12
            java.util.List<java.lang.String> r1 = r1.f3918c
            boolean r0 = r0.containsAll(r1)
            if (r0 != 0) goto L_0x00ad
            goto L_0x00c1
        L_0x00ad:
            r0 = r16
            r1 = r12
            java.util.List<java.lang.String> r1 = r1.f3918c
            int r1 = r1.size()
            r2 = 4
            int r1 = r1 * r2
            int r0 = r0 + r1
            r16 = r0
            goto L_0x00c4
        L_0x00c1:
            r0 = 0
            r16 = r0
        L_0x00c4:
            r0 = r16
            if (r0 <= 0) goto L_0x00db
            r0 = r9
            androidx.media2.exoplayer.external.text.h.f$b r1 = new androidx.media2.exoplayer.external.text.h.f$b
            r2 = r1
            r3 = r16
            r4 = r12
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
        L_0x00db:
            int r11 = r11 + 1
            goto L_0x000b
        L_0x00e1:
            r0 = r9
            java.util.Collections.sort(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.h.f.a(java.util.List, java.lang.String, androidx.media2.exoplayer.external.text.h.f$a, java.util.List):void");
    }

    private static boolean a(String str, Matcher matcher, p pVar, e.a aVar, StringBuilder sb, List<d> list) {
        try {
            aVar.f3921a = h.a(matcher.group(1));
            aVar.f3922b = h.a(matcher.group(2));
            a(matcher.group(3), aVar);
            sb.setLength(0);
            while (true) {
                String r = pVar.r();
                if (!TextUtils.isEmpty(r)) {
                    if (sb.length() > 0) {
                        sb.append(StringUtils.LF);
                    }
                    sb.append(r.trim());
                } else {
                    a(str, sb.toString(), aVar, list);
                    return true;
                }
            }
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(matcher.group());
            j.a("WebvttCueParser", valueOf.length() != 0 ? "Skipping cue with bad header: ".concat(valueOf) : new String("Skipping cue with bad header: "));
            return false;
        }
    }

    public final boolean a(p pVar, e.a aVar, List<d> list) {
        String r = pVar.r();
        if (r == null) {
            return false;
        }
        Pattern pattern = f3925a;
        Matcher matcher = pattern.matcher(r);
        if (matcher.matches()) {
            return a(null, matcher, pVar, aVar, this.f3927c, list);
        }
        String r2 = pVar.r();
        if (r2 == null) {
            return false;
        }
        Matcher matcher2 = pattern.matcher(r2);
        if (matcher2.matches()) {
            return a(r.trim(), matcher2, pVar, aVar, this.f3927c, list);
        }
        return false;
    }
}
