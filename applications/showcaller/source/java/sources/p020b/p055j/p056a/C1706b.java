package p020b.p055j.p056a;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: b.j.a.b */
/* loaded from: classes-dex2jar.jar:b/j/a/b.class */
class C1706b {

    /* renamed from: b.j.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/j/a/b$a.class */
    public interface AbstractC1707a<T> {
        /* renamed from: a */
        void mo29141a(T t, Rect rect);
    }

    /* renamed from: b.j.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/j/a/b$b.class */
    public interface AbstractC1708b<T, V> {
        /* renamed from: a */
        V mo29140a(T t, int i);

        /* renamed from: b */
        int mo29139b(T t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.j.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/j/a/b$c.class */
    public static class C1709c<T> implements Comparator<T> {

        /* renamed from: d */
        private final Rect f6393d = new Rect();

        /* renamed from: e */
        private final Rect f6394e = new Rect();

        /* renamed from: f */
        private final boolean f6395f;

        /* renamed from: g */
        private final AbstractC1707a<T> f6396g;

        C1709c(boolean z, AbstractC1707a<T> abstractC1707a) {
            this.f6395f = z;
            this.f6396g = abstractC1707a;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.f6393d;
            Rect rect2 = this.f6394e;
            this.f6396g.mo29141a(t, rect);
            this.f6396g.mo29141a(t2, rect2);
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
                if (this.f6395f) {
                    i3 = 1;
                }
                return i3;
            } else if (i4 > i5) {
                if (!this.f6395f) {
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
                    if (this.f6395f) {
                        i3 = 1;
                    }
                    return i3;
                } else if (i8 <= i9) {
                    return 0;
                } else {
                    if (!this.f6395f) {
                        i3 = 1;
                    }
                    return i3;
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m29156a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean m29155b = m29155b(i, rect, rect2);
        boolean z = false;
        if (m29155b(i, rect, rect3) || !m29155b) {
            return false;
        }
        if (!m29147j(i, rect, rect3) || i == 17 || i == 66) {
            return true;
        }
        if (m29146k(i, rect, rect2) < m29144m(i, rect, rect3)) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private static boolean m29155b(int i, Rect rect, Rect rect2) {
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
    public static <L, T> T m29154c(L l, AbstractC1708b<L, T> abstractC1708b, AbstractC1707a<T> abstractC1707a, T t, Rect rect, int i) {
        Rect rect2 = new Rect(rect);
        if (i == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            rect2.offset(0, -(rect.height() + 1));
        }
        T t2 = null;
        int mo29139b = abstractC1708b.mo29139b(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < mo29139b; i2++) {
            T mo29140a = abstractC1708b.mo29140a(l, i2);
            if (mo29140a != t) {
                abstractC1707a.mo29141a(mo29140a, rect3);
                if (m29149h(i, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = mo29140a;
                }
            }
        }
        return t2;
    }

    /* renamed from: d */
    public static <L, T> T m29153d(L l, AbstractC1708b<L, T> abstractC1708b, AbstractC1707a<T> abstractC1707a, T t, int i, boolean z, boolean z2) {
        int mo29139b = abstractC1708b.mo29139b(l);
        ArrayList arrayList = new ArrayList(mo29139b);
        for (int i2 = 0; i2 < mo29139b; i2++) {
            arrayList.add(abstractC1708b.mo29140a(l, i2));
        }
        Collections.sort(arrayList, new C1709c(z, abstractC1707a));
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
            }
            return (T) m29152e(t, arrayList, z2);
        }
        return (T) m29151f(t, arrayList, z2);
    }

    /* renamed from: e */
    private static <T> T m29152e(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int lastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (lastIndexOf < size) {
            return arrayList.get(lastIndexOf);
        }
        if (z && size > 0) {
            return arrayList.get(0);
        }
        return null;
    }

    /* renamed from: f */
    private static <T> T m29151f(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int indexOf = (t == null ? size : arrayList.indexOf(t)) - 1;
        if (indexOf >= 0) {
            return arrayList.get(indexOf);
        }
        if (z && size > 0) {
            return arrayList.get(size - 1);
        }
        return null;
    }

    /* renamed from: g */
    private static int m29150g(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    /* renamed from: h */
    private static boolean m29149h(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean z = false;
        if (!m29148i(rect, rect2, i)) {
            return false;
        }
        if (!m29148i(rect, rect3, i) || m29156a(i, rect, rect2, rect3)) {
            return true;
        }
        if (m29156a(i, rect, rect3, rect2)) {
            return false;
        }
        if (m29150g(m29146k(i, rect, rect2), m29142o(i, rect, rect2)) < m29150g(m29146k(i, rect, rect3), m29142o(i, rect, rect3))) {
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    private static boolean m29148i(Rect rect, Rect rect2, int i) {
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

    /* renamed from: j */
    private static boolean m29147j(int i, Rect rect, Rect rect2) {
        boolean z = true;
        if (i == 17) {
            return rect.left >= rect2.right;
        } else if (i == 33) {
            return rect.top >= rect2.bottom;
        } else if (i == 66) {
            return rect.right <= rect2.left;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            if (rect.bottom > rect2.top) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: k */
    private static int m29146k(int i, Rect rect, Rect rect2) {
        return Math.max(0, m29145l(i, rect, rect2));
    }

    /* renamed from: l */
    private static int m29145l(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            i2 = rect2.top;
            i3 = rect.bottom;
        }
        return i2 - i3;
    }

    /* renamed from: m */
    private static int m29144m(int i, Rect rect, Rect rect2) {
        return Math.max(1, m29143n(i, rect, rect2));
    }

    /* renamed from: n */
    private static int m29143n(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.left;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.top;
        } else if (i == 66) {
            i2 = rect2.right;
            i3 = rect.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            i2 = rect2.bottom;
            i3 = rect.bottom;
        }
        return i2 - i3;
    }

    /* renamed from: o */
    private static int m29142o(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }
}
