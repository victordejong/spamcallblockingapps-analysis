package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
/* renamed from: j.a.c0.h.a0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/a0.class */
public class C12140a0 {

    /* renamed from: a */
    public static volatile C12140a0 f27278a;

    /* renamed from: j.a.c0.h.a0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/a0$a.class */
    public interface AbstractC12141a {
        /* renamed from: a */
        void mo7037a(AbstractC12142b bVar);

        /* renamed from: b */
        void mo7036b(AbstractC12142b bVar);

        /* renamed from: c */
        void mo7035c(int i);

        /* renamed from: m */
        boolean mo7034m();
    }

    /* renamed from: j.a.c0.h.a0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/a0$b.class */
    public interface AbstractC12142b {
        /* renamed from: a */
        void mo7033a(boolean z);
    }

    /* renamed from: a */
    public static C12140a0 m7041a() {
        if (f27278a == null) {
            synchronized (C12140a0.class) {
                try {
                    if (f27278a == null) {
                        f27278a = new C12140a0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f27278a;
    }

    /* renamed from: c */
    public static void m7038c(@NonNull Context context, @NonNull View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    /* renamed from: a */
    public void m7040a(@NonNull Context context, @NonNull View view) {
        C12151d.m7000b(context);
        C12151d.m7000b(view);
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: b */
    public void m7039b(@NonNull Context context, @NonNull View view) {
        C12151d.m7000b(context);
        C12151d.m7000b(view);
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            view.requestFocus();
            inputMethodManager.showSoftInput(view, 0);
        }
    }
}
