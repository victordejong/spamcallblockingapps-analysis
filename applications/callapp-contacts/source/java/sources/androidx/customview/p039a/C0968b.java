package androidx.customview.p039a;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: androidx.customview.a.b */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/b.class */
final class C0968b {

    /* renamed from: androidx.customview.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$a.class */
    public interface AbstractC0969a<T> {
        /* renamed from: a */
        void mo43913a(T t, Rect rect);
    }

    /* renamed from: androidx.customview.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$b.class */
    public interface AbstractC0970b<T, V> {
        /* renamed from: a */
        int mo43912a(T t);

        /* renamed from: a */
        V mo43911a(T t, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.customview.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$c.class */
    public static final class C0971c<T> implements Comparator<T> {

        /* renamed from: a */
        private final Rect f3892a = new Rect();

        /* renamed from: b */
        private final Rect f3893b = new Rect();

        /* renamed from: c */
        private final boolean f3894c;

        /* renamed from: d */
        private final AbstractC0969a<T> f3895d;

        C0971c(boolean z, AbstractC0969a<T> abstractC0969a) {
            this.f3894c = z;
            this.f3895d = abstractC0969a;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            Rect rect = this.f3892a;
            Rect rect2 = this.f3893b;
            this.f3895d.mo43913a(t, rect);
            this.f3895d.mo43913a(t2, rect2);
            if (rect.top < rect2.top) {
                return -1;
            }
            if (rect.top > rect2.top) {
                return 1;
            }
            if (rect.left < rect2.left) {
                return this.f3894c ? 1 : -1;
            } else if (rect.left > rect2.left) {
                return this.f3894c ? -1 : 1;
            } else if (rect.bottom < rect2.bottom) {
                return -1;
            } else {
                if (rect.bottom > rect2.bottom) {
                    return 1;
                }
                if (rect.right < rect2.right) {
                    return this.f3894c ? 1 : -1;
                } else if (rect.right <= rect2.right) {
                    return 0;
                } else {
                    return this.f3894c ? -1 : 1;
                }
            }
        }
    }

    private C0968b() {
    }

    /* renamed from: a */
    private static int m43927a(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    /* renamed from: a */
    public static <L, T> T m43923a(L l, AbstractC0970b<L, T> abstractC0970b, AbstractC0969a<T> abstractC0969a, T t, int i, boolean z) {
        int mo43912a = abstractC0970b.mo43912a(l);
        ArrayList arrayList = new ArrayList(mo43912a);
        for (int i2 = 0; i2 < mo43912a; i2++) {
            arrayList.add(abstractC0970b.mo43911a(l, i2));
        }
        Collections.sort(arrayList, new C0971c(z, abstractC0969a));
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
            }
            return (T) m43921a((Object) t, arrayList, false);
        }
        return (T) m43919b((Object) t, arrayList, false);
    }

    /* renamed from: a */
    public static <L, T> T m43922a(L l, AbstractC0970b<L, T> abstractC0970b, AbstractC0969a<T> abstractC0969a, T t, Rect rect, int i) {
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
        int mo43912a = abstractC0970b.mo43912a(l);
        Rect rect3 = new Rect();
        int i2 = 0;
        while (i2 < mo43912a) {
            T mo43911a = abstractC0970b.mo43911a(l, i2);
            T t3 = t2;
            if (mo43911a != t) {
                abstractC0969a.mo43913a(mo43911a, rect3);
                t3 = t2;
                if (m43924a(rect, rect3, i) && (!m43924a(rect, rect2, i) || m43925a(i, rect, rect3, rect2) || (!m43925a(i, rect, rect2, rect3) && m43927a(m43918c(i, rect, rect3), m43914g(i, rect, rect3)) < m43927a(m43918c(i, rect, rect2), m43914g(i, rect, rect2))))) {
                    rect2.set(rect3);
                    t3 = mo43911a;
                }
            }
            i2++;
            t2 = t3;
        }
        return t2;
    }

    /* renamed from: a */
    private static <T> T m43921a(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int lastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (lastIndexOf < size) {
            return arrayList.get(lastIndexOf);
        }
        return null;
    }

    /* renamed from: a */
    private static boolean m43926a(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* renamed from: a */
    private static boolean m43925a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean m43926a = m43926a(i, rect, rect2);
        if (m43926a(i, rect, rect3) || !m43926a) {
            return false;
        }
        return !m43920b(i, rect, rect3) || i == 17 || i == 66 || m43918c(i, rect, rect2) < m43916e(i, rect, rect3);
    }

    /* renamed from: a */
    private static boolean m43924a(Rect rect, Rect rect2, int i) {
        if (i == 17) {
            return (rect.right > rect2.right || rect.left >= rect2.right) && rect.left > rect2.left;
        } else if (i == 33) {
            return (rect.bottom > rect2.bottom || rect.top >= rect2.bottom) && rect.top > rect2.top;
        } else if (i == 66) {
            return (rect.left < rect2.left || rect.right <= rect2.left) && rect.right < rect2.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            return (rect.top < rect2.top || rect.bottom <= rect2.top) && rect.bottom < rect2.bottom;
        }
    }

    /* renamed from: b */
    private static <T> T m43919b(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        if (t != null) {
            size = arrayList.indexOf(t);
        }
        int i = size - 1;
        if (i >= 0) {
            return arrayList.get(i);
        }
        return null;
    }

    /* renamed from: b */
    private static boolean m43920b(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            return rect.left >= rect2.right;
        } else if (i == 33) {
            return rect.top >= rect2.bottom;
        } else if (i == 66) {
            return rect.right <= rect2.left;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            return rect.bottom <= rect2.top;
        }
    }

    /* renamed from: c */
    private static int m43918c(int i, Rect rect, Rect rect2) {
        return Math.max(0, m43917d(i, rect, rect2));
    }

    /* renamed from: d */
    private static int m43917d(int i, Rect rect, Rect rect2) {
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
    private static int m43916e(int i, Rect rect, Rect rect2) {
        return Math.max(1, m43915f(i, rect, rect2));
    }

    /* renamed from: f */
    private static int m43915f(int i, Rect rect, Rect rect2) {
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
    private static int m43914g(int i, Rect rect, Rect rect2) {
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
