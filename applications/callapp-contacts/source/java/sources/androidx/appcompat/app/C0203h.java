package androidx.appcompat.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p023b.C0441g;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.app.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
public class C0203h {

    /* renamed from: a */
    private static final Class<?>[] f523a = {Context.class, AttributeSet.class};

    /* renamed from: b */
    private static final int[] f524b = {16843375};

    /* renamed from: c */
    private static final String[] f525c = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: d */
    private static final C0441g<String, Constructor<? extends View>> f526d = new C0441g<>();

    /* renamed from: e */
    private final Object[] f527e = new Object[2];

    /* renamed from: androidx.appcompat.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$a.class */
    public static final class View$OnClickListenerC0204a implements View.OnClickListener {

        /* renamed from: a */
        private final View f528a;

        /* renamed from: b */
        private final String f529b;

        /* renamed from: c */
        private Method f530c;

        /* renamed from: d */
        private Context f531d;

        public View$OnClickListenerC0204a(View view, String str) {
            this.f528a = view;
            this.f529b = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int id;
            String str;
            Method method;
            if (this.f530c == null) {
                Context context = this.f528a.getContext();
                while (true) {
                    Context context2 = context;
                    if (context2 == null) {
                        if (this.f528a.getId() == -1) {
                            str = "";
                        } else {
                            str = " with id '" + this.f528a.getContext().getResources().getResourceEntryName(id) + "'";
                        }
                        throw new IllegalStateException("Could not find method " + this.f529b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f528a.getClass() + str);
                    }
                    try {
                        if (!context2.isRestricted() && (method = context2.getClass().getMethod(this.f529b, View.class)) != null) {
                            this.f530c = method;
                            this.f531d = context2;
                        }
                    } catch (NoSuchMethodException e) {
                    }
                    context = context2 instanceof ContextWrapper ? ((ContextWrapper) context2).getBaseContext() : null;
                }
            }
            try {
                this.f530c.invoke(this.f531d, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private View m46265a(Context context, String str, AttributeSet attributeSet) {
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.f527e;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str2.indexOf(46)) {
                View m46264a = m46264a(context, str2, (String) null);
                Object[] objArr2 = this.f527e;
                objArr2[0] = null;
                objArr2[1] = null;
                return m46264a;
            }
            int i = 0;
            while (true) {
                String[] strArr = f525c;
                if (i >= strArr.length) {
                    Object[] objArr3 = this.f527e;
                    objArr3[0] = null;
                    objArr3[1] = null;
                    return null;
                }
                View m46264a2 = m46264a(context, str2, strArr[i]);
                if (m46264a2 != null) {
                    Object[] objArr4 = this.f527e;
                    objArr4[0] = null;
                    objArr4[1] = null;
                    return m46264a2;
                }
                i++;
            }
        } catch (Exception e) {
            Object[] objArr5 = this.f527e;
            objArr5[0] = null;
            objArr5[1] = null;
            return null;
        } catch (Throwable th) {
            Object[] objArr6 = this.f527e;
            objArr6[0] = null;
            objArr6[1] = null;
            throw th;
        }
    }

    /* renamed from: a */
    private View m46264a(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        C0441g<String, Constructor<? extends View>> c0441g = f526d;
        Constructor<? extends View> constructor = c0441g.get(str);
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
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f523a);
            c0441g.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        return constructor2.newInstance(this.f527e);
    }

    /* renamed from: a */
    private void m46263a(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
        if (((androidx.appcompat.view.C0244d) r7).f693a != r16) goto L21;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m46262a(android.view.View r7, java.lang.String r8, android.content.Context r9, android.util.AttributeSet r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0203h.m46262a(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean):android.view.View");
    }

    /* renamed from: a */
    protected AppCompatTextView mo9928a(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    /* renamed from: b */
    protected AppCompatButton mo9927b(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    /* renamed from: c */
    protected AppCompatCheckBox mo9926c(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    /* renamed from: d */
    protected AppCompatRadioButton mo9925d(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    /* renamed from: e */
    protected AppCompatAutoCompleteTextView mo9924e(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }
}
