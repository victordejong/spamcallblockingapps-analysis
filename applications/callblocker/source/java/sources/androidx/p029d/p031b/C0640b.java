package androidx.p029d.p031b;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: androidx.d.b.b */
/* loaded from: classes-dex2jar.jar:androidx/d/b/b.class */
class C0640b {

    /* renamed from: androidx.d.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/d/b/b$a.class */
    public interface AbstractC0641a<T> {
        /* renamed from: a */
        void mo20067a(T t, Rect rect);
    }

    /* renamed from: androidx.d.b.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/d/b/b$b.class */
    public interface AbstractC0642b<T, V> {
        /* renamed from: a */
        int mo20066a(T t);

        /* renamed from: a */
        V mo20065a(T t, int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.d.b.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/d/b/b$c.class */
    public static class C0643c<T> implements Comparator<T> {

        /* renamed from: a */
        private final Rect f2218a = new Rect();

        /* renamed from: b */
        private final Rect f2219b = new Rect();

        /* renamed from: c */
        private final boolean f2220c;

        /* renamed from: d */
        private final AbstractC0641a<T> f2221d;

        C0643c(boolean z, AbstractC0641a<T> abstractC0641a) {
            this.f2220c = z;
            this.f2221d = abstractC0641a;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            int i = 1;
            Rect rect = this.f2218a;
            Rect rect2 = this.f2219b;
            this.f2221d.mo20067a(t, rect);
            this.f2221d.mo20067a(t2, rect2);
            if (rect.top < rect2.top) {
                i = -1;
            } else if (rect.top > rect2.top) {
                i = 1;
            } else if (rect.left < rect2.left) {
                if (!this.f2220c) {
                    i = -1;
                }
            } else if (rect.left > rect2.left) {
                i = -1;
                if (!this.f2220c) {
                    i = 1;
                }
            } else {
                i = -1;
                if (rect.bottom >= rect2.bottom) {
                    if (rect.bottom > rect2.bottom) {
                        i = 1;
                    } else if (rect.right < rect2.right) {
                        i = this.f2220c ? 1 : -1;
                    } else if (rect.right > rect2.right) {
                        i = -1;
                        if (!this.f2220c) {
                            i = 1;
                        }
                    } else {
                        i = 0;
                    }
                }
            }
            return i;
        }
    }

    /* renamed from: a */
    private static int m20082a(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    /* renamed from: a */
    public static <L, T> T m20078a(L l, AbstractC0642b<L, T> abstractC0642b, AbstractC0641a<T> abstractC0641a, T t, int i, boolean z, boolean z2) {
        Object m20073b;
        int mo20066a = abstractC0642b.mo20066a(l);
        ArrayList arrayList = new ArrayList(mo20066a);
        for (int i2 = 0; i2 < mo20066a; i2++) {
            arrayList.add(abstractC0642b.mo20065a(l, i2));
        }
        Collections.sort(arrayList, new C0643c(z, abstractC0641a));
        switch (i) {
            case 1:
                m20073b = m20073b(t, arrayList, z2);
                break;
            case 2:
                m20073b = m20076a(t, arrayList, z2);
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
        return (T) m20073b;
    }

    /* renamed from: a */
    public static <L, T> T m20077a(L l, AbstractC0642b<L, T> abstractC0642b, AbstractC0641a<T> abstractC0641a, T t, Rect rect, int i) {
        Rect rect2 = new Rect(rect);
        switch (i) {
            case 17:
                rect2.offset(rect.width() + 1, 0);
                break;
            case 33:
                rect2.offset(0, rect.height() + 1);
                break;
            case 66:
                rect2.offset(-(rect.width() + 1), 0);
                break;
            case 130:
                rect2.offset(0, -(rect.height() + 1));
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        T t2 = null;
        int mo20066a = abstractC0642b.mo20066a(l);
        Rect rect3 = new Rect();
        for (int i2 = 0; i2 < mo20066a; i2++) {
            T mo20065a = abstractC0642b.mo20065a(l, i2);
            if (mo20065a != t) {
                abstractC0641a.mo20067a(mo20065a, rect3);
                if (m20080a(i, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = mo20065a;
                }
            }
        }
        return t2;
    }

    /* renamed from: a */
    private static <T> T m20076a(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int lastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        return lastIndexOf < size ? arrayList.get(lastIndexOf) : (!z || size <= 0) ? null : arrayList.get(0);
    }

    /* renamed from: a */
    private static boolean m20081a(int i, Rect rect, Rect rect2) {
        boolean z = true;
        switch (i) {
            case 17:
            case 66:
                if (rect2.bottom < rect.top || rect2.top > rect.bottom) {
                    z = false;
                    break;
                }
                break;
            case 33:
            case 130:
                if (rect2.right < rect.left || rect2.left > rect.right) {
                    z = false;
                    break;
                }
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m20080a(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean z;
        if (!m20079a(rect, rect2, i)) {
            z = false;
        } else {
            z = true;
            if (m20079a(rect, rect3, i)) {
                z = true;
                if (!m20074b(i, rect, rect2, rect3)) {
                    if (m20074b(i, rect, rect3, rect2)) {
                        z = false;
                    } else {
                        z = true;
                        if (m20082a(m20072c(i, rect, rect2), m20068g(i, rect, rect2)) >= m20082a(m20072c(i, rect, rect3), m20068g(i, rect, rect3))) {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m20079a(Rect rect, Rect rect2, int i) {
        boolean z = true;
        switch (i) {
            case 17:
                if ((rect.right <= rect2.right && rect.left < rect2.right) || rect.left <= rect2.left) {
                    z = false;
                    break;
                }
                break;
            case 33:
                if ((rect.bottom <= rect2.bottom && rect.top < rect2.bottom) || rect.top <= rect2.top) {
                    z = false;
                    break;
                }
                break;
            case 66:
                if ((rect.left >= rect2.left && rect.right > rect2.left) || rect.right >= rect2.right) {
                    z = false;
                    break;
                }
                break;
            case 130:
                if ((rect.top >= rect2.top && rect.bottom > rect2.top) || rect.bottom >= rect2.bottom) {
                    z = false;
                    break;
                }
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return z;
    }

    /* renamed from: b */
    private static <T> T m20073b(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int indexOf = (t == null ? size : arrayList.indexOf(t)) - 1;
        return indexOf >= 0 ? arrayList.get(indexOf) : (!z || size <= 0) ? null : arrayList.get(size - 1);
    }

    /* renamed from: b */
    private static boolean m20075b(int i, Rect rect, Rect rect2) {
        boolean z = true;
        switch (i) {
            case 17:
                if (rect.left < rect2.right) {
                    z = false;
                    break;
                }
                break;
            case 33:
                if (rect.top < rect2.bottom) {
                    z = false;
                    break;
                }
                break;
            case 66:
                if (rect.right > rect2.left) {
                    z = false;
                    break;
                }
                break;
            case 130:
                if (rect.bottom > rect2.top) {
                    z = false;
                    break;
                }
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return z;
    }

    /* renamed from: b */
    private static boolean m20074b(int i, Rect rect, Rect rect2, Rect rect3) {
        boolean z;
        boolean m20081a = m20081a(i, rect, rect2);
        if (m20081a(i, rect, rect3) || !m20081a) {
            z = false;
        } else {
            z = true;
            if (m20075b(i, rect, rect3)) {
                z = true;
                if (i != 17) {
                    z = true;
                    if (i != 66) {
                        z = true;
                        if (m20072c(i, rect, rect2) >= m20070e(i, rect, rect3)) {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    private static int m20072c(int i, Rect rect, Rect rect2) {
        return Math.max(0, m20071d(i, rect, rect2));
    }

    /* renamed from: d */
    private static int m20071d(int i, Rect rect, Rect rect2) {
        int i2;
        switch (i) {
            case 17:
                i2 = rect.left - rect2.right;
                break;
            case 33:
                i2 = rect.top - rect2.bottom;
                break;
            case 66:
                i2 = rect2.left - rect.right;
                break;
            case 130:
                i2 = rect2.top - rect.bottom;
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i2;
    }

    /* renamed from: e */
    private static int m20070e(int i, Rect rect, Rect rect2) {
        return Math.max(1, m20069f(i, rect, rect2));
    }

    /* renamed from: f */
    private static int m20069f(int i, Rect rect, Rect rect2) {
        int i2;
        switch (i) {
            case 17:
                i2 = rect.left - rect2.left;
                break;
            case 33:
                i2 = rect.top - rect2.top;
                break;
            case 66:
                i2 = rect2.right - rect.right;
                break;
            case 130:
                i2 = rect2.bottom - rect.bottom;
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i2;
    }

    /* renamed from: g */
    private static int m20068g(int i, Rect rect, Rect rect2) {
        int abs;
        switch (i) {
            case 17:
            case 66:
                abs = Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
                break;
            case 33:
            case 130:
                abs = Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return abs;
    }
}
