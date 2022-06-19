package androidx.customview.p026a;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: androidx.customview.a.b */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/b.class */
class C0614b {

    /* renamed from: androidx.customview.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$a.class */
    public interface AbstractC0615a<T> {
        /* renamed from: a */
        void mo5935a(T t, Rect rect);
    }

    /* renamed from: androidx.customview.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$b.class */
    public interface AbstractC0616b<T, V> {
        /* renamed from: a */
        int mo5934a(T t);

        /* renamed from: a */
        V mo5933a(T t, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.customview.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$c.class */
    public static class C0617c<T> implements Comparator<T> {

        /* renamed from: a */
        private final Rect f2046a = new Rect();

        /* renamed from: b */
        private final Rect f2047b = new Rect();

        /* renamed from: c */
        private final boolean f2048c;

        /* renamed from: d */
        private final AbstractC0615a<T> f2049d;

        C0617c(boolean z, AbstractC0615a<T> abstractC0615a) {
            this.f2048c = z;
            this.f2049d = abstractC0615a;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.f2046a;
            Rect rect2 = this.f2047b;
            this.f2049d.mo5935a(t, rect);
            this.f2049d.mo5935a(t2, rect2);
            int i = -1;
            if (rect.top < rect2.top) {
                return -1;
            }
            if (rect.top > rect2.top) {
                return 1;
            }
            if (rect.left < rect2.left) {
                if (this.f2048c) {
                    i = 1;
                }
                return i;
            } else if (rect.left > rect2.left) {
                if (!this.f2048c) {
                    i = 1;
                }
                return i;
            } else if (rect.bottom < rect2.bottom) {
                return -1;
            } else {
                if (rect.bottom > rect2.bottom) {
                    return 1;
                }
                if (rect.right < rect2.right) {
                    if (this.f2048c) {
                        i = 1;
                    }
                    return i;
                } else if (rect.right <= rect2.right) {
                    return 0;
                } else {
                    if (!this.f2048c) {
                        i = 1;
                    }
                    return i;
                }
            }
        }
    }

    /* renamed from: a */
    private static int m5950a(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    /* renamed from: a */
    public static <L, T> T m5946a(L l, AbstractC0616b<L, T> abstractC0616b, AbstractC0615a<T> abstractC0615a, T t, int i, boolean z, boolean z2) {
        int mo5934a = abstractC0616b.mo5934a(l);
        ArrayList arrayList = new ArrayList(mo5934a);
        for (int i2 = 0; i2 < mo5934a; i2++) {
            arrayList.add(abstractC0616b.mo5933a(l, i2));
        }
        Collections.sort(arrayList, new C0617c(z, abstractC0615a));
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
            }
            return (T) m5944a(t, arrayList, z2);
        }
        return (T) m5941b(t, arrayList, z2);
    }

    /* renamed from: a */
    public static <L, T> T m5945a(L l, AbstractC0616b<L, T> abstractC0616b, AbstractC0615a<T> abstractC0615a, T t, Rect rect, int i) {
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
        int mo5934a = abstractC0616b.mo5934a(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < mo5934a; i2++) {
            T mo5933a = abstractC0616b.mo5933a(l, i2);
            if (mo5933a != t) {
                abstractC0615a.mo5935a(mo5933a, rect3);
                if (m5948a(i, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = mo5933a;
                }
            }
        }
        return t2;
    }

    /* renamed from: a */
    private static <T> T m5944a(T t, ArrayList<T> arrayList, boolean z) {
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

    /* renamed from: a */
    private static boolean m5949a(int i, Rect rect, Rect rect2) {
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

    /* renamed from: a */
    private static boolean m5948a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean z = false;
        if (!m5947a(rect, rect2, i)) {
            return false;
        }
        if (!m5947a(rect, rect3, i) || m5942b(i, rect, rect2, rect3)) {
            return true;
        }
        if (m5942b(i, rect, rect3, rect2)) {
            return false;
        }
        if (m5950a(m5940c(i, rect, rect2), m5936g(i, rect, rect2)) < m5950a(m5940c(i, rect, rect3), m5936g(i, rect, rect3))) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m5947a(Rect rect, Rect rect2, int i) {
        boolean z = true;
        if (i == 17) {
            return (rect.right > rect2.right || rect.left >= rect2.right) && rect.left > rect2.left;
        } else if (i == 33) {
            return (rect.bottom > rect2.bottom || rect.top >= rect2.bottom) && rect.top > rect2.top;
        } else if (i == 66) {
            return (rect.left < rect2.left || rect.right <= rect2.left) && rect.right < rect2.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            if ((rect.top >= rect2.top && rect.bottom > rect2.top) || rect.bottom >= rect2.bottom) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: b */
    private static <T> T m5941b(T t, ArrayList<T> arrayList, boolean z) {
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

    /* renamed from: b */
    private static boolean m5943b(int i, Rect rect, Rect rect2) {
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

    /* renamed from: b */
    private static boolean m5942b(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean m5949a = m5949a(i, rect, rect2);
        if (m5949a(i, rect, rect3) || !m5949a) {
            return false;
        }
        if (!m5943b(i, rect, rect3)) {
            return true;
        }
        boolean z = true;
        if (i != 17) {
            z = i == 66 ? true : m5940c(i, rect, rect2) < m5938e(i, rect, rect3);
        }
        return z;
    }

    /* renamed from: c */
    private static int m5940c(int i, Rect rect, Rect rect2) {
        return Math.max(0, m5939d(i, rect, rect2));
    }

    /* renamed from: d */
    private static int m5939d(int i, Rect rect, Rect rect2) {
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

    /* renamed from: e */
    private static int m5938e(int i, Rect rect, Rect rect2) {
        return Math.max(1, m5937f(i, rect, rect2));
    }

    /* renamed from: f */
    private static int m5937f(int i, Rect rect, Rect rect2) {
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

    /* renamed from: g */
    private static int m5936g(int i, Rect rect, Rect rect2) {
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
