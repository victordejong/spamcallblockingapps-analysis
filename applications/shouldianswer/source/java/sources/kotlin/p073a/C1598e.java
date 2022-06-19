package kotlin.p073a;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
/* renamed from: kotlin.a.e */
/* loaded from: classes-dex2jar.jar:kotlin/a/e.class */
public class C1598e extends C1597d {
    /* renamed from: a */
    public static final char m3213a(char[] cArr) {
        C1694h.m3117b(cArr, "$this$single");
        int length = cArr.length;
        if (length != 0) {
            if (length != 1) {
                throw new IllegalArgumentException("Array has more than one element.");
            }
            return cArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    /* renamed from: a */
    public static final <T, A extends Appendable> A m3212a(T[] tArr, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC1663b<? super T, ? extends CharSequence> abstractC1663b) {
        int i2;
        C1694h.m3117b(tArr, "$this$joinTo");
        C1694h.m3117b(a, "buffer");
        C1694h.m3117b(charSequence, "separator");
        C1694h.m3117b(charSequence2, "prefix");
        C1694h.m3117b(charSequence3, "postfix");
        C1694h.m3117b(charSequence4, "truncated");
        a.append(charSequence2);
        int length = tArr.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = i4;
            if (i3 >= length) {
                break;
            }
            T t = tArr[i3];
            i4++;
            if (i4 > 1) {
                a.append(charSequence);
            }
            if (i >= 0) {
                i2 = i4;
                if (i4 > i) {
                    break;
                }
            }
            C1747g.m3046a(a, t, abstractC1663b);
            i3++;
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    /* renamed from: a */
    public static final <T> String m3211a(T[] tArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC1663b<? super T, ? extends CharSequence> abstractC1663b) {
        C1694h.m3117b(tArr, "$this$joinToString");
        C1694h.m3117b(charSequence, "separator");
        C1694h.m3117b(charSequence2, "prefix");
        C1694h.m3117b(charSequence3, "postfix");
        C1694h.m3117b(charSequence4, "truncated");
        String sb = ((StringBuilder) C1594a.m3212a(tArr, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, abstractC1663b)).toString();
        C1694h.m3122a((Object) sb, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb;
    }

    /* renamed from: a */
    public static /* synthetic */ String m3210a(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, AbstractC1663b abstractC1663b, int i2, Object obj) {
        if ((i2 & 1) != 0) {
        }
        if ((i2 & 2) != 0) {
        }
        if ((i2 & 4) != 0) {
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
        }
        if ((i2 & 32) != 0) {
            abstractC1663b = null;
        }
        return C1594a.m3211a(objArr, charSequence, charSequence2, charSequence3, i, charSequence4, abstractC1663b);
    }

    /* renamed from: a */
    public static final <T> boolean m3209a(T[] tArr, T t) {
        C1694h.m3117b(tArr, "$this$contains");
        return C1594a.m3207b(tArr, t) >= 0;
    }

    /* renamed from: b */
    public static final <T> int m3207b(T[] tArr, T t) {
        C1694h.m3117b(tArr, "$this$indexOf");
        if (t == null) {
            int length = tArr.length;
            for (int i = 0; i < length; i++) {
                if (tArr[i] == null) {
                    return i;
                }
            }
            return -1;
        }
        int length2 = tArr.length;
        for (int i2 = 0; i2 < length2; i2++) {
            if (C1694h.m3123a(t, tArr[i2])) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public static final <T> T m3208b(T[] tArr) {
        C1694h.m3117b(tArr, "$this$singleOrNull");
        return tArr.length == 1 ? tArr[0] : null;
    }

    /* renamed from: b */
    public static final <T> T[] m3206b(T[] tArr, Comparator<? super T> comparator) {
        C1694h.m3117b(tArr, "$this$sortedArrayWith");
        C1694h.m3117b(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        C1694h.m3122a((Object) tArr2, "java.util.Arrays.copyOf(this, size)");
        C1594a.m3214a((Object[]) tArr2, (Comparator) comparator);
        return tArr2;
    }

    /* renamed from: c */
    public static final <T> List<T> m3205c(T[] tArr, Comparator<? super T> comparator) {
        C1694h.m3117b(tArr, "$this$sortedWith");
        C1694h.m3117b(comparator, "comparator");
        return C1594a.m3215a(C1594a.m3206b((Object[]) tArr, (Comparator) comparator));
    }
}
