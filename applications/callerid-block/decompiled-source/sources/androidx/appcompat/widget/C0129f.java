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
        C0129f fVar;
        synchronized (C0129f.class) {
            try {
                if (f605c == null) {
                    m14601h();
                }
                fVar = f605c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* renamed from: e */
    public static PorterDuffColorFilter m14604e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter l;
        synchronized (C0129f.class) {
            try {
                l = C0156u.m14432l(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return l;
    }

    /* renamed from: h */
    public static void m14601h() {
        synchronized (C0129f.class) {
            try {
                if (f605c == null) {
                    C0129f fVar = new C0129f();
                    f605c = fVar;
                    fVar.f606a = C0156u.m14436h();
                    f605c.f606a.m14423u(new a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static void m14600i(Drawable drawable, C0124b0 b0Var, int[] iArr) {
        C0156u.m14421w(drawable, b0Var, iArr);
    }

    /* renamed from: c */
    public Drawable m14606c(Context context, int i) {
        Drawable j;
        synchronized (this) {
            j = this.f606a.m14434j(context, i);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public Drawable m14605d(Context context, int i, boolean z) {
        Drawable k;
        synchronized (this) {
            k = this.f606a.m14433k(context, i, z);
        }
        return k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public ColorStateList m14603f(Context context, int i) {
        ColorStateList m;
        synchronized (this) {
            m = this.f606a.m14431m(context, i);
        }
        return m;
    }

    /* renamed from: g */
    public void m14602g(Context context) {
        synchronized (this) {
            this.f606a.m14425s(context);
        }
    }
}
