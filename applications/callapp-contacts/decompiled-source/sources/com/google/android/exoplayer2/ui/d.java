package com.google.android.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.BackgroundColorSpan;
import android.util.SparseArray;
import com.google.android.exoplayer2.util.af;
import com.google.common.collect.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f22030a = Pattern.compile("(&#13;)?&#10;");

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f22031a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, String> f22032b;

        private a(String str, Map<String, String> map) {
            this.f22031a = str;
            this.f22032b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d$b.class */
    public static final class b {
        private static final Comparator<b> e = _$$Lambda$d$b$tc1Y_2QbgOkDJdn_HzXbgB7GSfQ.INSTANCE;
        private static final Comparator<b> f = _$$Lambda$d$b$MV7IGaGxtWP5pLZHaYnsofQOYGs.INSTANCE;

        /* renamed from: a  reason: collision with root package name */
        public final int f22033a;

        /* renamed from: b  reason: collision with root package name */
        public final int f22034b;

        /* renamed from: c  reason: collision with root package name */
        public final String f22035c;

        /* renamed from: d  reason: collision with root package name */
        public final String f22036d;

        private b(int i, int i2, String str, String str2) {
            this.f22033a = i;
            this.f22034b = i2;
            this.f22035c = str;
            this.f22036d = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(b bVar, b bVar2) {
            int compare = Integer.compare(bVar2.f22033a, bVar.f22033a);
            if (compare != 0) {
                return compare;
            }
            int compareTo = bVar2.f22035c.compareTo(bVar.f22035c);
            return compareTo != 0 ? compareTo : bVar2.f22036d.compareTo(bVar.f22036d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(b bVar, b bVar2) {
            int compare = Integer.compare(bVar2.f22034b, bVar.f22034b);
            if (compare != 0) {
                return compare;
            }
            int compareTo = bVar.f22035c.compareTo(bVar2.f22035c);
            return compareTo != 0 ? compareTo : bVar.f22036d.compareTo(bVar2.f22036d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/d$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final List<b> f22037a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final List<b> f22038b = new ArrayList();
    }

    private d() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x02cf, code lost:
        if (((android.text.style.TypefaceSpan) r0).getFamily() != null) goto L_0x0365;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03bc A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.SparseArray<com.google.android.exoplayer2.ui.d.c> a(android.text.Spanned r8, float r9) {
        /*
            Method dump skipped, instructions count: 964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.d.a(android.text.Spanned, float):android.util.SparseArray");
    }

    public static a a(CharSequence charSequence, float f) {
        if (charSequence == null) {
            return new a("", x.a());
        }
        if (!(charSequence instanceof Spanned)) {
            return new a(a(charSequence), x.a());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet<Integer> hashSet = new HashSet();
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap hashMap = new HashMap();
        for (Integer num : hashSet) {
            int intValue = num.intValue();
            hashMap.put(com.google.android.exoplayer2.ui.b.a("bg_".concat(String.valueOf(intValue))), af.a("background-color:%s;", com.google.android.exoplayer2.ui.b.a(intValue)));
        }
        SparseArray<c> a2 = a(spanned, f);
        StringBuilder sb = new StringBuilder(spanned.length());
        int i = 0;
        for (int i2 = 0; i2 < a2.size(); i2++) {
            i = a2.keyAt(i2);
            sb.append(a(spanned.subSequence(i, i)));
            c cVar = a2.get(i);
            Collections.sort(cVar.f22038b, b.f);
            for (b bVar : cVar.f22038b) {
                sb.append(bVar.f22036d);
            }
            Collections.sort(cVar.f22037a, b.e);
            for (b bVar2 : cVar.f22037a) {
                sb.append(bVar2.f22035c);
            }
        }
        sb.append(a(spanned.subSequence(i, spanned.length())));
        return new a(sb.toString(), hashMap);
    }

    private static c a(SparseArray<c> sparseArray, int i) {
        c cVar = sparseArray.get(i);
        c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = new c();
            sparseArray.put(i, cVar2);
        }
        return cVar2;
    }

    private static String a(CharSequence charSequence) {
        return f22030a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
