package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.os.Build;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$n.class */
public class SearchView$n {

    /* renamed from: a */
    public Method f600a;

    /* renamed from: b */
    public Method f601b;

    /* renamed from: c */
    public Method f602c;

    @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
    public SearchView$n() {
        this.f600a = null;
        this.f601b = null;
        this.f602c = null;
        m6935d();
        try {
            Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
            this.f600a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
        }
        try {
            Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
            this.f601b = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (NoSuchMethodException e2) {
        }
        try {
            Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
            this.f602c = method;
            method.setAccessible(true);
        } catch (NoSuchMethodException e3) {
        }
    }

    /* renamed from: d */
    public static void m6935d() {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
    }

    /* renamed from: a */
    public void m6938a(AutoCompleteTextView autoCompleteTextView) {
        m6935d();
        Method method = this.f601b;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: b */
    public void m6937b(AutoCompleteTextView autoCompleteTextView) {
        m6935d();
        Method method = this.f600a;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    public void m6936c(AutoCompleteTextView autoCompleteTextView) {
        m6935d();
        Method method = this.f602c;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, Boolean.TRUE);
            } catch (Exception e) {
            }
        }
    }
}
