package androidx.media2.exoplayer.external.text.f;

import android.text.SpannableStringBuilder;
import android.util.Pair;
import androidx.media2.exoplayer.external.util.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f3887a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3888b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f3889c;

    /* renamed from: d  reason: collision with root package name */
    public final long f3890d;
    public final long e;
    public final d f;
    public final String g;
    public final String h;
    private final String[] i;
    private final HashMap<String, Integer> j;
    private final HashMap<String, Integer> k;
    private List<b> l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2, long j, long j2, d dVar, String[] strArr, String str3, String str4) {
        this.f3887a = str;
        this.f3888b = str2;
        this.h = str4;
        this.f = dVar;
        this.i = strArr;
        this.f3889c = str2 != null;
        this.f3890d = j;
        this.e = j2;
        this.g = (String) a.a(str3);
        this.j = new HashMap<>();
        this.k = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpannableStringBuilder a(SpannableStringBuilder spannableStringBuilder) {
        int i;
        int i2;
        int length = spannableStringBuilder.length();
        for (int i3 = 0; i3 < length; i3++) {
            length = length;
            if (spannableStringBuilder.charAt(i3) == ' ') {
                int i4 = i3 + 1;
                int i5 = i4;
                while (i5 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i5) == ' ') {
                    i5++;
                }
                int i6 = i5 - i4;
                length = length;
                if (i6 > 0) {
                    spannableStringBuilder.delete(i3, i3 + i6);
                    length -= i6;
                }
            }
        }
        int i7 = length;
        if (length > 0) {
            i7 = length;
            if (spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
                i7 = length - 1;
            }
        }
        int i8 = 0;
        while (true) {
            i = i7 - 1;
            if (i8 >= i) {
                break;
            }
            i7 = i7;
            if (spannableStringBuilder.charAt(i8) == '\n') {
                int i9 = i8 + 1;
                i7 = i7;
                if (spannableStringBuilder.charAt(i9) == ' ') {
                    spannableStringBuilder.delete(i9, i8 + 2);
                    i7--;
                }
            }
            i8++;
        }
        int i10 = i7;
        int i11 = 0;
        if (i7 > 0) {
            i10 = i7;
            i11 = 0;
            if (spannableStringBuilder.charAt(i) == ' ') {
                spannableStringBuilder.delete(i, i7);
                i10 = i7 - 1;
                i11 = 0;
            }
        }
        while (true) {
            i2 = i10 - 1;
            if (i11 >= i2) {
                break;
            }
            i10 = i10;
            if (spannableStringBuilder.charAt(i11) == ' ') {
                int i12 = i11 + 1;
                i10 = i10;
                if (spannableStringBuilder.charAt(i12) == '\n') {
                    spannableStringBuilder.delete(i11, i12);
                    i10--;
                }
            }
            i11++;
        }
        if (i10 > 0 && spannableStringBuilder.charAt(i2) == '\n') {
            spannableStringBuilder.delete(i2, i10);
        }
        return spannableStringBuilder;
    }

    private static SpannableStringBuilder a(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    private b a(int i) {
        List<b> list = this.l;
        if (list != null) {
            return list.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    private void a(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f3887a);
        boolean equals2 = "div".equals(this.f3887a);
        if (z || equals || (equals2 && this.h != null)) {
            long j = this.f3890d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.l != null) {
            for (int i = 0; i < this.l.size(); i++) {
                this.l.get(i).a(treeSet, z || equals);
            }
        }
    }

    private boolean a(long j) {
        long j2 = this.f3890d;
        if (j2 == -9223372036854775807L && this.e == -9223372036854775807L) {
            return true;
        }
        if (j2 <= j && this.e == -9223372036854775807L) {
            return true;
        }
        if (j2 != -9223372036854775807L || j >= this.e) {
            return j2 <= j && j < this.e;
        }
        return true;
    }

    private int b() {
        List<b> list = this.l;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.g)) {
            str = this.g;
        }
        if (!a(j) || !"div".equals(this.f3887a) || this.h == null) {
            for (int i = 0; i < b(); i++) {
                a(i).a(j, str, list);
            }
            return;
        }
        list.add(new Pair<>(str, this.h));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0309, code lost:
        if (r13 >= b()) goto L_0x031f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x030c, code lost:
        a(r13).a(r7, r9, r10);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x031f, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r7, java.util.Map<java.lang.String, androidx.media2.exoplayer.external.text.f.d> r9, java.util.Map<java.lang.String, android.text.SpannableStringBuilder> r10) {
        /*
            Method dump skipped, instructions count: 800
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.f.b.a(long, java.util.Map, java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.j.clear();
        this.k.clear();
        if (!"metadata".equals(this.f3887a)) {
            if (!"".equals(this.g)) {
                str = this.g;
            }
            if (this.f3889c && z) {
                a(str, map).append((CharSequence) this.f3888b);
            } else if ("br".equals(this.f3887a) && z) {
                a(str, map).append('\n');
            } else if (a(j)) {
                for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                    this.j.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
                }
                boolean equals = "p".equals(this.f3887a);
                for (int i = 0; i < b(); i++) {
                    a(i).a(j, z || equals, str, map);
                }
                if (equals) {
                    SpannableStringBuilder a2 = a(str, map);
                    int length = a2.length() - 1;
                    while (length >= 0 && a2.charAt(length) == ' ') {
                        length--;
                    }
                    if (length >= 0 && a2.charAt(length) != '\n') {
                        a2.append('\n');
                    }
                }
                for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                    this.k.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
                }
            }
        }
    }

    public final void a(b bVar) {
        if (this.l == null) {
            this.l = new ArrayList();
        }
        this.l.add(bVar);
    }

    public final long[] a() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i = 0;
        a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it2 = treeSet.iterator();
        while (it2.hasNext()) {
            jArr[i] = it2.next().longValue();
            i++;
        }
        return jArr;
    }
}
