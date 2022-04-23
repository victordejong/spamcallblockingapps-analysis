package androidx.customview.a;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/customview/a/b.class */
final class b {

    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$a.class */
    public interface a<T> {
        void a(T t, Rect rect);
    }

    /* renamed from: androidx.customview.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$b.class */
    public interface AbstractC0057b<T, V> {
        int a(T t);

        V a(T t, int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/customview/a/b$c.class */
    static final class c<T> implements Comparator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f2078a = new Rect();

        /* renamed from: b  reason: collision with root package name */
        private final Rect f2079b = new Rect();

        /* renamed from: c  reason: collision with root package name */
        private final boolean f2080c;

        /* renamed from: d  reason: collision with root package name */
        private final a<T> f2081d;

        c(boolean z, a<T> aVar) {
            this.f2080c = z;
            this.f2081d = aVar;
        }

        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            Rect rect = this.f2078a;
            Rect rect2 = this.f2079b;
            this.f2081d.a(t, rect);
            this.f2081d.a(t2, rect2);
            if (rect.top < rect2.top) {
                return -1;
            }
            if (rect.top > rect2.top) {
                return 1;
            }
            if (rect.left < rect2.left) {
                return this.f2080c ? 1 : -1;
            }
            if (rect.left > rect2.left) {
                return this.f2080c ? -1 : 1;
            }
            if (rect.bottom < rect2.bottom) {
                return -1;
            }
            if (rect.bottom > rect2.bottom) {
                return 1;
            }
            if (rect.right < rect2.right) {
                return this.f2080c ? 1 : -1;
            }
            if (rect.right > rect2.right) {
                return this.f2080c ? -1 : 1;
            }
            return 0;
        }
    }

    private b() {
    }

    private static int a(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    public static <L, T> T a(L l, AbstractC0057b<L, T> bVar, a<T> aVar, T t, int i, boolean z) {
        int a2 = bVar.a(l);
        ArrayList arrayList = new ArrayList(a2);
        for (int i2 = 0; i2 < a2; i2++) {
            arrayList.add(bVar.a(l, i2));
        }
        Collections.sort(arrayList, new c(z, aVar));
        if (i == 1) {
            return (T) b((Object) t, arrayList, false);
        }
        if (i == 2) {
            return (T) a((Object) t, arrayList, false);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    public static <L, T> T a(L l, AbstractC0057b<L, T> bVar, a<T> aVar, T t, Rect rect, int i) {
        Rect rect2 = new Rect(rect);
        if (i == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i == 130) {
            rect2.offset(0, -(rect.height() + 1));
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        T t2 = null;
        int a2 = bVar.a(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < a2; i2++) {
            T a3 = bVar.a(l, i2);
            t2 = t2;
            if (a3 != t) {
                aVar.a(a3, rect3);
                t2 = t2;
                if (a(rect, rect3, i) && (!a(rect, rect2, i) || a(i, rect, rect3, rect2) || (!a(i, rect, rect2, rect3) && a(c(i, rect, rect3), g(i, rect, rect3)) < a(c(i, rect, rect2), g(i, rect, rect2))))) {
                    rect2.set(rect3);
                    t2 = a3;
                }
            }
        }
        return t2;
    }

    private static <T> T a(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int lastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (lastIndexOf < size) {
            return arrayList.get(lastIndexOf);
        }
        return null;
    }

    private static boolean a(int i, Rect rect, Rect rect2) {
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

    private static boolean a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean a2 = a(i, rect, rect2);
        if (a(i, rect, rect3) || !a2) {
            return false;
        }
        return !b(i, rect, rect3) || i == 17 || i == 66 || c(i, rect, rect2) < e(i, rect, rect3);
    }

    private static boolean a(Rect rect, Rect rect2, int i) {
        if (i == 17) {
            return (rect.right > rect2.right || rect.left >= rect2.right) && rect.left > rect2.left;
        }
        if (i == 33) {
            return (rect.bottom > rect2.bottom || rect.top >= rect2.bottom) && rect.top > rect2.top;
        }
        if (i == 66) {
            return (rect.left < rect2.left || rect.right <= rect2.left) && rect.right < rect2.right;
        }
        if (i == 130) {
            return (rect.top < rect2.top || rect.bottom <= rect2.top) && rect.bottom < rect2.bottom;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private static <T> T b(T t, ArrayList<T> arrayList, boolean z) {
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

    private static boolean b(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            return rect.left >= rect2.right;
        }
        if (i == 33) {
            return rect.top >= rect2.bottom;
        }
        if (i == 66) {
            return rect.right <= rect2.left;
        }
        if (i == 130) {
            return rect.bottom <= rect2.top;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private static int c(int i, Rect rect, Rect rect2) {
        return Math.max(0, d(i, rect, rect2));
    }

    private static int d(int i, Rect rect, Rect rect2) {
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
        } else if (i == 130) {
            i2 = rect2.top;
            i3 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i2 - i3;
    }

    private static int e(int i, Rect rect, Rect rect2) {
        return Math.max(1, f(i, rect, rect2));
    }

    private static int f(int i, Rect rect, Rect rect2) {
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
        } else if (i == 130) {
            i2 = rect2.bottom;
            i3 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i2 - i3;
    }

    private static int g(int i, Rect rect, Rect rect2) {
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
