package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;
import p020b.p021a.C1423a;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public class DialogInterfaceC0146a extends DialogC0150d implements DialogInterface {

    /* renamed from: f */
    final AlertController f428f = new AlertController(getContext(), this, getWindow());

    /* renamed from: androidx.appcompat.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a$a.class */
    public static class C0147a {

        /* renamed from: a */
        private final AlertController.C0112f f429a;

        /* renamed from: b */
        private final int f430b;

        public C0147a(Context context) {
            this(context, DialogInterfaceC0146a.m35575i(context, 0));
        }

        public C0147a(Context context, int i) {
            this.f429a = new AlertController.C0112f(new ContextThemeWrapper(context, DialogInterfaceC0146a.m35575i(context, i)));
            this.f430b = i;
        }

        /* renamed from: a */
        public DialogInterfaceC0146a m35574a() {
            DialogInterfaceC0146a dialogInterfaceC0146a = new DialogInterfaceC0146a(this.f429a.f285a, this.f430b);
            this.f429a.m35673a(dialogInterfaceC0146a.f428f);
            dialogInterfaceC0146a.setCancelable(this.f429a.f302r);
            if (this.f429a.f302r) {
                dialogInterfaceC0146a.setCanceledOnTouchOutside(true);
            }
            dialogInterfaceC0146a.setOnCancelListener(this.f429a.f303s);
            dialogInterfaceC0146a.setOnDismissListener(this.f429a.f304t);
            DialogInterface.OnKeyListener onKeyListener = this.f429a.f305u;
            if (onKeyListener != null) {
                dialogInterfaceC0146a.setOnKeyListener(onKeyListener);
            }
            return dialogInterfaceC0146a;
        }

        /* renamed from: b */
        public Context m35573b() {
            return this.f429a.f285a;
        }

        /* renamed from: c */
        public C0147a m35572c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f307w = listAdapter;
            c0112f.f308x = onClickListener;
            return this;
        }

        /* renamed from: d */
        public C0147a m35571d(boolean z) {
            this.f429a.f302r = z;
            return this;
        }

        /* renamed from: e */
        public C0147a m35570e(View view) {
            this.f429a.f291g = view;
            return this;
        }

        /* renamed from: f */
        public C0147a m35569f(Drawable drawable) {
            this.f429a.f288d = drawable;
            return this;
        }

        /* renamed from: g */
        public C0147a m35568g(int i) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f292h = c0112f.f285a.getText(i);
            return this;
        }

        /* renamed from: h */
        public C0147a m35567h(CharSequence charSequence) {
            this.f429a.f292h = charSequence;
            return this;
        }

        /* renamed from: i */
        public C0147a m35566i(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f296l = c0112f.f285a.getText(i);
            this.f429a.f298n = onClickListener;
            return this;
        }

        /* renamed from: j */
        public C0147a m35565j(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f296l = charSequence;
            c0112f.f298n = onClickListener;
            return this;
        }

        /* renamed from: k */
        public C0147a m35564k(DialogInterface.OnDismissListener onDismissListener) {
            this.f429a.f304t = onDismissListener;
            return this;
        }

        /* renamed from: l */
        public C0147a m35563l(DialogInterface.OnKeyListener onKeyListener) {
            this.f429a.f305u = onKeyListener;
            return this;
        }

        /* renamed from: m */
        public C0147a m35562m(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f293i = c0112f.f285a.getText(i);
            this.f429a.f295k = onClickListener;
            return this;
        }

        /* renamed from: n */
        public C0147a m35561n(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f293i = charSequence;
            c0112f.f295k = onClickListener;
            return this;
        }

        /* renamed from: o */
        public C0147a m35560o(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f307w = listAdapter;
            c0112f.f308x = onClickListener;
            c0112f.f277I = i;
            c0112f.f276H = true;
            return this;
        }

        /* renamed from: p */
        public C0147a m35559p(int i) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f290f = c0112f.f285a.getText(i);
            return this;
        }

        /* renamed from: q */
        public C0147a m35558q(CharSequence charSequence) {
            this.f429a.f290f = charSequence;
            return this;
        }

        /* renamed from: r */
        public C0147a m35557r(View view) {
            AlertController.C0112f c0112f = this.f429a;
            c0112f.f310z = view;
            c0112f.f309y = 0;
            c0112f.f273E = false;
            return this;
        }

        /* renamed from: s */
        public DialogInterfaceC0146a m35556s() {
            DialogInterfaceC0146a m35574a = m35574a();
            m35574a.show();
            return m35574a;
        }
    }

    protected DialogInterfaceC0146a(Context context, int i) {
        super(context, m35575i(context, i));
    }

    /* renamed from: i */
    static int m35575i(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C1423a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: g */
    public Button m35577g(int i) {
        return this.f428f.m35697c(i);
    }

    /* renamed from: h */
    public ListView m35576h() {
        return this.f428f.m35695e();
    }

    @Override // androidx.appcompat.app.DialogC0150d, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f428f.m35694f();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f428f.m35692h(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f428f.m35691i(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.DialogC0150d, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f428f.m35682r(charSequence);
    }
}
