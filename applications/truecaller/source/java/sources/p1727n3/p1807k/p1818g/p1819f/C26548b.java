package p1727n3.p1807k.p1818g.p1819f;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.widget.TextView;
import com.amazon.device.ads.DtbConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p1727n3.p1807k.p1820h.C26554d;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.g.f.b */
/* loaded from: classes-dex2jar.jar:n3/k/g/f/b.class */
public final class C26548b {

    /* renamed from: a */
    public static final String[] f74386a = new String[0];

    /* renamed from: b */
    public static final Comparator<C26550b> f74387b = new C26549a();

    /* renamed from: n3.k.g.f.b$a */
    /* loaded from: classes-dex2jar.jar:n3/k/g/f/b$a.class */
    public class C26549a implements Comparator<C26550b> {
        @Override // java.util.Comparator
        public int compare(C26550b c26550b, C26550b c26550b2) {
            int i;
            int i2;
            C26550b c26550b3 = c26550b;
            C26550b c26550b4 = c26550b2;
            int i3 = c26550b3.f74390c;
            int i4 = c26550b4.f74390c;
            int i5 = -1;
            if (i3 >= i4) {
                if (i3 > i4 || (i = c26550b3.f74391d) < (i2 = c26550b4.f74391d)) {
                    i5 = 1;
                } else if (i <= i2) {
                    i5 = 0;
                }
            }
            return i5;
        }
    }

    /* renamed from: n3.k.g.f.b$b */
    /* loaded from: classes-dex2jar.jar:n3/k/g/f/b$b.class */
    public static class C26550b {

        /* renamed from: a */
        public URLSpan f74388a;

        /* renamed from: b */
        public String f74389b;

        /* renamed from: c */
        public int f74390c;

        /* renamed from: d */
        public int f74391d;
    }

    /* renamed from: a */
    public static void m1700a(TextView textView) {
        if ((textView.getMovementMethod() instanceof LinkMovementMethod) || !textView.getLinksClickable()) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* renamed from: b */
    public static void m1699b(TextView textView, Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        boolean z;
        if (m1694g()) {
            Linkify.addLinks(textView, pattern, (String) null, (Linkify.MatchFilter) null, transformFilter);
        } else if (m1694g()) {
            Linkify.addLinks(textView, pattern, (String) null, (String[]) null, (Linkify.MatchFilter) null, transformFilter);
        } else {
            SpannableString valueOf = SpannableString.valueOf(textView.getText());
            if (!m1694g()) {
                String[] strArr = f74386a;
                String[] strArr2 = new String[strArr.length + 1];
                strArr2[0] = "".toLowerCase(Locale.ROOT);
                int i = 0;
                while (i < strArr.length) {
                    String str2 = strArr[i];
                    i++;
                    strArr2[i] = str2 == null ? "" : str2.toLowerCase(Locale.ROOT);
                }
                Matcher matcher = pattern.matcher(valueOf);
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!matcher.find()) {
                        break;
                    }
                    valueOf.setSpan(new URLSpan(m1695f(matcher.group(0), strArr2, matcher, transformFilter)), matcher.start(), matcher.end(), 33);
                    z2 = true;
                }
            } else {
                z = Linkify.addLinks(valueOf, pattern, (String) null, (String[]) null, (Linkify.MatchFilter) null, transformFilter);
            }
            if (!z) {
                return;
            }
            textView.setText(valueOf);
            m1700a(textView);
        }
    }

    /* renamed from: c */
    public static boolean m1698c(Spannable spannable, int i) {
        int i2;
        int i3;
        int i4;
        int indexOf;
        if (m1694g()) {
            return Linkify.addLinks(spannable, i);
        }
        if (i == 0) {
            return false;
        }
        Object[] objArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = objArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(objArr[length]);
        }
        if ((i & 4) != 0) {
            Linkify.addLinks(spannable, 4);
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            m1696e(arrayList, spannable, C26554d.f74403g, new String[]{DtbConstants.HTTP, DtbConstants.HTTPS, "rtsp://"}, Linkify.sUrlMatchFilter, null);
        }
        if ((i & 2) != 0) {
            m1696e(arrayList, spannable, C26554d.f74404h, new String[]{"mailto:"}, null, null);
        }
        if ((i & 8) != 0) {
            String obj = spannable.toString();
            int i5 = 0;
            while (true) {
                try {
                    String m1697d = m1697d(obj);
                    if (m1697d == null || (indexOf = obj.indexOf(m1697d)) < 0) {
                        break;
                    }
                    C26550b c26550b = new C26550b();
                    int length2 = m1697d.length() + indexOf;
                    c26550b.f74390c = indexOf + i5;
                    i5 += length2;
                    c26550b.f74391d = i5;
                    obj = obj.substring(length2);
                    try {
                        c26550b.f74389b = "geo:0,0?q=" + URLEncoder.encode(m1697d, StringConstant.UTF8);
                        arrayList.add(c26550b);
                    } catch (UnsupportedEncodingException e) {
                    }
                } catch (UnsupportedOperationException e2) {
                }
            }
        }
        Object[] objArr2 = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int i6 = 0; i6 < objArr2.length; i6++) {
            C26550b c26550b2 = new C26550b();
            c26550b2.f74388a = objArr2[i6];
            c26550b2.f74390c = spannable.getSpanStart(objArr2[i6]);
            c26550b2.f74391d = spannable.getSpanEnd(objArr2[i6]);
            arrayList.add(c26550b2);
        }
        Collections.sort(arrayList, f74387b);
        int size = arrayList.size();
        int i7 = 0;
        while (true) {
            int i8 = size - 1;
            if (i7 >= i8) {
                break;
            }
            C26550b c26550b3 = (C26550b) arrayList.get(i7);
            int i9 = i7 + 1;
            C26550b c26550b4 = (C26550b) arrayList.get(i9);
            int i10 = c26550b3.f74390c;
            int i11 = c26550b4.f74390c;
            if (i10 <= i11 && (i2 = c26550b3.f74391d) > i11) {
                int i12 = c26550b4.f74391d;
                int i13 = (i12 > i2 && (i3 = i2 - i10) <= (i4 = i12 - i11)) ? i3 < i4 ? i7 : -1 : i9;
                if (i13 != -1) {
                    Object obj2 = ((C26550b) arrayList.get(i13)).f74388a;
                    if (obj2 != null) {
                        spannable.removeSpan(obj2);
                    }
                    arrayList.remove(i13);
                    size = i8;
                }
            }
            i7 = i9;
        }
        if (arrayList.size() == 0) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C26550b c26550b5 = (C26550b) it.next();
            if (c26550b5.f74388a == null) {
                spannable.setSpan(new URLSpan(c26550b5.f74389b), c26550b5.f74390c, c26550b5.f74391d, 33);
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x02db, code lost:
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0096, code lost:
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0123, code lost:
        if (p1727n3.p1807k.p1818g.p1819f.C26546a.m1701a(r19.group(0)) != false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0324 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ed  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1697d(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 833
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1818g.p1819f.C26548b.m1697d(java.lang.String):java.lang.String");
    }

    /* renamed from: e */
    public static void m1696e(ArrayList<C26550b> arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int start = matcher.start();
            int end = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, start, end)) {
                C26550b c26550b = new C26550b();
                c26550b.f74389b = m1695f(matcher.group(0), strArr, matcher, null);
                c26550b.f74390c = start;
                c26550b.f74391d = end;
                arrayList.add(c26550b);
            }
        }
    }

    /* renamed from: f */
    public static String m1695f(String str, String[] strArr, Matcher matcher, Linkify.TransformFilter transformFilter) {
        boolean z;
        String str2;
        String str3 = str;
        if (transformFilter != null) {
            str3 = transformFilter.transformUrl(matcher, str);
        }
        int i = 0;
        while (true) {
            if (i >= strArr.length) {
                z = false;
                str2 = str3;
                break;
            } else if (str3.regionMatches(true, 0, strArr[i], 0, strArr[i].length())) {
                z = true;
                str2 = str3;
                if (!str3.regionMatches(false, 0, strArr[i], 0, strArr[i].length())) {
                    str2 = strArr[i] + str3.substring(strArr[i].length());
                    z = true;
                }
            } else {
                i++;
            }
        }
        String str4 = str2;
        if (!z) {
            str4 = str2;
            if (strArr.length > 0) {
                str4 = C22128a.m8618h(new StringBuilder(), strArr[0], str2);
            }
        }
        return str4;
    }

    /* renamed from: g */
    public static boolean m1694g() {
        return Build.VERSION.SDK_INT >= 28;
    }
}
