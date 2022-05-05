package p459j.p460a.p613z0;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.z0.l */
/* loaded from: classes3-dex2jar.jar:j/a/z0/l.class */
public class DialogC14644l extends Dialog {

    /* renamed from: h */
    public DialogInterface.OnClickListener f32717h;

    /* renamed from: i */
    public DialogInterface.OnClickListener f32718i;

    /* renamed from: j */
    public boolean f32719j = false;

    /* renamed from: k */
    public boolean f32720k = true;

    /* renamed from: e */
    public View f32714e = findViewById(R$id.iv_close);

    /* renamed from: a */
    public TextView f32710a = (TextView) findViewById(R$id.tv_message);

    /* renamed from: c */
    public Button f32712c = (Button) findViewById(R$id.tv_positive_btn);

    /* renamed from: d */
    public Button f32713d = (Button) findViewById(R$id.tv_negative_btn);

    /* renamed from: b */
    public TextView f32711b = (TextView) findViewById(R$id.tv_title);

    /* renamed from: f */
    public View f32715f = findViewById(R$id.v_dummy);

    /* renamed from: g */
    public View f32716g = findViewById(R$id.v_outside);

    /* renamed from: l */
    public DialogC14644l f32721l = this;

    /* renamed from: j.a.z0.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/l$a.class */
    public class View$OnClickListenerC14645a implements View.OnClickListener {
        public View$OnClickListenerC14645a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14644l.this.cancel();
        }
    }

    /* renamed from: j.a.z0.l$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/l$b.class */
    public class View$OnClickListenerC14646b implements View.OnClickListener {
        public View$OnClickListenerC14646b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14644l lVar = DialogC14644l.this;
            DialogInterface.OnClickListener onClickListener = lVar.f32717h;
            if (onClickListener != null) {
                onClickListener.onClick(lVar.f32721l, -1);
            }
            DialogC14644l lVar2 = DialogC14644l.this;
            if (lVar2.f32719j) {
                lVar2.dismiss();
            }
        }
    }

    /* renamed from: j.a.z0.l$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/l$c.class */
    public class View$OnClickListenerC14647c implements View.OnClickListener {
        public View$OnClickListenerC14647c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14644l lVar = DialogC14644l.this;
            DialogInterface.OnClickListener onClickListener = lVar.f32718i;
            if (onClickListener != null) {
                onClickListener.onClick(lVar.f32721l, -2);
            }
            DialogC14644l lVar2 = DialogC14644l.this;
            if (lVar2.f32719j) {
                lVar2.dismiss();
            }
        }
    }

    /* renamed from: j.a.z0.l$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/l$d.class */
    public class View$OnClickListenerC14648d implements View.OnClickListener {
        public View$OnClickListenerC14648d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14644l lVar = DialogC14644l.this;
            if (lVar.f32720k) {
                lVar.cancel();
            }
        }
    }

    public DialogC14644l(Context context) {
        super(context, 16973840);
        getWindow().requestFeature(1);
        setContentView(R$layout.dialog_w_message);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.ll_conent);
        Activity a = C14191v.m2260a(context);
        if (a != null) {
            setOwnerActivity(a);
        }
    }

    /* renamed from: a */
    public void m937a(int i) {
        m935a(C14206w4.m2225a(i));
    }

    /* renamed from: a */
    public void m936a(int i, DialogInterface.OnClickListener onClickListener) {
        m932b(C14206w4.m2225a(i), onClickListener);
    }

    /* renamed from: a */
    public void m935a(String str) {
        this.f32710a.setText(str);
    }

    /* renamed from: a */
    public void m934a(String str, DialogInterface.OnClickListener onClickListener) {
        this.f32713d.setText(str);
        this.f32718i = onClickListener;
    }

    /* renamed from: a */
    public void m933a(boolean z) {
        this.f32719j = z;
    }

    /* renamed from: b */
    public void m932b(String str, DialogInterface.OnClickListener onClickListener) {
        this.f32712c.setText(str);
        this.f32717h = onClickListener;
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        this.f32720k = z;
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        setTitle(C14206w4.m2225a(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f32711b.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setBackgroundDrawableResource(17170445);
        this.f32714e.setOnClickListener(new View$OnClickListenerC14645a());
        int i = 8;
        if (TextUtils.isEmpty(this.f32712c.getText())) {
            this.f32712c.setVisibility(8);
        } else {
            this.f32712c.setVisibility(0);
            this.f32712c.setOnClickListener(new View$OnClickListenerC14646b());
        }
        if (TextUtils.isEmpty(this.f32713d.getText())) {
            this.f32713d.setVisibility(8);
            this.f32715f.setVisibility(0);
        } else {
            this.f32713d.setVisibility(0);
            this.f32713d.setOnClickListener(new View$OnClickListenerC14647c());
            this.f32715f.setVisibility(8);
        }
        TextView textView = this.f32710a;
        textView.setVisibility(TextUtils.isEmpty(textView.getText()) ? 8 : 0);
        TextView textView2 = this.f32711b;
        textView2.setVisibility(TextUtils.isEmpty(textView2.getText()) ? 8 : 0);
        View view = this.f32714e;
        if (this.f32720k) {
            i = 0;
        }
        view.setVisibility(i);
        this.f32716g.setOnClickListener(new View$OnClickListenerC14648d());
        try {
            C14123p4.m2445a(getOwnerActivity(), getWindow());
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
