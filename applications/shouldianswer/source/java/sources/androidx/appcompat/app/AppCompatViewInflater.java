package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0330d;
import androidx.appcompat.widget.C0332f;
import androidx.appcompat.widget.C0333g;
import androidx.appcompat.widget.C0337j;
import androidx.appcompat.widget.C0340m;
import androidx.appcompat.widget.C0341n;
import androidx.appcompat.widget.C0344q;
import androidx.appcompat.widget.C0345r;
import androidx.appcompat.widget.C0346s;
import androidx.appcompat.widget.C0353x;
import androidx.core.p023g.C0552u;
import androidx.p014c.C0374a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatViewInflater.class */
public class AppCompatViewInflater {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {16843375};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new C0374a();

    /* renamed from: androidx.appcompat.app.AppCompatViewInflater$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatViewInflater$a.class */
    public static class View$OnClickListenerC0077a implements View.OnClickListener {

        /* renamed from: a */
        private final View f233a;

        /* renamed from: b */
        private final String f234b;

        /* renamed from: c */
        private Method f235c;

        /* renamed from: d */
        private Context f236d;

        public View$OnClickListenerC0077a(View view, String str) {
            this.f233a = view;
            this.f234b = str;
        }

        /* renamed from: a */
        private void m7949a(Context context, String str) {
            int id;
            String str2;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f234b, View.class)) != null) {
                        this.f235c = method;
                        this.f236d = context;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            if (this.f233a.getId() == -1) {
                str2 = "";
            } else {
                str2 = " with id '" + this.f233a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.f234b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f233a.getClass() + str2);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f235c == null) {
                m7949a(this.f233a.getContext(), this.f234b);
            }
            try {
                this.f235c.invoke(this.f236d, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT >= 15 && !C0552u.m6291E(view)) {
                return;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new View$OnClickListenerC0077a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) {
        String str3;
        Constructor<? extends View> constructor = sConstructorMap.get(str);
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
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            sConstructorMap.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        return constructor2.newInstance(this.mConstructorArgs);
    }

    /* JADX WARN: Finally extract failed */
    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.mConstructorArgs[0] = context;
            this.mConstructorArgs[1] = attributeSet;
            if (-1 != str2.indexOf(46)) {
                View createViewByPrefix = createViewByPrefix(context, str2, null);
                Object[] objArr = this.mConstructorArgs;
                objArr[0] = null;
                objArr[1] = null;
                return createViewByPrefix;
            }
            for (int i = 0; i < sClassPrefixList.length; i++) {
                View createViewByPrefix2 = createViewByPrefix(context, str2, sClassPrefixList[i]);
                if (createViewByPrefix2 != null) {
                    Object[] objArr2 = this.mConstructorArgs;
                    objArr2[0] = null;
                    objArr2[1] = null;
                    return createViewByPrefix2;
                }
            }
            Object[] objArr3 = this.mConstructorArgs;
            objArr3[0] = null;
            objArr3[1] = null;
            return null;
        } catch (Exception e) {
            Object[] objArr4 = this.mConstructorArgs;
            objArr4[0] = null;
            objArr4[1] = null;
            return null;
        } catch (Throwable th) {
            Object[] objArr5 = this.mConstructorArgs;
            objArr5[0] = null;
            objArr5[1] = null;
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006c, code lost:
        if (((androidx.appcompat.view.C0158d) r6).m7652a() != r11) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.Context themifyContext(android.content.Context r6, android.util.AttributeSet r7, boolean r8, boolean r9) {
        /*
            r0 = r6
            r1 = r7
            int[] r2 = androidx.appcompat.C0051a.C0061j.View
            r3 = 0
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L1c
            r0 = r7
            int r1 = androidx.appcompat.C0051a.C0061j.View_android_theme
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
            int r1 = androidx.appcompat.C0051a.C0061j.View_theme
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
            boolean r0 = r0 instanceof androidx.appcompat.view.C0158d
            if (r0 == 0) goto L6f
            r0 = r6
            r7 = r0
            r0 = r6
            androidx.appcompat.view.d r0 = (androidx.appcompat.view.C0158d) r0
            int r0 = r0.m7652a()
            r1 = r11
            if (r0 == r1) goto L7a
        L6f:
            androidx.appcompat.view.d r0 = new androidx.appcompat.view.d
            r1 = r0
            r2 = r6
            r3 = r11
            r1.<init>(r2, r3)
            r7 = r0
        L7a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatViewInflater.themifyContext(android.content.Context, android.util.AttributeSet, boolean, boolean):android.content.Context");
    }

    private void verifyNotNull(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    protected C0330d createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C0330d(context, attributeSet);
    }

    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected C0332f createCheckBox(Context context, AttributeSet attributeSet) {
        return new C0332f(context, attributeSet);
    }

    protected C0333g createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new C0333g(context, attributeSet);
    }

    protected C0337j createEditText(Context context, AttributeSet attributeSet) {
        return new C0337j(context, attributeSet);
    }

    protected AppCompatImageButton createImageButton(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    protected C0340m createImageView(Context context, AttributeSet attributeSet) {
        return new C0340m(context, attributeSet);
    }

    protected C0341n createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C0341n(context, attributeSet);
    }

    protected C0344q createRadioButton(Context context, AttributeSet attributeSet) {
        return new C0344q(context, attributeSet);
    }

    protected C0345r createRatingBar(Context context, AttributeSet attributeSet) {
        return new C0345r(context, attributeSet);
    }

    protected C0346s createSeekBar(Context context, AttributeSet attributeSet) {
        return new C0346s(context, attributeSet);
    }

    protected AppCompatSpinner createSpinner(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected C0353x createToggleButton(Context context, AttributeSet attributeSet) {
        return new C0353x(context, attributeSet);
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (r12 != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View createView(android.view.View r6, java.lang.String r7, android.content.Context r8, android.util.AttributeSet r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatViewInflater.createView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean, boolean):android.view.View");
    }
}
