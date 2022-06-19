package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.C0083a;
import androidx.appcompat.app.AlertController;
/* renamed from: androidx.appcompat.app.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b.class */
public class DialogInterfaceC0114b extends DialogC0139g implements DialogInterface {

    /* renamed from: a */
    final AlertController f328a = new AlertController(getContext(), this, getWindow());

    /* renamed from: androidx.appcompat.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$a.class */
    public static class C0115a {

        /* renamed from: a */
        private final AlertController.C0101a f329a;

        /* renamed from: b */
        private final int f330b;

        public C0115a(Context context) {
            this(context, DialogInterfaceC0114b.m22233a(context, 0));
        }

        public C0115a(Context context, int i) {
            this.f329a = new AlertController.C0101a(new ContextThemeWrapper(context, DialogInterfaceC0114b.m22233a(context, i)));
            this.f330b = i;
        }

        /* renamed from: a */
        public Context m22232a() {
            return this.f329a.f284a;
        }

        /* renamed from: a */
        public C0115a m22231a(DialogInterface.OnKeyListener onKeyListener) {
            this.f329a.f304u = onKeyListener;
            return this;
        }

        /* renamed from: a */
        public C0115a m22230a(Drawable drawable) {
            this.f329a.f287d = drawable;
            return this;
        }

        /* renamed from: a */
        public C0115a m22229a(View view) {
            this.f329a.f290g = view;
            return this;
        }

        /* renamed from: a */
        public C0115a m22228a(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            this.f329a.f306w = listAdapter;
            this.f329a.f307x = onClickListener;
            this.f329a.f276I = i;
            this.f329a.f275H = true;
            return this;
        }

        /* renamed from: a */
        public C0115a m22227a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f329a.f306w = listAdapter;
            this.f329a.f307x = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C0115a m22226a(CharSequence charSequence) {
            this.f329a.f289f = charSequence;
            return this;
        }

        /* renamed from: b */
        public DialogInterfaceC0114b m22225b() {
            DialogInterfaceC0114b dialogInterfaceC0114b = new DialogInterfaceC0114b(this.f329a.f284a, this.f330b);
            this.f329a.m22244a(dialogInterfaceC0114b.f328a);
            dialogInterfaceC0114b.setCancelable(this.f329a.f301r);
            if (this.f329a.f301r) {
                dialogInterfaceC0114b.setCanceledOnTouchOutside(true);
            }
            dialogInterfaceC0114b.setOnCancelListener(this.f329a.f302s);
            dialogInterfaceC0114b.setOnDismissListener(this.f329a.f303t);
            if (this.f329a.f304u != null) {
                dialogInterfaceC0114b.setOnKeyListener(this.f329a.f304u);
            }
            return dialogInterfaceC0114b;
        }
    }

    protected DialogInterfaceC0114b(Context context, int i) {
        super(context, m22233a(context, i));
    }

    /* renamed from: a */
    static int m22233a(Context context, int i) {
        if (((i >>> 24) & 255) < 1) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0083a.C0084a.alertDialogTheme, typedValue, true);
            i = typedValue.resourceId;
        }
        return i;
    }

    /* renamed from: a */
    public ListView m22234a() {
        return this.f328a.m22257b();
    }

    @Override // androidx.appcompat.app.DialogC0139g, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f328a.m22271a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.f328a.m22269a(i, keyEvent) ? true : super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.f328a.m22255b(i, keyEvent) ? true : super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.DialogC0139g, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f328a.m22258a(charSequence);
    }
}
