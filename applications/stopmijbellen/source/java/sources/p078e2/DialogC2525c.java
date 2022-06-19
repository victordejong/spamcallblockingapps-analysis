package p078e2;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import com.afollestad.materialdialogs.internal.MDRootLayout;
/* renamed from: e2.c */
/* loaded from: classes-dex2jar.jar:e2/c.class */
public class DialogC2525c extends Dialog implements DialogInterface.OnShowListener {

    /* renamed from: a */
    public MDRootLayout f8812a;

    /* renamed from: b */
    public DialogInterface.OnShowListener f8813b;

    public DialogC2525c(Context context, int i) {
        super(context, i);
    }

    /* renamed from: a */
    public final void m3485a() {
        super.setOnShowListener(this);
    }

    /* renamed from: b */
    public final void m3484b(View view) {
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public View findViewById(int i) {
        return this.f8812a.findViewById(i);
    }

    @Override // android.app.Dialog
    @Deprecated
    public void setContentView(int i) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }

    @Override // android.app.Dialog
    @Deprecated
    public void setContentView(View view) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }

    @Override // android.app.Dialog
    @Deprecated
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }

    @Override // android.app.Dialog
    public final void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        this.f8813b = onShowListener;
    }
}
