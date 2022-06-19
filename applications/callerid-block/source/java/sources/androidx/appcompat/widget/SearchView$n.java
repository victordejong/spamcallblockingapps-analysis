package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.os.Build;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$n.class */
class SearchView$n {

    /* renamed from: a */
    private Method f472a;

    /* renamed from: b */
    private Method f473b;

    /* renamed from: c */
    private Method f474c;

    @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
    SearchView$n() {
        this.f472a = null;
        this.f473b = null;
        this.f474c = null;
        m14719d();
        try {
            Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
            this.f472a = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
        }
        try {
            Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
            this.f473b = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (NoSuchMethodException e2) {
        }
        try {
            Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
            this.f474c = method;
            method.setAccessible(true);
        } catch (NoSuchMethodException e3) {
        }
    }

    /* renamed from: d */
    private static void m14719d() {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
    }

    /* renamed from: a */
    void m14722a(AutoCompleteTextView autoCompleteTextView) {
        m14719d();
        Method method = this.f473b;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: b */
    void m14721b(AutoCompleteTextView autoCompleteTextView) {
        m14719d();
        Method method = this.f472a;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    void m14720c(AutoCompleteTextView autoCompleteTextView) {
        m14719d();
        Method method = this.f474c;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, Boolean.TRUE);
            } catch (Exception e) {
            }
        }
    }
}
