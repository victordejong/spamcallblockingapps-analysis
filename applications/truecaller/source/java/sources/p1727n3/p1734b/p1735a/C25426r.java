package p1727n3.p1734b.p1735a;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatTextView;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p1727n3.p1734b.p1743f.C25522j;
import p1727n3.p1788g.C26187h;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b.a.r */
/* loaded from: classes-dex2jar.jar:n3/b/a/r.class */
public class C25426r {

    /* renamed from: b */
    public static final Class<?>[] f70950b = {Context.class, AttributeSet.class};

    /* renamed from: c */
    public static final int[] f70951c = {16843375};

    /* renamed from: d */
    public static final String[] f70952d = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: e */
    public static final C26187h<String, Constructor<? extends View>> f70953e = new C26187h<>();

    /* renamed from: a */
    public final Object[] f70954a = new Object[2];

    /* renamed from: n3.b.a.r$a */
    /* loaded from: classes-dex2jar.jar:n3/b/a/r$a.class */
    public static class View$OnClickListenerC25427a implements View.OnClickListener {

        /* renamed from: a */
        public final View f70955a;

        /* renamed from: b */
        public final String f70956b;

        /* renamed from: c */
        public Method f70957c;

        /* renamed from: d */
        public Context f70958d;

        public View$OnClickListenerC25427a(View view, String str) {
            this.f70955a = view;
            this.f70956b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            Method method;
            if (this.f70957c == null) {
                Context context = this.f70955a.getContext();
                while (true) {
                    Context context2 = context;
                    if (context2 == null) {
                        int id = this.f70955a.getId();
                        if (id == -1) {
                            str = "";
                        } else {
                            StringBuilder m8728C = C22128a.m8728C(" with id '");
                            m8728C.append(this.f70955a.getContext().getResources().getResourceEntryName(id));
                            m8728C.append("'");
                            str = m8728C.toString();
                        }
                        StringBuilder m8728C2 = C22128a.m8728C("Could not find method ");
                        m8728C2.append(this.f70956b);
                        m8728C2.append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                        m8728C2.append(this.f70955a.getClass());
                        m8728C2.append(str);
                        throw new IllegalStateException(m8728C2.toString());
                    }
                    try {
                        if (!context2.isRestricted() && (method = context2.getClass().getMethod(this.f70956b, View.class)) != null) {
                            this.f70957c = method;
                            this.f70958d = context2;
                        }
                    } catch (NoSuchMethodException e) {
                    }
                    context = context2 instanceof ContextWrapper ? ((ContextWrapper) context2).getBaseContext() : null;
                }
            }
            try {
                this.f70957c.invoke(this.f70958d, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    /* renamed from: a */
    public AppCompatAutoCompleteTextView m3584a(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    /* renamed from: b */
    public AppCompatButton m3583b(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    /* renamed from: c */
    public AppCompatCheckBox m3582c(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    /* renamed from: d */
    public C25522j m3581d(Context context, AttributeSet attributeSet) {
        return new C25522j(context, attributeSet);
    }

    /* renamed from: e */
    public AppCompatTextView m3580e(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    /* renamed from: f */
    public View m3579f() {
        return null;
    }

    /* renamed from: g */
    public final View m3578g(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        C26187h<String, Constructor<? extends View>> c26187h = f70953e;
        Constructor<? extends View> orDefault = c26187h.getOrDefault(str, null);
        Constructor<? extends View> constructor = orDefault;
        if (orDefault == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception e) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f70950b);
            c26187h.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.f70954a);
    }

    /* renamed from: h */
    public final void m3577h(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }
}
