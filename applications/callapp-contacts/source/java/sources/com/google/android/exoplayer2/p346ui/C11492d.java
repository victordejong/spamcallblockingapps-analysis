package com.google.android.exoplayer2.p346ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.BackgroundColorSpan;
import android.util.SparseArray;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.collect.AbstractC15556x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.ui.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d.class */
final class C11492d {

    /* renamed from: a */
    private static final Pattern f38167a = Pattern.compile("(&#13;)?&#10;");

    /* renamed from: com.google.android.exoplayer2.ui.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d$a.class */
    public static final class C11494a {

        /* renamed from: a */
        public final String f38168a;

        /* renamed from: b */
        public final Map<String, String> f38169b;

        private C11494a(String str, Map<String, String> map) {
            this.f38168a = str;
            this.f38169b = map;
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.d$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d$b.class */
    public static final class C11495b {

        /* renamed from: e */
        private static final Comparator<C11495b> f38170e = _$$Lambda$d$b$tc1Y_2QbgOkDJdn_HzXbgB7GSfQ.INSTANCE;

        /* renamed from: f */
        private static final Comparator<C11495b> f38171f = _$$Lambda$d$b$MV7IGaGxtWP5pLZHaYnsofQOYGs.INSTANCE;

        /* renamed from: a */
        public final int f38172a;

        /* renamed from: b */
        public final int f38173b;

        /* renamed from: c */
        public final String f38174c;

        /* renamed from: d */
        public final String f38175d;

        private C11495b(int i, int i2, String str, String str2) {
            this.f38172a = i;
            this.f38173b = i2;
            this.f38174c = str;
            this.f38175d = str2;
        }

        /* renamed from: a */
        public static /* synthetic */ int m20261a(C11495b c11495b, C11495b c11495b2) {
            int compare = Integer.compare(c11495b2.f38172a, c11495b.f38172a);
            if (compare != 0) {
                return compare;
            }
            int compareTo = c11495b2.f38174c.compareTo(c11495b.f38174c);
            return compareTo != 0 ? compareTo : c11495b2.f38175d.compareTo(c11495b.f38175d);
        }

        /* renamed from: b */
        public static /* synthetic */ int m20259b(C11495b c11495b, C11495b c11495b2) {
            int compare = Integer.compare(c11495b2.f38173b, c11495b.f38173b);
            if (compare != 0) {
                return compare;
            }
            int compareTo = c11495b.f38174c.compareTo(c11495b2.f38174c);
            return compareTo != 0 ? compareTo : c11495b.f38175d.compareTo(c11495b2.f38175d);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.d$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d$c.class */
    public static final class C11496c {

        /* renamed from: a */
        final List<C11495b> f38176a = new ArrayList();

        /* renamed from: b */
        final List<C11495b> f38177b = new ArrayList();
    }

    private C11492d() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x02cf, code lost:
        if (((android.text.style.TypefaceSpan) r0).getFamily() != null) goto L121;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03bc A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.SparseArray<com.google.android.exoplayer2.p346ui.C11492d.C11496c> m20266a(android.text.Spanned r8, float r9) {
        /*
            Method dump skipped, instructions count: 964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.C11492d.m20266a(android.text.Spanned, float):android.util.SparseArray");
    }

    /* renamed from: a */
    public static C11494a m20263a(CharSequence charSequence, float f) {
        if (charSequence == null) {
            return new C11494a("", AbstractC15556x.m8704a());
        }
        if (!(charSequence instanceof Spanned)) {
            return new C11494a(m20264a(charSequence), AbstractC15556x.m8704a());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet<Integer> hashSet = new HashSet();
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap hashMap = new HashMap();
        for (Integer num : hashSet) {
            int intValue = num.intValue();
            hashMap.put(C11478b.m20267a("bg_".concat(String.valueOf(intValue))), C11599af.m19968a("background-color:%s;", C11478b.m20268a(intValue)));
        }
        SparseArray<C11496c> m20266a = m20266a(spanned, f);
        StringBuilder sb = new StringBuilder(spanned.length());
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 >= m20266a.size()) {
                sb.append(m20264a(spanned.subSequence(i3, spanned.length())));
                return new C11494a(sb.toString(), hashMap);
            }
            i = m20266a.keyAt(i2);
            sb.append(m20264a(spanned.subSequence(i3, i)));
            C11496c c11496c = m20266a.get(i);
            Collections.sort(c11496c.f38177b, C11495b.f38171f);
            for (C11495b c11495b : c11496c.f38177b) {
                sb.append(c11495b.f38175d);
            }
            Collections.sort(c11496c.f38176a, C11495b.f38170e);
            for (C11495b c11495b2 : c11496c.f38176a) {
                sb.append(c11495b2.f38174c);
            }
            i2++;
        }
    }

    /* renamed from: a */
    private static C11496c m20265a(SparseArray<C11496c> sparseArray, int i) {
        C11496c c11496c = sparseArray.get(i);
        C11496c c11496c2 = c11496c;
        if (c11496c == null) {
            c11496c2 = new C11496c();
            sparseArray.put(i, c11496c2);
        }
        return c11496c2;
    }

    /* renamed from: a */
    private static String m20264a(CharSequence charSequence) {
        return f38167a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
