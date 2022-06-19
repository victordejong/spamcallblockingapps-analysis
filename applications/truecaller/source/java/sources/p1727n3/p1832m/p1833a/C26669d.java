package p1727n3.p1832m.p1833a;

import android.graphics.Rect;
import java.util.Comparator;
import p1727n3.p1832m.p1833a.AbstractC26663a;
/* renamed from: n3.m.a.d */
/* loaded from: classes-dex2jar.jar:n3/m/a/d.class */
public class C26669d<T> implements Comparator<T> {

    /* renamed from: a */
    public final Rect f74632a = new Rect();

    /* renamed from: b */
    public final Rect f74633b = new Rect();

    /* renamed from: c */
    public final boolean f74634c;

    /* renamed from: d */
    public final AbstractC26667b<T> f74635d;

    public C26669d(boolean z, AbstractC26667b<T> abstractC26667b) {
        this.f74634c = z;
        this.f74635d = abstractC26667b;
    }

    @Override // java.util.Comparator
    public int compare(T t, T t2) {
        Rect rect = this.f74632a;
        Rect rect2 = this.f74633b;
        ((AbstractC26663a.C26664a) this.f74635d).m1492a(t, rect);
        ((AbstractC26663a.C26664a) this.f74635d).m1492a(t2, rect2);
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
            if (this.f74634c) {
                i3 = 1;
            }
            return i3;
        } else if (i4 > i5) {
            if (!this.f74634c) {
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
                if (this.f74634c) {
                    i3 = 1;
                }
                return i3;
            } else if (i8 <= i9) {
                return 0;
            } else {
                if (!this.f74634c) {
                    i3 = 1;
                }
                return i3;
            }
        }
    }
}
