package p131c.p431l.p432a.p442b.p448f.p451c;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import p131c.p431l.p432a.p442b.p445c.C6750f;
/* renamed from: c.l.a.b.f.c.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/f/c/a.class */
public class DialogC6776a extends Dialog implements DialogInterface {

    /* renamed from: a */
    public C6750f f20893a;

    /* renamed from: b */
    public boolean f20894b = true;

    /* renamed from: c.l.a.b.f.c.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/c/a$a.class */
    public static class C6777a {

        /* renamed from: a */
        public final Context f20895a;

        /* renamed from: b */
        public C6750f.C6755e f20896b;

        public C6777a(Context context) {
            this.f20895a = context;
            this.f20896b = new C6750f.C6755e(context);
        }

        /* renamed from: a */
        public C6777a m19837a(int i) {
            this.f20896b.f20809b = (String) this.f20895a.getText(i);
            return this;
        }

        /* renamed from: a */
        public C6777a m19836a(int i, DialogInterface.OnClickListener onClickListener) {
            this.f20896b.f20811d = (String) this.f20895a.getText(i);
            this.f20896b.f20817j = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C6777a m19835a(View view) {
            this.f20896b.f20812e = view;
            return this;
        }

        /* renamed from: a */
        public C6777a m19834a(String str) {
            this.f20896b.f20809b = str;
            return this;
        }

        /* renamed from: a */
        public C6777a m19833a(String str, DialogInterface.OnClickListener onClickListener) {
            C6750f.C6755e eVar = this.f20896b;
            eVar.f20811d = str;
            eVar.f20817j = onClickListener;
            return this;
        }

        /* renamed from: a */
        public C6777a m19832a(boolean z) {
            this.f20896b.f20826s = z;
            return this;
        }

        /* renamed from: a */
        public DialogC6776a m19838a() {
            DialogC6776a aVar = new DialogC6776a(this.f20895a, 2131624362);
            this.f20896b.m19879a(aVar.f20893a);
            aVar.setOnCancelListener(this.f20896b.f20818k);
            return aVar;
        }

        /* renamed from: b */
        public C6777a m19831b(int i) {
            this.f20896b.f20808a = (String) this.f20895a.getText(i);
            return this;
        }

        /* renamed from: b */
        public C6777a m19830b(int i, DialogInterface.OnClickListener onClickListener) {
            this.f20896b.f20810c = (String) this.f20895a.getText(i);
            this.f20896b.f20816i = onClickListener;
            return this;
        }

        /* renamed from: b */
        public C6777a m19829b(String str) {
            this.f20896b.f20808a = str;
            return this;
        }

        /* renamed from: b */
        public C6777a m19828b(String str, DialogInterface.OnClickListener onClickListener) {
            C6750f.C6755e eVar = this.f20896b;
            eVar.f20810c = str;
            eVar.f20816i = onClickListener;
            return this;
        }

        /* renamed from: b */
        public C6777a m19827b(boolean z) {
            this.f20896b.f20820m = z;
            return this;
        }
    }

    public DialogC6776a(Context context, int i) {
        super(context, i);
        this.f20893a = new C6750f(context, this);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        getWindow().addFlags(2);
        attributes.gravity = 17;
        attributes.dimAmount = 0.45f;
        getWindow().setAttributes(attributes);
    }

    /* renamed from: a */
    public Button m19840a(int i) {
        return this.f20893a.m19902a(i);
    }

    /* renamed from: a */
    public TextView m19841a() {
        return this.f20893a.m19892b();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e) {
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.f20894b) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f20893a.m19883d();
        setContentView(this.f20893a.f20790h, new LinearLayout.LayoutParams((getWindow().getWindowManager().getDefaultDisplay().getWidth() * 9) / 10, -1));
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f20893a.m19903a() != null) {
            this.f20893a.m19903a().onKey(this, i, keyEvent);
        }
        if ((i != 4 || this.f20894b) && i != 84) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e) {
        }
    }
}
