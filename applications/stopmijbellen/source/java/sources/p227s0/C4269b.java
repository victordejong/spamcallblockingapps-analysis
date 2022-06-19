package p227s0;

import android.graphics.Rect;
import java.util.Comparator;
import p227s0.AbstractC4265a;
/* renamed from: s0.b */
/* loaded from: classes-dex2jar.jar:s0/b.class */
public class C4269b {

    /* renamed from: s0.b$a */
    /* loaded from: classes-dex2jar.jar:s0/b$a.class */
    public interface AbstractC4270a<T> {
    }

    /* renamed from: s0.b$b */
    /* loaded from: classes-dex2jar.jar:s0/b$b.class */
    public interface AbstractC4271b<T, V> {
    }

    /* renamed from: s0.b$c */
    /* loaded from: classes-dex2jar.jar:s0/b$c.class */
    public static class C4272c<T> implements Comparator<T> {

        /* renamed from: a */
        public final Rect f13384a = new Rect();

        /* renamed from: b */
        public final Rect f13385b = new Rect();

        /* renamed from: c */
        public final boolean f13386c;

        /* renamed from: d */
        public final AbstractC4270a<T> f13387d;

        public C4272c(boolean z, AbstractC4270a<T> abstractC4270a) {
            this.f13386c = z;
            this.f13387d = abstractC4270a;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.f13384a;
            Rect rect2 = this.f13385b;
            ((AbstractC4265a.C4266a) this.f13387d).m1172a(t, rect);
            ((AbstractC4265a.C4266a) this.f13387d).m1172a(t2, rect2);
            int i = rect.top;
            int i2 = rect2.top;
            int i3 = -1;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i4 = rect.left;
            int i5 = rect2.left;
            if (i4 < i5) {
                if (this.f13386c) {
                    i3 = 1;
                }
                return i3;
            } else if (i4 > i5) {
                if (!this.f13386c) {
                    i3 = 1;
                }
                return i3;
            } else {
                int i6 = rect.bottom;
                int i7 = rect2.bottom;
                if (i6 < i7) {
                    return -1;
                }
                if (i6 > i7) {
                    return 1;
                }
                int i8 = rect.right;
                int i9 = rect2.right;
                if (i8 < i9) {
                    if (this.f13386c) {
                        i3 = 1;
                    }
                    return i3;
                } else if (i8 <= i9) {
                    return 0;
                } else {
                    if (!this.f13386c) {
                        i3 = 1;
                    }
                    return i3;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
        if (r6.bottom <= r8.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0059, code lost:
        if (r6.right <= r8.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
        if (r6.top >= r8.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
        if (r6.left >= r8.right) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
        r12 = false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1168a(int r5, android.graphics.Rect r6, android.graphics.Rect r7, android.graphics.Rect r8) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p227s0.C4269b.m1168a(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    /* renamed from: b */
    public static boolean m1167b(int i, Rect rect, Rect rect2) {
        boolean z = true;
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            if (rect2.right < rect.left || rect2.left > rect.right) {
                z = false;
            }
            return z;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* renamed from: c */
    public static boolean m1166c(Rect rect, Rect rect2, int i) {
        boolean z = true;
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            return (i2 > i3 || rect.left >= i3) && rect.left > rect2.left;
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            return (i4 > i5 || rect.top >= i5) && rect.top > rect2.top;
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            return (i6 < i7 || rect.right <= i7) && rect.right < rect2.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            int i8 = rect.top;
            int i9 = rect2.top;
            if ((i8 >= i9 && rect.bottom > i9) || rect.bottom >= rect2.bottom) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: d */
    public static int m1165d(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i3 = rect.left;
            i2 = rect2.right;
        } else if (i == 33) {
            i3 = rect.top;
            i2 = rect2.bottom;
        } else if (i == 66) {
            i3 = rect2.left;
            i2 = rect.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            i3 = rect2.top;
            i2 = rect.bottom;
        }
        return Math.max(0, i3 - i2);
    }

    /* renamed from: e */
    public static int m1164e(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            int i2 = rect.left;
            return Math.abs(((rect.width() / 2) + i2) - ((rect2.width() / 2) + rect2.left));
        }
        int i3 = rect.top;
        return Math.abs(((rect.height() / 2) + i3) - ((rect2.height() / 2) + rect2.top));
    }
}
