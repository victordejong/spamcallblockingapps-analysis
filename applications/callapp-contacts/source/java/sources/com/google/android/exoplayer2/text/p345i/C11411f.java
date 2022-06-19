package com.google.android.exoplayer2.text.p345i;

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
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.p340d.C11375a;
import com.google.android.exoplayer2.text.p340d.C11376b;
import com.google.android.exoplayer2.text.p340d.C11377c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.api.client.googleapis.notifications.C15291b;
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
/* renamed from: com.google.android.exoplayer2.text.i.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f.class */
public final class C11411f {

    /* renamed from: a */
    public static final Pattern f37670a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b */
    private static final Pattern f37671b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c */
    private static final Map<String, Integer> f37672c;

    /* renamed from: d */
    private static final Map<String, Integer> f37673d;

    /* renamed from: com.google.android.exoplayer2.text.i.f$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$a.class */
    public static final class C11413a {

        /* renamed from: a */
        private static final Comparator<C11413a> f37674a = _$$Lambda$f$a$O3hYg7ZAg2ZENjTHcCeqAsljARY.INSTANCE;

        /* renamed from: b */
        private final C11414b f37675b;

        /* renamed from: c */
        private final int f37676c;

        private C11413a(C11414b c11414b, int i) {
            this.f37675b = c11414b;
            this.f37676c = i;
        }

        /* renamed from: a */
        public static /* synthetic */ int m20632a(C11413a c11413a, C11413a c11413a2) {
            return Integer.compare(c11413a.f37675b.f37678b, c11413a2.f37675b.f37678b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.i.f$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$b.class */
    public static final class C11414b {

        /* renamed from: a */
        public final String f37677a;

        /* renamed from: b */
        public final int f37678b;

        /* renamed from: c */
        public final String f37679c;

        /* renamed from: d */
        public final Set<String> f37680d;

        C11414b(String str, int i, String str2, Set<String> set) {
            this.f37678b = i;
            this.f37677a = str;
            this.f37679c = str2;
            this.f37680d = set;
        }

        /* renamed from: a */
        public static C11414b m20630a(String str, int i) {
            String str2;
            String trim = str.trim();
            C11593a.m20022a(!trim.isEmpty());
            int indexOf = trim.indexOf(StringUtils.SPACE);
            if (indexOf == -1) {
                str2 = "";
            } else {
                str2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
            }
            String[] m19969a = C11599af.m19969a(trim, "\\.");
            String str3 = m19969a[0];
            HashSet hashSet = new HashSet();
            for (int i2 = 1; i2 < m19969a.length; i2++) {
                hashSet.add(m19969a[i2]);
            }
            return new C11414b(str3, i, str2, hashSet);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.i.f$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$c.class */
    public static final class C11415c implements Comparable<C11415c> {

        /* renamed from: a */
        public final int f37681a;

        /* renamed from: b */
        public final C11409d f37682b;

        public C11415c(int i, C11409d c11409d) {
            this.f37681a = i;
            this.f37682b = c11409d;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(C11415c c11415c) {
            return Integer.compare(this.f37681a, c11415c.f37681a);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.i.f$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/f$d.class */
    public static final class C11416d {

        /* renamed from: c */
        public CharSequence f37685c;

        /* renamed from: a */
        public long f37683a = 0;

        /* renamed from: b */
        public long f37684b = 0;

        /* renamed from: d */
        public int f37686d = 2;

        /* renamed from: e */
        public float f37687e = -3.4028235E38f;

        /* renamed from: f */
        public int f37688f = 1;

        /* renamed from: g */
        public int f37689g = 0;

        /* renamed from: h */
        public float f37690h = -3.4028235E38f;

        /* renamed from: i */
        public int f37691i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        /* renamed from: j */
        public float f37692j = 1.0f;

        /* renamed from: k */
        public int f37693k = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        /* renamed from: a */
        private static float m20628a(float f, int i) {
            int i2 = (f > (-3.4028235E38f) ? 1 : (f == (-3.4028235E38f) ? 0 : -1));
            if (i2 == 0 || i != 0 || (f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f)) {
                return i2 != 0 ? f : i == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        /* renamed from: a */
        private static float m20627a(int i) {
            return i != 4 ? i != 5 ? 0.5f : 1.0f : BitmapDescriptorFactory.HUE_RED;
        }

        /* renamed from: a */
        private static float m20626a(int i, float f) {
            if (i != 0) {
                if (i == 1) {
                    return f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
                } else if (i != 2) {
                    throw new IllegalStateException(String.valueOf(i));
                } else {
                    return f;
                }
            }
            return 1.0f - f;
        }

        /* renamed from: b */
        private static int m20625b(int i) {
            if (i != 1) {
                if (i == 3) {
                    return 2;
                }
                if (i == 4) {
                    return 0;
                }
                return i != 5 ? 1 : 2;
            }
            return 0;
        }

        /* renamed from: c */
        private static Layout.Alignment m20624c(int i) {
            if (i != 1) {
                if (i == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            C11617n.m19863a("WebvttCueParser", "Unknown textAlignment: ".concat(String.valueOf(i)));
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        /* renamed from: a */
        public final C11356b.C11358a m20629a() {
            float f = this.f37690h;
            if (f == -3.4028235E38f) {
                f = m20627a(this.f37686d);
            }
            int i = this.f37691i;
            if (i == Integer.MIN_VALUE) {
                i = m20625b(this.f37686d);
            }
            C11356b.C11358a c11358a = new C11356b.C11358a();
            c11358a.f37430c = m20624c(this.f37686d);
            C11356b.C11358a m20743a = c11358a.m20743a(m20628a(this.f37687e, this.f37688f), this.f37688f);
            m20743a.f37431d = this.f37689g;
            m20743a.f37432e = f;
            m20743a.f37433f = i;
            m20743a.f37434g = Math.min(this.f37692j, m20626a(i, f));
            m20743a.f37438k = this.f37693k;
            CharSequence charSequence = this.f37685c;
            if (charSequence != null) {
                m20743a.f37428a = charSequence;
            }
            return m20743a;
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
        f37672c = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f37673d = Collections.unmodifiableMap(hashMap2);
    }

    /* renamed from: a */
    private static int m20642a(List<C11409d> list, String str, C11414b c11414b) {
        List<C11415c> m20639b = m20639b(list, str, c11414b);
        for (int i = 0; i < m20639b.size(); i++) {
            C11409d c11409d = m20639b.get(i).f37682b;
            if (c11409d.f37665p != -1) {
                return c11409d.f37665p;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static SpannedString m20644a(String str, String str2, List<C11409d> list) {
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
                            C11617n.m19863a("WebvttCueParser", "ignoring unsupported entity: '&" + substring + ";'");
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
                    i = length;
                    if (!substring2.trim().isEmpty()) {
                        String trim = substring2.trim();
                        C11593a.m20022a(!trim.isEmpty());
                        String str3 = C11599af.m19943b(trim, "[ \\.]")[0];
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
                            case 3650:
                                if (str3.equals("rt")) {
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
                            case 3511770:
                                if (str3.equals("ruby")) {
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
                                        C11414b c11414b = (C11414b) arrayDeque.pop();
                                        m20646a(str, c11414b, arrayList, spannableStringBuilder, list);
                                        if (!arrayDeque.isEmpty()) {
                                            arrayList.add(new C11413a(c11414b, spannableStringBuilder.length()));
                                        } else {
                                            arrayList.clear();
                                        }
                                        if (c11414b.f37677a.equals(str3)) {
                                            i = length;
                                        }
                                    }
                                }
                            } else {
                                i = length;
                                if (!z4) {
                                    arrayDeque.push(C11414b.m20630a(substring2, spannableStringBuilder.length()));
                                    i = length;
                                }
                            }
                        }
                    }
                }
            }
        }
        while (!arrayDeque.isEmpty()) {
            m20646a(str, (C11414b) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        m20646a(str, new C11414b("", 0, "", Collections.emptySet()), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    /* renamed from: a */
    public static C11356b.C11358a m20647a(String str) {
        C11416d c11416d = new C11416d();
        m20645a(str, c11416d);
        return c11416d.m20629a();
    }

    /* renamed from: a */
    public static C11356b m20648a(CharSequence charSequence) {
        C11416d c11416d = new C11416d();
        c11416d.f37685c = charSequence;
        return c11416d.m20629a().m20744a();
    }

    /* renamed from: a */
    public static C11410e m20649a(C11628u c11628u, List<C11409d> list) {
        String m19782t = c11628u.m19782t();
        if (m19782t == null) {
            return null;
        }
        Pattern pattern = f37670a;
        Matcher matcher = pattern.matcher(m19782t);
        if (matcher.matches()) {
            return m20643a((String) null, matcher, c11628u, list);
        }
        String m19782t2 = c11628u.m19782t();
        if (m19782t2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(m19782t2);
        if (!matcher2.matches()) {
            return null;
        }
        return m20643a(m19782t.trim(), matcher2, c11628u, list);
    }

    /* renamed from: a */
    private static C11410e m20643a(String str, Matcher matcher, C11628u c11628u, List<C11409d> list) {
        C11416d c11416d = new C11416d();
        try {
            c11416d.f37683a = C11418h.m20619a((String) C11593a.m20020b(matcher.group(1)));
            c11416d.f37684b = C11418h.m20619a((String) C11593a.m20020b(matcher.group(2)));
            m20645a((String) C11593a.m20020b(matcher.group(3)), c11416d);
            StringBuilder sb = new StringBuilder();
            String m19782t = c11628u.m19782t();
            while (true) {
                String str2 = m19782t;
                if (TextUtils.isEmpty(str2)) {
                    c11416d.f37685c = m20644a(str, sb.toString(), list);
                    return new C11410e(c11416d.m20629a().m20744a(), c11416d.f37683a, c11416d.f37684b);
                }
                if (sb.length() > 0) {
                    sb.append(StringUtils.f67179LF);
                }
                sb.append(str2.trim());
                m19782t = c11628u.m19782t();
            }
        } catch (NumberFormatException e) {
            C11617n.m19863a("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* renamed from: a */
    private static void m20651a(SpannableStringBuilder spannableStringBuilder, String str, C11414b c11414b, List<C11413a> list, List<C11409d> list2) {
        int m20642a = m20642a(list2, str, c11414b);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, C11413a.f37674a);
        int i = c11414b.f37678b;
        int i2 = 0;
        int i3 = 0;
        while (i2 < arrayList.size()) {
            int i4 = i3;
            int i5 = i;
            if ("rt".equals(((C11413a) arrayList.get(i2)).f37675b.f37677a)) {
                C11413a c11413a = (C11413a) arrayList.get(i2);
                int m20642a2 = m20642a(list2, str, c11413a.f37675b);
                if (m20642a2 == -1) {
                    m20642a2 = m20642a != -1 ? m20642a : 1;
                }
                int i6 = c11413a.f37675b.f37678b - i3;
                int i7 = c11413a.f37676c - i3;
                CharSequence subSequence = spannableStringBuilder.subSequence(i6, i7);
                spannableStringBuilder.delete(i6, i7);
                spannableStringBuilder.setSpan(new C11376b(subSequence.toString(), m20642a2), i, i6, 33);
                i5 = i6;
                i4 = i3 + subSequence.length();
            }
            i2++;
            i3 = i4;
            i = i5;
        }
    }

    /* renamed from: a */
    private static void m20650a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i, int i2) {
        for (String str : set) {
            Map<String, Integer> map = f37672c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i, i2, 33);
            } else {
                Map<String, Integer> map2 = f37673d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i, i2, 33);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static void m20646a(String str, C11414b c11414b, List<C11413a> list, SpannableStringBuilder spannableStringBuilder, List<C11409d> list2) {
        boolean z;
        int i = c11414b.f37678b;
        int length = spannableStringBuilder.length();
        String str2 = c11414b.f37677a;
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
            case 3511770:
                if (str2.equals("ruby")) {
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
                break;
            case true:
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case true:
                m20650a(spannableStringBuilder, c11414b.f37680d, i, length);
                break;
            case true:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case true:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case true:
                m20651a(spannableStringBuilder, str, c11414b, list, list2);
                break;
            default:
                return;
        }
        List<C11415c> m20639b = m20639b(list2, str, c11414b);
        for (int i2 = 0; i2 < m20639b.size(); i2++) {
            C11409d c11409d = m20639b.get(i2).f37682b;
            if (c11409d != null) {
                if (c11409d.m20654a() != -1) {
                    C11377c.m20722a(spannableStringBuilder, new StyleSpan(c11409d.m20654a()), i, length);
                }
                if (c11409d.f37659j == 1) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i, length, 33);
                }
                if (c11409d.f37660k == 1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                }
                if (c11409d.f37656g) {
                    if (!c11409d.f37656g) {
                        throw new IllegalStateException("Font color not defined");
                    }
                    C11377c.m20722a(spannableStringBuilder, new ForegroundColorSpan(c11409d.f37655f), i, length);
                }
                if (c11409d.f37658i) {
                    if (!c11409d.f37658i) {
                        throw new IllegalStateException("Background color not defined.");
                    }
                    C11377c.m20722a(spannableStringBuilder, new BackgroundColorSpan(c11409d.f37657h), i, length);
                }
                if (c11409d.f37654e != null) {
                    C11377c.m20722a(spannableStringBuilder, new TypefaceSpan(c11409d.f37654e), i, length);
                }
                int i3 = c11409d.f37663n;
                if (i3 == 1) {
                    C11377c.m20722a(spannableStringBuilder, new AbsoluteSizeSpan((int) c11409d.f37664o, true), i, length);
                } else if (i3 == 2) {
                    C11377c.m20722a(spannableStringBuilder, new RelativeSizeSpan(c11409d.f37664o), i, length);
                } else if (i3 == 3) {
                    C11377c.m20722a(spannableStringBuilder, new RelativeSizeSpan(c11409d.f37664o / 100.0f), i, length);
                }
                if (c11409d.f37666q) {
                    spannableStringBuilder.setSpan(new C11375a(), i, length, 33);
                }
            }
        }
    }

    /* renamed from: a */
    private static void m20645a(String str, C11416d c11416d) {
        Matcher matcher = f37671b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) C11593a.m20020b(matcher.group(1));
            String str3 = (String) C11593a.m20020b(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    m20640b(str3, c11416d);
                } else if ("align".equals(str2)) {
                    c11416d.f37686d = m20635e(str3);
                } else if ("position".equals(str2)) {
                    m20637c(str3, c11416d);
                } else if ("size".equals(str2)) {
                    c11416d.f37692j = C11418h.m20618b(str3);
                } else if ("vertical".equals(str2)) {
                    c11416d.f37693k = m20636d(str3);
                } else {
                    C11617n.m19863a("WebvttCueParser", "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException e) {
                C11617n.m19863a("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* renamed from: b */
    private static int m20641b(String str) {
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
                C11617n.m19863a("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(str)));
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    /* renamed from: b */
    private static List<C11415c> m20639b(List<C11409d> list, String str, C11414b c11414b) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            C11409d c11409d = list.get(i);
            int m20652a = c11409d.m20652a(str, c11414b.f37677a, c11414b.f37680d, c11414b.f37679c);
            if (m20652a > 0) {
                arrayList.add(new C11415c(m20652a, c11409d));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* renamed from: b */
    private static void m20640b(String str, C11416d c11416d) {
        int indexOf = str.indexOf(44);
        String str2 = str;
        if (indexOf != -1) {
            c11416d.f37689g = m20641b(str.substring(indexOf + 1));
            str2 = str.substring(0, indexOf);
        }
        if (str2.endsWith("%")) {
            c11416d.f37687e = C11418h.m20618b(str2);
            c11416d.f37688f = 0;
            return;
        }
        c11416d.f37687e = Integer.parseInt(str2);
        c11416d.f37688f = 1;
    }

    /* renamed from: c */
    private static int m20638c(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals("line-left")) {
                    z = false;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals("center")) {
                    z = true;
                    break;
                }
                break;
            case -1276788989:
                if (str.equals("line-right")) {
                    z = true;
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
                return 0;
            case true:
            case true:
                return 1;
            case true:
            case true:
                return 2;
            default:
                C11617n.m19863a("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(str)));
                return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    /* renamed from: c */
    private static void m20637c(String str, C11416d c11416d) {
        int indexOf = str.indexOf(44);
        String str2 = str;
        if (indexOf != -1) {
            c11416d.f37691i = m20638c(str.substring(indexOf + 1));
            str2 = str.substring(0, indexOf);
        }
        c11416d.f37690h = C11418h.m20618b(str2);
    }

    /* renamed from: d */
    private static int m20636d(String str) {
        str.hashCode();
        if (!str.equals("lr")) {
            if (str.equals("rl")) {
                return 1;
            }
            C11617n.m19863a("WebvttCueParser", "Invalid 'vertical' value: ".concat(String.valueOf(str)));
            return BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
        return 2;
    }

    /* renamed from: e */
    private static int m20635e(String str) {
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
                if (str.equals(EventConstants.START)) {
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
                C11617n.m19863a("WebvttCueParser", "Invalid alignment value: ".concat(String.valueOf(str)));
                return 2;
        }
    }
}
