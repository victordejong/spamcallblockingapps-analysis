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
import androidx.b.g;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?>[] f657a = {Context.class, AttributeSet.class};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f658b = {16843375};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f659c = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: d  reason: collision with root package name */
    private static final g<String, Constructor<? extends View>> f660d = new g<>();
    private final Object[] e = new Object[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h$a.class */
    public static final class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final View f661a;

        /* renamed from: b  reason: collision with root package name */
        private final String f662b;

        /* renamed from: c  reason: collision with root package name */
        private Method f663c;

        /* renamed from: d  reason: collision with root package name */
        private Context f664d;

        public a(View view, String str) {
            this.f661a = view;
            this.f662b = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int id;
            String str;
            Method method;
            if (this.f663c == null) {
                Context context = this.f661a.getContext();
                while (context != null) {
                    try {
                        if (!context.isRestricted() && (method = context.getClass().getMethod(this.f662b, View.class)) != null) {
                            this.f663c = method;
                            this.f664d = context;
                        }
                    } catch (NoSuchMethodException e) {
                    }
                    context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
                }
                if (this.f661a.getId() == -1) {
                    str = "";
                } else {
                    str = " with id '" + this.f661a.getContext().getResources().getResourceEntryName(id) + "'";
                }
                throw new IllegalStateException("Could not find method " + this.f662b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f661a.getClass() + str);
            }
            try {
                this.f663c.invoke(this.f664d, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    private View a(Context context, String str, AttributeSet attributeSet) {
        String str2 = str;
        if (str.equals("view")) {
            str2 = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.e;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 == str2.indexOf(46)) {
                int i = 0;
                while (true) {
                    String[] strArr = f659c;
                    if (i < strArr.length) {
                        View a2 = a(context, str2, strArr[i]);
                        if (a2 != null) {
                            Object[] objArr2 = this.e;
                            objArr2[0] = null;
                            objArr2[1] = null;
                            return a2;
                        }
                        i++;
                    } else {
                        Object[] objArr3 = this.e;
                        objArr3[0] = null;
                        objArr3[1] = null;
                        return null;
                    }
                }
            } else {
                View a3 = a(context, str2, (String) null);
                Object[] objArr4 = this.e;
                objArr4[0] = null;
                objArr4[1] = null;
                return a3;
            }
        } catch (Exception e) {
            Object[] objArr5 = this.e;
            objArr5[0] = null;
            objArr5[1] = null;
            return null;
        } catch (Throwable th) {
            Object[] objArr6 = this.e;
            objArr6[0] = null;
            objArr6[1] = null;
            throw th;
        }
    }

    private View a(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        g<String, Constructor<? extends View>> gVar = f660d;
        Constructor<? extends View> constructor = gVar.get(str);
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
            constructor2 = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f657a);
            gVar.put(str, constructor2);
        }
        constructor2.setAccessible(true);
        return (View) constructor2.newInstance(this.e);
    }

    private void a(View view, String str) {
        if (view == null) {
            throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
        if (((androidx.appcompat.view.d) r7).f732a != r16) goto L_0x006d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View a(android.view.View r7, java.lang.String r8, android.content.Context r9, android.util.AttributeSet r10, boolean r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.a(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet, boolean, boolean, boolean):android.view.View");
    }

    protected AppCompatTextView a(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected AppCompatButton b(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected AppCompatCheckBox c(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    protected AppCompatRadioButton d(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    protected AppCompatAutoCompleteTextView e(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }
}
