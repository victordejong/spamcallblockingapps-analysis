package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import androidx.collection.SimpleArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatViewInflater.class */
public class AppCompatViewInflater {

    /* renamed from: b */
    private static final Class<?>[] f263b = {Context.class, AttributeSet.class};

    /* renamed from: c */
    private static final int[] f264c = {16843375};

    /* renamed from: d */
    private static final String[] f265d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e */
    private static final SimpleArrayMap<String, Constructor<? extends View>> f266e = new SimpleArrayMap<>();

    /* renamed from: a */
    private final Object[] f267a = new Object[2];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener.class */
    public static class DeclaredOnClickListener implements View.OnClickListener {

        /* renamed from: f */
        private final View f268f;

        /* renamed from: g */
        private final String f269g;

        /* renamed from: h */
        private Method f270h;

        /* renamed from: i */
        private Context f271i;

        public DeclaredOnClickListener(@NonNull View view, @NonNull String str) {
            this.f268f = view;
            this.f269g = str;
        }

        /* renamed from: a */
        private void m22138a(@Nullable Context context) {
            int id;
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f269g, View.class)) != null) {
                        this.f270h = method;
                        this.f271i = context;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f268f.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f268f.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f269g + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f268f.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NonNull View view) {
            if (this.f270h == null) {
                m22138a(this.f268f.getContext());
            }
            try {
                this.f270h.invoke(this.f271i, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    /* renamed from: a */
    private void m22154a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (!(context instanceof ContextWrapper)) {
            return;
        }
        if (Build.VERSION.SDK_INT < 15 || ViewCompat.m19223N(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f264c);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new DeclaredOnClickListener(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: r */
    private View m22142r(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        Constructor<? extends View> constructor = f266e.get(str);
        Constructor<? extends View> constructor2 = constructor;
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
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f263b);
            f266e.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        return (View) constructor2.newInstance(this.f267a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    private View m22141s(Context context, String str, AttributeSet attributeSet) {
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, Name.LABEL);
        }
        try {
            this.f267a[0] = context;
            this.f267a[1] = attributeSet;
            if (-1 == str2.indexOf(46)) {
                for (int i = 0; i < f265d.length; i++) {
                    View r = m22142r(context, str2, f265d[i]);
                    if (r != null) {
                        Object[] objArr = this.f267a;
                        objArr[0] = null;
                        objArr[1] = null;
                        return r;
                    }
                }
                Object[] objArr2 = this.f267a;
                objArr2[0] = null;
                objArr2[1] = null;
                return null;
            }
            View r2 = m22142r(context, str2, null);
            Object[] objArr3 = this.f267a;
            objArr3[0] = null;
            objArr3[1] = null;
            return r2;
        } catch (Exception e) {
            Object[] objArr4 = this.f267a;
            objArr4[0] = null;
            objArr4[1] = null;
            return null;
        } catch (Throwable th) {
            Object[] objArr5 = this.f267a;
            objArr5[0] = null;
            objArr5[1] = null;
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (((androidx.appcompat.view.ContextThemeWrapper) r6).m21979c() != r11) goto L_0x006f;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.Context m22140t(android.content.Context r6, android.util.AttributeSet r7, boolean r8, boolean r9) {
        /*
            r0 = r6
            r1 = r7
            int[] r2 = androidx.appcompat.C0042R.styleable.View
            r3 = 0
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001c
            r0 = r7
            int r1 = androidx.appcompat.C0042R.styleable.View_android_theme
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            goto L_0x001f
        L_0x001c:
            r0 = 0
            r10 = r0
        L_0x001f:
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x004f
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L_0x004f
            r0 = r7
            int r1 = androidx.appcompat.C0042R.styleable.View_theme
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = "AppCompatViewInflater"
            java.lang.String r1 = "app:theme is now deprecated. Please move to using android:theme instead."
            int r0 = android.util.Log.i(r0, r1)
            r0 = r10
            r11 = r0
        L_0x004f:
            r0 = r7
            r0.recycle()
            r0 = r6
            r7 = r0
            r0 = r11
            if (r0 == 0) goto L_0x007a
            r0 = r6
            boolean r0 = r0 instanceof androidx.appcompat.view.ContextThemeWrapper
            if (r0 == 0) goto L_0x006f
            r0 = r6
            r7 = r0
            r0 = r6
            androidx.appcompat.view.ContextThemeWrapper r0 = (androidx.appcompat.view.ContextThemeWrapper) r0
            int r0 = r0.m21979c()
            r1 = r11
            if (r0 == r1) goto L_0x007a
        L_0x006f:
            androidx.appcompat.view.ContextThemeWrapper r0 = new androidx.appcompat.view.ContextThemeWrapper
            r1 = r0
            r2 = r6
            r3 = r11
            r1.<init>(r2, r3)
            r7 = r0
        L_0x007a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatViewInflater.m22140t(android.content.Context, android.util.AttributeSet, boolean, boolean):android.content.Context");
    }

    /* renamed from: u */
    private void m22139u(View view, String str) {
        if (view == null) {
            throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
        }
    }

    @NonNull
    /* renamed from: b */
    protected AppCompatAutoCompleteTextView mo8705b(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    @NonNull
    /* renamed from: c */
    protected AppCompatButton mo8704c(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    @NonNull
    /* renamed from: d */
    protected AppCompatCheckBox mo8703d(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    @NonNull
    /* renamed from: e */
    protected AppCompatCheckedTextView m22153e(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    @NonNull
    /* renamed from: f */
    protected AppCompatEditText m22152f(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    @NonNull
    /* renamed from: g */
    protected AppCompatImageButton m22151g(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    @NonNull
    /* renamed from: h */
    protected AppCompatImageView m22150h(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    @NonNull
    /* renamed from: i */
    protected AppCompatMultiAutoCompleteTextView m22149i(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    @NonNull
    /* renamed from: j */
    protected AppCompatRadioButton mo8702j(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    @NonNull
    /* renamed from: k */
    protected AppCompatRatingBar m22148k(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    @NonNull
    /* renamed from: l */
    protected AppCompatSeekBar m22147l(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    @NonNull
    /* renamed from: m */
    protected AppCompatSpinner m22146m(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    @NonNull
    /* renamed from: n */
    protected AppCompatTextView mo8701n(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    @NonNull
    /* renamed from: o */
    protected AppCompatToggleButton m22145o(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }

    @Nullable
    /* renamed from: p */
    protected View m22144p(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (r12 != false) goto L_0x0022;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m22143q(android.view.View r6, java.lang.String r7, @androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.NonNull android.util.AttributeSet r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatViewInflater.m22143q(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean, boolean):android.view.View");
    }
}
