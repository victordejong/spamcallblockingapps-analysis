package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatRatingBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.AppCompatToggleButton;
import d.e.g;
import d.h.m.t;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.app.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e.class */
public class C0087e {

    /* renamed from: b */
    private static final Class<?>[] f273b = {Context.class, AttributeSet.class};

    /* renamed from: c */
    private static final int[] f274c = {16843375};

    /* renamed from: d */
    private static final String[] f275d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e */
    private static final g<String, Constructor<? extends View>> f276e = new g<>();

    /* renamed from: a */
    private final Object[] f277a = new Object[2];

    /* renamed from: androidx.appcompat.app.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e$a.class */
    public static class View$OnClickListenerC0088a implements View.OnClickListener {

        /* renamed from: b */
        private final View f278b;

        /* renamed from: c */
        private final String f279c;

        /* renamed from: d */
        private Method f280d;

        /* renamed from: e */
        private Context f281e;

        public View$OnClickListenerC0088a(View view, String str) {
            this.f278b = view;
            this.f279c = str;
        }

        /* renamed from: a */
        private void m14866a(Context context) {
            int id;
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f279c, View.class)) != null) {
                        this.f280d = method;
                        this.f281e = context;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f278b.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f278b.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f279c + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f278b.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f280d == null) {
                m14866a(this.f278b.getContext());
            }
            try {
                this.f280d.invoke(this.f281e, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    /* renamed from: a */
    private void m14887a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT >= 15 && !t.N(view)) {
                return;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f274c);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new View$OnClickListenerC0088a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: r */
    private View m14870r(Context context, String str, String str2) {
        String str3;
        g<String, Constructor<? extends View>> gVar = f276e;
        Constructor constructor = (Constructor) gVar.get(str);
        Constructor constructor2 = constructor;
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception e) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f273b);
            gVar.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        return (View) constructor2.newInstance(this.f277a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    private View m14869s(Context context, String str, AttributeSet attributeSet) {
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.f277a;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str2.indexOf(46)) {
                View m14870r = m14870r(context, str2, null);
                Object[] objArr2 = this.f277a;
                objArr2[0] = null;
                objArr2[1] = null;
                return m14870r;
            }
            int i = 0;
            while (true) {
                String[] strArr = f275d;
                if (i >= strArr.length) {
                    Object[] objArr3 = this.f277a;
                    objArr3[0] = null;
                    objArr3[1] = null;
                    return null;
                }
                View m14870r2 = m14870r(context, str2, strArr[i]);
                if (m14870r2 != null) {
                    Object[] objArr4 = this.f277a;
                    objArr4[0] = null;
                    objArr4[1] = null;
                    return m14870r2;
                }
                i++;
            }
        } catch (Exception e) {
            Object[] objArr5 = this.f277a;
            objArr5[0] = null;
            objArr5[1] = null;
            return null;
        } catch (Throwable th) {
            Object[] objArr6 = this.f277a;
            objArr6[0] = null;
            objArr6[1] = null;
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (((d.a.o.d) r6).c() != r11) goto L19;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.Context m14868t(android.content.Context r6, android.util.AttributeSet r7, boolean r8, boolean r9) {
        /*
            r0 = r6
            r1 = r7
            int[] r2 = d.a.j.View
            r3 = 0
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L1c
            r0 = r7
            int r1 = d.a.j.View_android_theme
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            goto L1f
        L1c:
            r0 = 0
            r10 = r0
        L1f:
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L4f
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L4f
            r0 = r7
            int r1 = d.a.j.View_theme
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L4f
            java.lang.String r0 = "AppCompatViewInflater"
            java.lang.String r1 = "app:theme is now deprecated. Please move to using android:theme instead."
            int r0 = android.util.Log.i(r0, r1)
            r0 = r10
            r11 = r0
        L4f:
            r0 = r7
            r0.recycle()
            r0 = r6
            r7 = r0
            r0 = r11
            if (r0 == 0) goto L7a
            r0 = r6
            boolean r0 = r0 instanceof d.a.o.d
            if (r0 == 0) goto L6f
            r0 = r6
            r7 = r0
            r0 = r6
            d.a.o.d r0 = (d.a.o.d) r0
            int r0 = r0.c()
            r1 = r11
            if (r0 == r1) goto L7a
        L6f:
            d.a.o.d r0 = new d.a.o.d
            r1 = r0
            r2 = r6
            r3 = r11
            r1.<init>(r2, r3)
            r7 = r0
        L7a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0087e.m14868t(android.content.Context, android.util.AttributeSet, boolean, boolean):android.content.Context");
    }

    /* renamed from: u */
    private void m14867u(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    /* renamed from: b */
    protected AppCompatAutoCompleteTextView m14886b(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    /* renamed from: c */
    protected AppCompatButton m14885c(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    /* renamed from: d */
    protected AppCompatCheckBox m14884d(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    /* renamed from: e */
    protected AppCompatCheckedTextView m14883e(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    /* renamed from: f */
    protected AppCompatEditText m14882f(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    /* renamed from: g */
    protected AppCompatImageButton m14881g(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    /* renamed from: h */
    protected AppCompatImageView m14880h(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    /* renamed from: i */
    protected AppCompatMultiAutoCompleteTextView m14879i(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    /* renamed from: j */
    protected AppCompatRadioButton m14878j(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    /* renamed from: k */
    protected AppCompatRatingBar m14877k(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    /* renamed from: l */
    protected AppCompatSeekBar m14876l(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    /* renamed from: m */
    protected AppCompatSpinner m14875m(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    /* renamed from: n */
    protected AppCompatTextView m14874n(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    /* renamed from: o */
    protected AppCompatToggleButton m14873o(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }

    /* renamed from: p */
    protected View m14872p(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (r12 != false) goto L12;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final android.view.View m14871q(android.view.View r6, java.lang.String r7, android.content.Context r8, android.util.AttributeSet r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0087e.m14871q(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean, boolean):android.view.View");
    }
}
