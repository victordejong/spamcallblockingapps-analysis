package com.google.android.exoplayer2.text.i;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.appsflyer.share.Constants;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f21872a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f21873b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Integer> f21874c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, Integer> f21875d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Comparator<a> f21876a = _$$Lambda$f$a$O3hYg7ZAg2ZENjTHcCeqAsljARY.INSTANCE;

        /* renamed from: b  reason: collision with root package name */
        private final b f21877b;

        /* renamed from: c  reason: collision with root package name */
        private final int f21878c;

        private a(b bVar, int i) {
            this.f21877b = bVar;
            this.f21878c = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(a aVar, a aVar2) {
            return Integer.compare(aVar.f21877b.f21880b, aVar2.f21877b.f21880b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f21879a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21880b;

        /* renamed from: c  reason: collision with root package name */
        public final String f21881c;

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f21882d;

        b(String str, int i, String str2, Set<String> set) {
            this.f21880b = i;
            this.f21879a = str;
            this.f21881c = str2;
            this.f21882d = set;
        }

        public static b a(String str, int i) {
            String str2;
            String trim = str.trim();
            com.google.android.exoplayer2.util.a.a(!trim.isEmpty());
            int indexOf = trim.indexOf(StringUtils.SPACE);
            if (indexOf == -1) {
                str2 = "";
            } else {
                str2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
            }
            String[] a2 = af.a(trim, "\\.");
            String str3 = a2[0];
            HashSet hashSet = new HashSet();
            for (int i2 = 1; i2 < a2.length; i2++) {
                hashSet.add(a2[i2]);
            }
            return new b(str3, i, str2, hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$c.class */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        public final int f21883a;

        /* renamed from: b  reason: collision with root package name */
        public final com.google.android.exoplayer2.text.i.d f21884b;

        public c(int i, com.google.android.exoplayer2.text.i.d dVar) {
            this.f21883a = i;
            this.f21884b = dVar;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(c cVar) {
            return Integer.compare(this.f21883a, cVar.f21883a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$d.class */
    public static final class d {

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f21887c;

        /* renamed from: a  reason: collision with root package name */
        public long f21885a = 0;

        /* renamed from: b  reason: collision with root package name */
        public long f21886b = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f21888d = 2;
        public float e = -3.4028235E38f;
        public int f = 1;
        public int g = 0;
        public float h = -3.4028235E38f;
        public int i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        public float j = 1.0f;
        public int k = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        private static float a(float f, int i) {
            int i2 = (f > (-3.4028235E38f) ? 1 : (f == (-3.4028235E38f) ? 0 : -1));
            if (i2 == 0 || i != 0 || (f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f)) {
                return i2 != 0 ? f : i == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        private static float a(int i) {
            return i != 4 ? i != 5 ? 0.5f : 1.0f : BitmapDescriptorFactory.HUE_RED;
        }

        private static float a(int i, float f) {
            if (i == 0) {
                return 1.0f - f;
            }
            if (i == 1) {
                return f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
            }
            if (i == 2) {
                return f;
            }
            throw new IllegalStateException(String.valueOf(i));
        }

        private static int b(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        private static Layout.Alignment c(int i) {
            if (i != 1) {
                if (i == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            n.a("WebvttCueParser", "Unknown textAlignment: ".concat(String.valueOf(i)));
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        public final b.a a() {
            float f = this.h;
            if (f == -3.4028235E38f) {
                f = a(this.f21888d);
            }
            int i = this.i;
            if (i == Integer.MIN_VALUE) {
                i = b(this.f21888d);
            }
            b.a aVar = new b.a();
            aVar.f21740c = c(this.f21888d);
            b.a a2 = aVar.a(a(this.e, this.f), this.f);
            a2.f21741d = this.g;
            a2.e = f;
            a2.f = i;
            a2.g = Math.min(this.j, a(i, f));
            a2.k = this.k;
            CharSequence charSequence = this.f21887c;
            if (charSequence != null) {
                a2.f21738a = charSequence;
            }
            return a2;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f21874c = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f21875d = Collections.unmodifiableMap(hashMap2);
    }

    private static int a(List<com.google.android.exoplayer2.text.i.d> list, String str, b bVar) {
        List<c> b2 = b(list, str, bVar);
        for (int i = 0; i < b2.size(); i++) {
            com.google.android.exoplayer2.text.i.d dVar = b2.get(i).f21884b;
            if (dVar.p != -1) {
                return dVar.p;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpannedString a(String str, String str2, List<com.google.android.exoplayer2.text.i.d> list) {
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
                            n.a("WebvttCueParser", "ignoring unsupported entity: '&" + substring + ";'");
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
                    i = length;
                    if (!substring2.trim().isEmpty()) {
                        String trim = substring2.trim();
                        com.google.android.exoplayer2.util.a.a(!trim.isEmpty());
                        String str3 = af.b(trim, "[ \\.]")[0];
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
                            case 3650:
                                if (str3.equals("rt")) {
                                    c2 = 5;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            case 3314158:
                                if (str3.equals("lang")) {
                                    c2 = 6;
                                    break;
                                } else {
                                    c2 = 65535;
                                    break;
                                }
                            case 3511770:
                                if (str3.equals("ruby")) {
                                    c2 = 7;
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
                            case 6:
                            case 7:
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
                                        b bVar = (b) arrayDeque.pop();
                                        a(str, bVar, arrayList, spannableStringBuilder, list);
                                        if (!arrayDeque.isEmpty()) {
                                            arrayList.add(new a(bVar, spannableStringBuilder.length()));
                                        } else {
                                            arrayList.clear();
                                        }
                                        if (bVar.f21879a.equals(str3)) {
                                            i = length;
                                        }
                                    }
                                }
                            } else {
                                i = length;
                                if (!z3) {
                                    arrayDeque.push(b.a(substring2, spannableStringBuilder.length()));
                                    i = length;
                                }
                            }
                        }
                    }
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            a(str, (b) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        a(str, new b("", 0, "", Collections.emptySet()), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b.a a(String str) {
        d dVar = new d();
        a(str, dVar);
        return dVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.exoplayer2.text.b a(CharSequence charSequence) {
        d dVar = new d();
        dVar.f21887c = charSequence;
        return dVar.a().a();
    }

    public static e a(u uVar, List<com.google.android.exoplayer2.text.i.d> list) {
        String t = uVar.t();
        if (t == null) {
            return null;
        }
        Pattern pattern = f21872a;
        Matcher matcher = pattern.matcher(t);
        if (matcher.matches()) {
            return a((String) null, matcher, uVar, list);
        }
        String t2 = uVar.t();
        if (t2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(t2);
        if (matcher2.matches()) {
            return a(t.trim(), matcher2, uVar, list);
        }
        return null;
    }

    private static e a(String str, Matcher matcher, u uVar, List<com.google.android.exoplayer2.text.i.d> list) {
        d dVar = new d();
        try {
            dVar.f21885a = h.a((String) com.google.android.exoplayer2.util.a.b(matcher.group(1)));
            dVar.f21886b = h.a((String) com.google.android.exoplayer2.util.a.b(matcher.group(2)));
            a((String) com.google.android.exoplayer2.util.a.b(matcher.group(3)), dVar);
            StringBuilder sb = new StringBuilder();
            String t = uVar.t();
            while (!TextUtils.isEmpty(t)) {
                if (sb.length() > 0) {
                    sb.append(StringUtils.LF);
                }
                sb.append(t.trim());
                t = uVar.t();
            }
            dVar.f21887c = a(str, sb.toString(), list);
            return new e(dVar.a().a(), dVar.f21885a, dVar.f21886b);
        } catch (NumberFormatException e) {
            n.a("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, String str, b bVar, List<a> list, List<com.google.android.exoplayer2.text.i.d> list2) {
        int a2 = a(list2, str, bVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, a.f21876a);
        int i = bVar.f21880b;
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            i2 = i2;
            i = i;
            if ("rt".equals(((a) arrayList.get(i3)).f21877b.f21879a)) {
                a aVar = (a) arrayList.get(i3);
                int a3 = a(list2, str, aVar.f21877b);
                if (a3 == -1) {
                    a3 = a2 != -1 ? a2 : 1;
                }
                int i4 = aVar.f21877b.f21880b - i2;
                int i5 = aVar.f21878c - i2;
                CharSequence subSequence = spannableStringBuilder.subSequence(i4, i5);
                spannableStringBuilder.delete(i4, i5);
                spannableStringBuilder.setSpan(new com.google.android.exoplayer2.text.d.b(subSequence.toString(), a3), i, i4, 33);
                i2 += subSequence.length();
                i = i4;
            }
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        for (String str : set) {
            Map<String, Integer> map = f21874c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i, i2, 33);
            } else {
                Map<String, Integer> map2 = f21875d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i, i2, 33);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void a(String str, b bVar, List<a> list, SpannableStringBuilder spannableStringBuilder, List<com.google.android.exoplayer2.text.i.d> list2) {
        char c2;
        int i = bVar.f21880b;
        int length = spannableStringBuilder.length();
        String str2 = bVar.f21879a;
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
            case 3511770:
                if (str2.equals("ruby")) {
                    c2 = 7;
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
            case 5:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case 2:
                a(spannableStringBuilder, bVar.f21882d, i, length);
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case 7:
                a(spannableStringBuilder, str, bVar, list, list2);
                break;
            default:
                return;
        }
        List<c> b2 = b(list2, str, bVar);
        for (int i2 = 0; i2 < b2.size(); i2++) {
            com.google.android.exoplayer2.text.i.d dVar = b2.get(i2).f21884b;
            if (dVar != null) {
                if (dVar.a() != -1) {
                    com.google.android.exoplayer2.text.d.c.a(spannableStringBuilder, new StyleSpan(dVar.a()), i, length);
                }
                if (dVar.j == 1) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i, length, 33);
                }
                if (dVar.k == 1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                }
                if (dVar.g) {
                    if (dVar.g) {
                        com.google.android.exoplayer2.text.d.c.a(spannableStringBuilder, new ForegroundColorSpan(dVar.f), i, length);
                    } else {
                        throw new IllegalStateException("Font color not defined");
                    }
                }
                if (dVar.i) {
                    if (dVar.i) {
                        com.google.android.exoplayer2.text.d.c.a(spannableStringBuilder, new BackgroundColorSpan(dVar.h), i, length);
                    } else {
                        throw new IllegalStateException("Background color not defined.");
                    }
                }
                if (dVar.e != null) {
                    com.google.android.exoplayer2.text.d.c.a(spannableStringBuilder, new TypefaceSpan(dVar.e), i, length);
                }
                int i3 = dVar.n;
                if (i3 == 1) {
                    com.google.android.exoplayer2.text.d.c.a(spannableStringBuilder, new AbsoluteSizeSpan((int) dVar.o, true), i, length);
                } else if (i3 == 2) {
                    com.google.android.exoplayer2.text.d.c.a(spannableStringBuilder, new RelativeSizeSpan(dVar.o), i, length);
                } else if (i3 == 3) {
                    com.google.android.exoplayer2.text.d.c.a(spannableStringBuilder, new RelativeSizeSpan(dVar.o / 100.0f), i, length);
                }
                if (dVar.q) {
                    spannableStringBuilder.setSpan(new com.google.android.exoplayer2.text.d.a(), i, length, 33);
                }
            }
        }
    }

    private static void a(String str, d dVar) {
        Matcher matcher = f21873b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.b(matcher.group(1));
            String str3 = (String) com.google.android.exoplayer2.util.a.b(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    b(str3, dVar);
                } else if ("align".equals(str2)) {
                    dVar.f21888d = e(str3);
                } else if ("position".equals(str2)) {
                    c(str3, dVar);
                } else if ("size".equals(str2)) {
                    dVar.j = h.b(str3);
                } else if ("vertical".equals(str2)) {
                    dVar.k = d(str3);
                } else {
                    n.a("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException e) {
                n.a("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    private static int b(String str) {
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
                n.a("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(str)));
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    private static List<c> b(List<com.google.android.exoplayer2.text.i.d> list, String str, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.text.i.d dVar = list.get(i);
            int a2 = dVar.a(str, bVar.f21879a, bVar.f21882d, bVar.f21881c);
            if (a2 > 0) {
                arrayList.add(new c(a2, dVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void b(String str, d dVar) {
        int indexOf = str.indexOf(44);
        String str2 = str;
        if (indexOf != -1) {
            dVar.g = b(str.substring(indexOf + 1));
            str2 = str.substring(0, indexOf);
        }
        if (str2.endsWith("%")) {
            dVar.e = h.b(str2);
            dVar.f = 0;
            return;
        }
        dVar.e = Integer.parseInt(str2);
        dVar.f = 1;
    }

    private static int c(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals("line-left")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals("center")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1276788989:
                if (str.equals("line-right")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 3;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c2 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(EventConstants.START)) {
                    c2 = 5;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 5:
                return 0;
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                n.a("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(str)));
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    private static void c(String str, d dVar) {
        int indexOf = str.indexOf(44);
        String str2 = str;
        if (indexOf != -1) {
            dVar.i = c(str.substring(indexOf + 1));
            str2 = str.substring(0, indexOf);
        }
        dVar.h = h.b(str2);
    }

    private static int d(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        n.a("WebvttCueParser", "Invalid 'vertical' value: ".concat(String.valueOf(str)));
        return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    }

    private static int e(String str) {
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
            case 3317767:
                if (str.equals("left")) {
                    c2 = 3;
                    break;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    c2 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals(EventConstants.START)) {
                    c2 = 5;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 1;
            default:
                n.a("WebvttCueParser", "Invalid alignment value: ".concat(String.valueOf(str)));
                return 2;
        }
    }
}
