package p012b.p016b.p017k;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.InflateException;
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
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p012b.p035f.C0793g;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.b.k.e */
/* loaded from: classes-dex2jar.jar:b/b/k/e.class */
public class C0590e {

    /* renamed from: b */
    public static final Class<?>[] f2931b = {Context.class, AttributeSet.class};

    /* renamed from: c */
    public static final int[] f2932c = {16843375};

    /* renamed from: d */
    public static final String[] f2933d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e */
    public static final C0793g<String, Constructor<? extends View>> f2934e = new C0793g<>();

    /* renamed from: a */
    public final Object[] f2935a = new Object[2];

    /* renamed from: b.b.k.e$a */
    /* loaded from: classes-dex2jar.jar:b/b/k/e$a.class */
    public static class View$OnClickListenerC0591a implements View.OnClickListener {

        /* renamed from: a */
        public final View f2936a;

        /* renamed from: b */
        public final String f2937b;

        /* renamed from: c */
        public Method f2938c;

        /* renamed from: d */
        public Context f2939d;

        public View$OnClickListenerC0591a(View view, String str) {
            this.f2936a = view;
            this.f2937b = str;
        }

        /* renamed from: a */
        public final void m36829a(Context context) {
            int id;
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f2937b, View.class)) != null) {
                        this.f2938c = method;
                        this.f2939d = context;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f2936a.getId() == -1) {
                str = "";
            } else {
                str = " with id '" + this.f2936a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f2937b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f2936a.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f2938c == null) {
                m36829a(this.f2936a.getContext());
            }
            try {
                this.f2938c.invoke(this.f2939d, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (((p012b.p016b.p024p.C0625d) r6).m36697b() != r11) goto L_0x006f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Context m36849a(android.content.Context r6, android.util.AttributeSet r7, boolean r8, boolean r9) {
        /*
            r0 = r6
            r1 = r7
            int[] r2 = p012b.p016b.C0583j.View
            r3 = 0
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001c
            r0 = r7
            int r1 = p012b.p016b.C0583j.View_android_theme
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
            int r1 = p012b.p016b.C0583j.View_theme
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
            boolean r0 = r0 instanceof p012b.p016b.p024p.C0625d
            if (r0 == 0) goto L_0x006f
            r0 = r6
            r7 = r0
            r0 = r6
            b.b.p.d r0 = (p012b.p016b.p024p.C0625d) r0
            int r0 = r0.m36697b()
            r1 = r11
            if (r0 == r1) goto L_0x007a
        L_0x006f:
            b.b.p.d r0 = new b.b.p.d
            r1 = r0
            r2 = r6
            r3 = r11
            r1.<init>(r2, r3)
            r7 = r0
        L_0x007a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p017k.C0590e.m36849a(android.content.Context, android.util.AttributeSet, boolean, boolean):android.content.Context");
    }

    /* renamed from: a */
    public View m36848a(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* renamed from: a */
    public final View m36847a(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        Constructor<? extends View> constructor = f2934e.get(str);
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
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f2931b);
            f2934e.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        return (View) constructor2.newInstance(this.f2935a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (r12 != false) goto L_0x0022;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m36844a(android.view.View r6, java.lang.String r7, android.content.Context r8, android.util.AttributeSet r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 785
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p017k.C0590e.m36844a(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean, boolean):android.view.View");
    }

    /* renamed from: a */
    public AppCompatAutoCompleteTextView m36850a(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    /* renamed from: a */
    public final void m36846a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (!(context instanceof ContextWrapper)) {
            return;
        }
        if (Build.VERSION.SDK_INT < 15 || C1002u.m35200v(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2932c);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new View$OnClickListenerC0591a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public final void m36845a(View view, String str) {
        if (view == null) {
            throw new IllegalStateException(C0590e.class.getName() + " asked to inflate view for <" + str + ">, but returned null");
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public final View m36842b(Context context, String str, AttributeSet attributeSet) {
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.f2935a[0] = context;
            this.f2935a[1] = attributeSet;
            if (-1 == str2.indexOf(46)) {
                for (int i = 0; i < f2933d.length; i++) {
                    View a = m36847a(context, str2, f2933d[i]);
                    if (a != null) {
                        Object[] objArr = this.f2935a;
                        objArr[0] = null;
                        objArr[1] = null;
                        return a;
                    }
                }
                Object[] objArr2 = this.f2935a;
                objArr2[0] = null;
                objArr2[1] = null;
                return null;
            }
            View a2 = m36847a(context, str2, (String) null);
            Object[] objArr3 = this.f2935a;
            objArr3[0] = null;
            objArr3[1] = null;
            return a2;
        } catch (Exception e) {
            Object[] objArr4 = this.f2935a;
            objArr4[0] = null;
            objArr4[1] = null;
            return null;
        } catch (Throwable th) {
            Object[] objArr5 = this.f2935a;
            objArr5[0] = null;
            objArr5[1] = null;
            throw th;
        }
    }

    /* renamed from: b */
    public AppCompatButton m36843b(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    /* renamed from: c */
    public AppCompatCheckBox m36841c(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    /* renamed from: d */
    public AppCompatCheckedTextView m36840d(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    /* renamed from: e */
    public AppCompatEditText m36839e(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    /* renamed from: f */
    public AppCompatImageButton m36838f(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    /* renamed from: g */
    public AppCompatImageView m36837g(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    /* renamed from: h */
    public AppCompatMultiAutoCompleteTextView m36836h(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    /* renamed from: i */
    public AppCompatRadioButton m36835i(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    /* renamed from: j */
    public AppCompatRatingBar m36834j(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    /* renamed from: k */
    public AppCompatSeekBar m36833k(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    /* renamed from: l */
    public AppCompatSpinner m36832l(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    /* renamed from: m */
    public AppCompatTextView m36831m(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    /* renamed from: n */
    public AppCompatToggleButton m36830n(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }
}
