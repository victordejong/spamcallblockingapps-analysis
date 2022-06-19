package androidx.appcompat.widget;

import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p098g0.AbstractC2791c;
import p098g0.C2789a;
import p108h.C2986c;
/* renamed from: androidx.appcompat.widget.h0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0.class */
public class C0233h0 {

    /* renamed from: a */
    public static final int[] f954a = {16842912};

    /* renamed from: b */
    public static final int[] f955b = new int[0];

    /* renamed from: c */
    public static final Rect f956c = new Rect();

    /* renamed from: androidx.appcompat.widget.h0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0$a.class */
    public static class C0234a {

        /* renamed from: a */
        public static final boolean f957a;

        /* renamed from: b */
        public static final Method f958b;

        /* renamed from: c */
        public static final Field f959c;

        /* renamed from: d */
        public static final Field f960d;

        /* renamed from: e */
        public static final Field f961e;

        /* renamed from: f */
        public static final Field f962f;

        /* JADX WARN: Removed duplicated region for block: B:37:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c2  */
        static {
            /*
                Method dump skipped, instructions count: 223
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0233h0.C0234a.m8982clinit():void");
        }
    }

    /* renamed from: androidx.appcompat.widget.h0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0$b.class */
    public static class C0235b {
        /* renamed from: a */
        public static Insets m8494a(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }

    /* renamed from: a */
    public static boolean m8499a(Drawable drawable) {
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof AbstractC2791c) {
                return m8499a(((AbstractC2791c) drawable).mo3005b());
            }
            if (drawable instanceof C2986c) {
                return m8499a(((C2986c) drawable).f10067a);
            }
            if (!(drawable instanceof ScaleDrawable)) {
                return true;
            }
            return m8499a(((ScaleDrawable) drawable).getDrawable());
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!m8499a(drawable2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static void m8498b(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i = Build.VERSION.SDK_INT;
        if (i == 21 && "android.graphics.drawable.VectorDrawable".equals(name)) {
            m8497c(drawable);
        } else if (i < 29 || i >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
        } else {
            m8497c(drawable);
        }
    }

    /* renamed from: c */
    public static void m8497c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f954a);
        } else {
            drawable.setState(f955b);
        }
        drawable.setState(state);
    }

    /* renamed from: d */
    public static Rect m8496d(Drawable drawable) {
        Rect rect;
        Object invoke;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            Insets m8494a = C0235b.m8494a(drawable);
            return new Rect(m8494a.left, m8494a.top, m8494a.right, m8494a.bottom);
        }
        Drawable m3008g = C2789a.m3008g(drawable);
        boolean z = C0234a.f957a;
        if (i < 29 && C0234a.f957a) {
            try {
                invoke = C0234a.f958b.invoke(m3008g, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
            if (invoke != null) {
                rect = new Rect(C0234a.f959c.getInt(invoke), C0234a.f960d.getInt(invoke), C0234a.f961e.getInt(invoke), C0234a.f962f.getInt(invoke));
                return rect;
            }
        }
        rect = f956c;
        return rect;
    }

    /* renamed from: e */
    public static PorterDuff.Mode m8495e(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i == 5) {
                return PorterDuff.Mode.SRC_IN;
            }
            if (i == 9) {
                return PorterDuff.Mode.SRC_ATOP;
            }
            switch (i) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
