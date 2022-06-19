package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.appcompat.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
public final class C0129f {

    /* renamed from: b */
    private static final PorterDuff.Mode f604b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static C0129f f605c;

    /* renamed from: a */
    private C0156u f606a;

    /* renamed from: b */
    public static C0129f m14607b() {
        C0129f c0129f;
        synchronized (C0129f.class) {
            try {
                if (f605c == null) {
                    m14601h();
                }
                c0129f = f605c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0129f;
    }

    /* renamed from: e */
    public static PorterDuffColorFilter m14604e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m14432l;
        synchronized (C0129f.class) {
            try {
                m14432l = C0156u.m14432l(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return m14432l;
    }

    /* renamed from: h */
    public static void m14601h() {
        synchronized (C0129f.class) {
            try {
                if (f605c == null) {
                    C0129f c0129f = new C0129f();
                    f605c = c0129f;
                    c0129f.f606a = C0156u.m14436h();
                    f605c.f606a.m14423u(new a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i */
    public static void m14600i(Drawable drawable, C0124b0 c0124b0, int[] iArr) {
        C0156u.m14421w(drawable, c0124b0, iArr);
    }

    /* renamed from: c */
    public Drawable m14606c(Context context, int i) {
        Drawable m14434j;
        synchronized (this) {
            m14434j = this.f606a.m14434j(context, i);
        }
        return m14434j;
    }

    /* renamed from: d */
    public Drawable m14605d(Context context, int i, boolean z) {
        Drawable m14433k;
        synchronized (this) {
            m14433k = this.f606a.m14433k(context, i, z);
        }
        return m14433k;
    }

    /* renamed from: f */
    public ColorStateList m14603f(Context context, int i) {
        ColorStateList m14431m;
        synchronized (this) {
            m14431m = this.f606a.m14431m(context, i);
        }
        return m14431m;
    }

    /* renamed from: g */
    public void m14602g(Context context) {
        synchronized (this) {
            this.f606a.m14425s(context);
        }
    }
}
