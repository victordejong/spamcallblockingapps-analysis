package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
public class a$a {

    /* renamed from: a */
    private final AlertController.C0075f f268a;

    /* renamed from: b */
    private final int f269b;

    public a$a(Context context) {
        this(context, a.h(context, 0));
    }

    public a$a(Context context, int i) {
        this.f268a = new AlertController.C0075f(new ContextThemeWrapper(context, a.h(context, i)));
        this.f269b = i;
    }

    /* renamed from: a */
    public a m14934a() {
        a aVar = new a(this.f268a.f201a, this.f269b);
        this.f268a.m14955a(aVar.d);
        aVar.setCancelable(this.f268a.f218r);
        if (this.f268a.f218r) {
            aVar.setCanceledOnTouchOutside(true);
        }
        aVar.setOnCancelListener(this.f268a.f219s);
        aVar.setOnDismissListener(this.f268a.f220t);
        DialogInterface.OnKeyListener onKeyListener = this.f268a.f221u;
        if (onKeyListener != null) {
            aVar.setOnKeyListener(onKeyListener);
        }
        return aVar;
    }

    /* renamed from: b */
    public Context m14933b() {
        return this.f268a.f201a;
    }

    /* renamed from: c */
    public a$a m14932c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0075f fVar = this.f268a;
        fVar.f223w = listAdapter;
        fVar.f224x = onClickListener;
        return this;
    }

    /* renamed from: d */
    public a$a m14931d(View view) {
        this.f268a.f207g = view;
        return this;
    }

    /* renamed from: e */
    public a$a m14930e(Drawable drawable) {
        this.f268a.f204d = drawable;
        return this;
    }

    /* renamed from: f */
    public a$a m14929f(int i) {
        AlertController.C0075f fVar = this.f268a;
        fVar.f208h = fVar.f201a.getText(i);
        return this;
    }

    /* renamed from: g */
    public a$a m14928g(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0075f fVar = this.f268a;
        fVar.f212l = fVar.f201a.getText(i);
        this.f268a.f214n = onClickListener;
        return this;
    }

    /* renamed from: h */
    public a$a m14927h(DialogInterface.OnKeyListener onKeyListener) {
        this.f268a.f221u = onKeyListener;
        return this;
    }

    /* renamed from: i */
    public a$a m14926i(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0075f fVar = this.f268a;
        fVar.f209i = fVar.f201a.getText(i);
        this.f268a.f211k = onClickListener;
        return this;
    }

    /* renamed from: j */
    public a$a m14925j(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0075f fVar = this.f268a;
        fVar.f223w = listAdapter;
        fVar.f224x = onClickListener;
        fVar.f194I = i;
        fVar.f193H = true;
        return this;
    }

    /* renamed from: k */
    public a$a m14924k(int i) {
        AlertController.C0075f fVar = this.f268a;
        fVar.f206f = fVar.f201a.getText(i);
        return this;
    }

    /* renamed from: l */
    public a$a m14923l(CharSequence charSequence) {
        this.f268a.f206f = charSequence;
        return this;
    }
}
