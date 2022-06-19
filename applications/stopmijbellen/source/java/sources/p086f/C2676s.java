package p086f;

import android.content.Context;
import android.content.ContextWrapper;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.C0212c0;
import androidx.appcompat.widget.C0215d;
import androidx.appcompat.widget.C0226f;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p226s.C4263g;
/* renamed from: f.s */
/* loaded from: classes-dex2jar.jar:f/s.class */
public class C2676s {

    /* renamed from: b */
    public static final Class<?>[] f9191b = {Context.class, AttributeSet.class};

    /* renamed from: c */
    public static final int[] f9192c = {16843375};

    /* renamed from: d */
    public static final int[] f9193d = {16844160};

    /* renamed from: e */
    public static final int[] f9194e = {16844156};

    /* renamed from: f */
    public static final int[] f9195f = {16844148};

    /* renamed from: g */
    public static final String[] f9196g = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: h */
    public static final C4263g<String, Constructor<? extends View>> f9197h = new C4263g<>();

    /* renamed from: a */
    public final Object[] f9198a = new Object[2];

    /* renamed from: f.s$a */
    /* loaded from: classes-dex2jar.jar:f/s$a.class */
    public static class View$OnClickListenerC2677a implements View.OnClickListener {

        /* renamed from: a */
        public final View f9199a;

        /* renamed from: b */
        public final String f9200b;

        /* renamed from: c */
        public Method f9201c;

        /* renamed from: d */
        public Context f9202d;

        public View$OnClickListenerC2677a(View view, String str) {
            this.f9199a = view;
            this.f9200b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str;
            Method method;
            if (this.f9201c == null) {
                Context context = this.f9199a.getContext();
                while (true) {
                    Context context2 = context;
                    if (context2 == null) {
                        int id = this.f9199a.getId();
                        if (id == -1) {
                            str = "";
                        } else {
                            StringBuilder m8752j = C0082b.m8752j(" with id '");
                            m8752j.append(this.f9199a.getContext().getResources().getResourceEntryName(id));
                            m8752j.append("'");
                            str = m8752j.toString();
                        }
                        StringBuilder m8752j2 = C0082b.m8752j("Could not find method ");
                        m8752j2.append(this.f9200b);
                        m8752j2.append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                        m8752j2.append(this.f9199a.getClass());
                        m8752j2.append(str);
                        throw new IllegalStateException(m8752j2.toString());
                    }
                    try {
                        if (!context2.isRestricted() && (method = context2.getClass().getMethod(this.f9200b, View.class)) != null) {
                            this.f9201c = method;
                            this.f9202d = context2;
                        }
                    } catch (NoSuchMethodException e) {
                    }
                    context = context2 instanceof ContextWrapper ? ((ContextWrapper) context2).getBaseContext() : null;
                }
            }
            try {
                this.f9201c.invoke(this.f9202d, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    /* renamed from: a */
    public C0215d mo3295a(Context context, AttributeSet attributeSet) {
        return new C0215d(context, attributeSet);
    }

    /* renamed from: b */
    public C0226f mo3294b(Context context, AttributeSet attributeSet) {
        return new C0226f(context, attributeSet);
    }

    /* renamed from: c */
    public AppCompatCheckBox mo3293c(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    /* renamed from: d */
    public AppCompatRadioButton mo3292d(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    /* renamed from: e */
    public C0212c0 mo3291e(Context context, AttributeSet attributeSet) {
        return new C0212c0(context, attributeSet);
    }

    /* renamed from: f */
    public final View m3290f(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        C4263g<String, Constructor<? extends View>> c4263g = f9197h;
        Constructor<? extends View> orDefault = c4263g.getOrDefault(str, null);
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
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f9191b);
            c4263g.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.f9198a);
    }

    /* renamed from: g */
    public final void m3289g(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }
}
