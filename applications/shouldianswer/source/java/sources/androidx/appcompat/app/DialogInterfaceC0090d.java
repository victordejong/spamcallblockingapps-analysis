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
import androidx.appcompat.C0051a;
import androidx.appcompat.app.AlertController;
/* renamed from: androidx.appcompat.app.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/d.class */
public class DialogInterfaceC0090d extends DialogC0116i implements DialogInterface {

    /* renamed from: a */
    final AlertController f259a = new AlertController(getContext(), this, getWindow());

    /* renamed from: androidx.appcompat.app.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/d$a.class */
    public static class C0091a {

        /* renamed from: a */
        private final AlertController.C0069a f260a;

        /* renamed from: b */
        private final int f261b;

        public C0091a(Context context) {
            this(context, DialogInterfaceC0090d.m7930a(context, 0));
        }

        public C0091a(Context context, int i) {
            this.f260a = new AlertController.C0069a(new ContextThemeWrapper(context, DialogInterfaceC0090d.m7930a(context, i)));
            this.f261b = i;
        }

        /* renamed from: a */
        public Context m7929a() {
            return this.f260a.f194a;
        }

        /* renamed from: a */
        public C0091a m7928a(int i) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f199f = c0069a.f194a.getText(i);
            return this;
        }

        /* renamed from: a */
        public C0091a m7927a(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f205l = c0069a.f194a.getText(i);
            this.f260a.f207n = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C0091a m7926a(DialogInterface.OnCancelListener onCancelListener) {
            this.f260a.f212s = onCancelListener;
            return this;
        }

        /* renamed from: a */
        public C0091a m7925a(DialogInterface.OnKeyListener onKeyListener) {
            this.f260a.f214u = onKeyListener;
            return this;
        }

        /* renamed from: a */
        public C0091a m7924a(Drawable drawable) {
            this.f260a.f197d = drawable;
            return this;
        }

        /* renamed from: a */
        public C0091a m7923a(View view) {
            this.f260a.f200g = view;
            return this;
        }

        /* renamed from: a */
        public C0091a m7922a(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f216w = listAdapter;
            c0069a.f217x = onClickListener;
            c0069a.f186I = i;
            c0069a.f185H = true;
            return this;
        }

        /* renamed from: a */
        public C0091a m7921a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f216w = listAdapter;
            c0069a.f217x = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C0091a m7920a(CharSequence charSequence) {
            this.f260a.f199f = charSequence;
            return this;
        }

        /* renamed from: a */
        public C0091a m7919a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f202i = charSequence;
            c0069a.f204k = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C0091a m7918a(boolean z) {
            this.f260a.f211r = z;
            return this;
        }

        /* renamed from: a */
        public C0091a m7917a(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f215v = charSequenceArr;
            c0069a.f217x = onClickListener;
            return this;
        }

        /* renamed from: b */
        public C0091a m7915b(int i) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f201h = c0069a.f194a.getText(i);
            return this;
        }

        /* renamed from: b */
        public C0091a m7914b(View view) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f219z = view;
            c0069a.f218y = 0;
            c0069a.f182E = false;
            return this;
        }

        /* renamed from: b */
        public C0091a m7913b(CharSequence charSequence) {
            this.f260a.f201h = charSequence;
            return this;
        }

        /* renamed from: b */
        public C0091a m7912b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0069a c0069a = this.f260a;
            c0069a.f205l = charSequence;
            c0069a.f207n = onClickListener;
            return this;
        }

        /* renamed from: b */
        public DialogInterfaceC0090d m7916b() {
            DialogInterfaceC0090d dialogInterfaceC0090d = new DialogInterfaceC0090d(this.f260a.f194a, this.f261b);
            this.f260a.m7952a(dialogInterfaceC0090d.f259a);
            dialogInterfaceC0090d.setCancelable(this.f260a.f211r);
            if (this.f260a.f211r) {
                dialogInterfaceC0090d.setCanceledOnTouchOutside(true);
            }
            dialogInterfaceC0090d.setOnCancelListener(this.f260a.f212s);
            dialogInterfaceC0090d.setOnDismissListener(this.f260a.f213t);
            if (this.f260a.f214u != null) {
                dialogInterfaceC0090d.setOnKeyListener(this.f260a.f214u);
            }
            return dialogInterfaceC0090d;
        }

        /* renamed from: c */
        public C0091a m7910c(int i) {
            this.f260a.f196c = i;
            return this;
        }

        /* renamed from: c */
        public DialogInterfaceC0090d m7911c() {
            DialogInterfaceC0090d m7916b = m7916b();
            m7916b.show();
            return m7916b;
        }
    }

    protected DialogInterfaceC0090d(Context context, int i) {
        super(context, m7930a(context, i));
    }

    /* renamed from: a */
    static int m7930a(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0051a.C0052a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: a */
    public ListView m7931a() {
        return this.f259a.m7965b();
    }

    @Override // androidx.appcompat.app.DialogC0116i, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f259a.m7979a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f259a.m7977a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f259a.m7963b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.DialogC0116i, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f259a.m7966a(charSequence);
    }
}
