package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0346e;
import androidx.appcompat.widget.C0348g;
import androidx.appcompat.widget.C0354l;
import androidx.appcompat.widget.C0357o;
import androidx.appcompat.widget.C0358p;
import androidx.appcompat.widget.C0359q;
import androidx.appcompat.widget.C0366v;
import androidx.core.p026h.C0595u;
import androidx.p013b.C0373a;
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
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new C0373a();

    /* renamed from: androidx.appcompat.app.AppCompatViewInflater$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatViewInflater$a.class */
    public static class View$OnClickListenerC0109a implements View.OnClickListener {

        /* renamed from: a */
        private final View f323a;

        /* renamed from: b */
        private final String f324b;

        /* renamed from: c */
        private Method f325c;

        /* renamed from: d */
        private Context f326d;

        public View$OnClickListenerC0109a(View view, String str) {
            this.f323a = view;
            this.f324b = str;
        }

        /* renamed from: a */
        private void m22241a(Context context, String str) {
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f324b, View.class)) != null) {
                        this.f325c = method;
                        this.f326d = context;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f323a.getId();
            throw new IllegalStateException("Could not find method " + this.f324b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f323a.getClass() + (id == -1 ? "" : " with id '" + this.f323a.getContext().getResources().getResourceEntryName(id) + "'"));
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f325c == null) {
                m22241a(this.f323a.getContext(), this.f324b);
            }
            try {
                this.f325c.invoke(this.f326d, view);
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
            if (Build.VERSION.SDK_INT >= 15 && !C0595u.m20369C(view)) {
                return;
            }
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new View$OnClickListenerC0109a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) {
        View view;
        String str3;
        Constructor<? extends View> constructor = sConstructorMap.get(str);
        Constructor<? extends View> constructor2 = constructor;
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception e) {
                    view = null;
                }
            } else {
                str3 = str;
            }
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            sConstructorMap.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        view = constructor2.newInstance(this.mConstructorArgs);
        return view;
    }

    /* JADX WARN: Finally extract failed */
    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        View view;
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.mConstructorArgs[0] = context;
            this.mConstructorArgs[1] = attributeSet;
            if (-1 == str2.indexOf(46)) {
                int i = 0;
                while (true) {
                    if (i >= sClassPrefixList.length) {
                        this.mConstructorArgs[0] = null;
                        this.mConstructorArgs[1] = null;
                        view = null;
                        break;
                    }
                    View createViewByPrefix = createViewByPrefix(context, str2, sClassPrefixList[i]);
                    if (createViewByPrefix != null) {
                        this.mConstructorArgs[0] = null;
                        this.mConstructorArgs[1] = null;
                        view = createViewByPrefix;
                        break;
                    }
                    i++;
                }
            } else {
                view = createViewByPrefix(context, str2, null);
                this.mConstructorArgs[0] = null;
                this.mConstructorArgs[1] = null;
            }
        } catch (Exception e) {
            this.mConstructorArgs[0] = null;
            this.mConstructorArgs[1] = null;
            view = null;
        } catch (Throwable th) {
            this.mConstructorArgs[0] = null;
            this.mConstructorArgs[1] = null;
            throw th;
        }
        return view;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0066, code lost:
        if (((androidx.appcompat.view.C0175d) r6).m21983a() != r11) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.Context themifyContext(android.content.Context r6, android.util.AttributeSet r7, boolean r8, boolean r9) {
        /*
            r0 = r6
            r1 = r7
            int[] r2 = androidx.appcompat.C0083a.C0093j.View
            r3 = 0
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L76
            r0 = r7
            int r1 = androidx.appcompat.C0083a.C0093j.View_android_theme
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
        L19:
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L49
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L49
            r0 = r7
            int r1 = androidx.appcompat.C0083a.C0093j.View_theme
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r10 = r0
            r0 = r10
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L49
            java.lang.String r0 = "AppCompatViewInflater"
            java.lang.String r1 = "app:theme is now deprecated. Please move to using android:theme instead."
            int r0 = android.util.Log.i(r0, r1)
            r0 = r10
            r11 = r0
        L49:
            r0 = r7
            r0.recycle()
            r0 = r6
            r7 = r0
            r0 = r11
            if (r0 == 0) goto L74
            r0 = r6
            boolean r0 = r0 instanceof androidx.appcompat.view.C0175d
            if (r0 == 0) goto L69
            r0 = r6
            r7 = r0
            r0 = r6
            androidx.appcompat.view.d r0 = (androidx.appcompat.view.C0175d) r0
            int r0 = r0.m21983a()
            r1 = r11
            if (r0 == r1) goto L74
        L69:
            androidx.appcompat.view.d r0 = new androidx.appcompat.view.d
            r1 = r0
            r2 = r6
            r3 = r11
            r1.<init>(r2, r3)
            r7 = r0
        L74:
            r0 = r7
            return r0
        L76:
            r0 = 0
            r10 = r0
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatViewInflater.themifyContext(android.content.Context, android.util.AttributeSet, boolean, boolean):android.content.Context");
    }

    private void verifyNotNull(View view, String str) {
        if (view == null) {
            throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
        }
    }

    protected C0346e createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C0346e(context, attributeSet);
    }

    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    protected C0348g createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new C0348g(context, attributeSet);
    }

    protected AppCompatEditText createEditText(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    protected AppCompatImageButton createImageButton(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected C0354l createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new C0354l(context, attributeSet);
    }

    protected C0357o createRadioButton(Context context, AttributeSet attributeSet) {
        return new C0357o(context, attributeSet);
    }

    protected C0358p createRatingBar(Context context, AttributeSet attributeSet) {
        return new C0358p(context, attributeSet);
    }

    protected C0359q createSeekBar(Context context, AttributeSet attributeSet) {
        return new C0359q(context, attributeSet);
    }

    protected AppCompatSpinner createSpinner(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected C0366v createToggleButton(Context context, AttributeSet attributeSet) {
        return new C0366v(context, attributeSet);
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        if (r12 != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View createView(android.view.View r6, java.lang.String r7, android.content.Context r8, android.util.AttributeSet r9, boolean r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 792
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatViewInflater.createView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean, boolean):android.view.View");
    }
}
