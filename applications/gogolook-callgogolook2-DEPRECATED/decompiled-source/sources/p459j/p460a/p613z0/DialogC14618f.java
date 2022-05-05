package p459j.p460a.p613z0;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$style;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.z0.f */
/* loaded from: classes3-dex2jar.jar:j/a/z0/f.class */
public class DialogC14618f extends Dialog {

    /* renamed from: a */
    public TextView f32631a;

    /* renamed from: b */
    public TextView f32632b;

    /* renamed from: c */
    public TextView f32633c;

    /* renamed from: d */
    public TextView f32634d;

    /* renamed from: e */
    public CheckBox f32635e;

    /* renamed from: f */
    public View f32636f;

    /* renamed from: g */
    public LinearLayout f32637g;

    /* renamed from: h */
    public LinearLayout f32638h;

    /* renamed from: k */
    public DialogInterface.OnClickListener f32641k;

    /* renamed from: l */
    public DialogInterface.OnClickListener f32642l;

    /* renamed from: i */
    public int f32639i = 1;

    /* renamed from: j */
    public int f32640j = 1;

    /* renamed from: n */
    public boolean f32644n = true;

    /* renamed from: m */
    public DialogC14618f f32643m = this;

    /* renamed from: j.a.z0.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/f$a.class */
    public class View$OnClickListenerC14619a implements View.OnClickListener {
        public View$OnClickListenerC14619a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14618f fVar = DialogC14618f.this;
            DialogInterface.OnClickListener onClickListener = fVar.f32641k;
            if (onClickListener != null) {
                onClickListener.onClick(fVar.f32643m, -1);
            }
            DialogC14618f.this.f32643m.dismiss();
        }
    }

    /* renamed from: j.a.z0.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/f$b.class */
    public class View$OnClickListenerC14620b implements View.OnClickListener {
        public View$OnClickListenerC14620b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14618f fVar = DialogC14618f.this;
            DialogInterface.OnClickListener onClickListener = fVar.f32642l;
            if (onClickListener != null) {
                onClickListener.onClick(fVar.f32643m, -2);
            }
            DialogC14618f.this.f32643m.dismiss();
        }
    }

    /* renamed from: j.a.z0.f$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/f$c.class */
    public class View$OnClickListenerC14621c implements View.OnClickListener {
        public View$OnClickListenerC14621c(DialogC14618f fVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* renamed from: j.a.z0.f$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/f$d.class */
    public class View$OnClickListenerC14622d implements View.OnClickListener {
        public View$OnClickListenerC14622d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogC14618f.this.f32644n) {
                DialogC14618f.this.dismiss();
            }
        }
    }

    /* renamed from: j.a.z0.f$e */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/f$e.class */
    public class C14623e implements CompoundButton.OnCheckedChangeListener {
        public C14623e() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                DialogC14618f.this.f32631a.setEnabled(true);
            } else {
                DialogC14618f.this.f32631a.setEnabled(false);
            }
        }
    }

    /* renamed from: j.a.z0.f$f */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/f$f.class */
    public static class C14624f {

        /* renamed from: a */
        public DialogC14618f f32649a;

        public C14624f(Context context) {
            this.f32649a = new DialogC14618f(context);
        }

        /* renamed from: a */
        public C14624f m988a(int i) {
            m985a(C14206w4.m2225a(i));
            return this;
        }

        /* renamed from: a */
        public C14624f m987a(int i, @Nullable DialogInterface.OnClickListener onClickListener) {
            this.f32649a.m1007a(i, onClickListener);
            return this;
        }

        /* renamed from: a */
        public C14624f m986a(View view) {
            this.f32649a.m1005a(view);
            return this;
        }

        /* renamed from: a */
        public C14624f m985a(String str) {
            this.f32649a.m1003a(str);
            return this;
        }

        /* renamed from: a */
        public C14624f m984a(String str, @Nullable DialogInterface.OnClickListener onClickListener) {
            this.f32649a.m1002a(str, onClickListener);
            return this;
        }

        /* renamed from: a */
        public C14624f m983a(boolean z) {
            this.f32649a.setCancelable(z);
            return this;
        }

        /* renamed from: a */
        public DialogC14618f m989a() {
            return this.f32649a;
        }

        /* renamed from: b */
        public C14624f m981b(int i) {
            this.f32649a.m995c(i);
            return this;
        }

        /* renamed from: b */
        public C14624f m980b(int i, @Nullable DialogInterface.OnClickListener onClickListener) {
            this.f32649a.m999b(i, onClickListener);
            return this;
        }

        /* renamed from: b */
        public C14624f m979b(String str) {
            this.f32649a.m998b(str);
            return this;
        }

        /* renamed from: b */
        public C14624f m978b(String str, @Nullable DialogInterface.OnClickListener onClickListener) {
            this.f32649a.m997b(str, onClickListener);
            return this;
        }

        /* renamed from: b */
        public DialogC14618f m982b() {
            this.f32649a.show();
            return this.f32649a;
        }

        /* renamed from: c */
        public C14624f m977c(int i) {
            this.f32649a.m990f(i);
            return this;
        }

        /* renamed from: c */
        public C14624f m976c(String str) {
            this.f32649a.setTitle(str);
            return this;
        }

        /* renamed from: d */
        public C14624f m975d(int i) {
            this.f32649a.setTitle(i);
            return this;
        }
    }

    public DialogC14618f(Context context) {
        super(context, R$style.DialogTheme);
        getWindow().requestFeature(1);
        View inflate = LayoutInflater.from(context).inflate(R$layout.dialog_m_normal, (ViewGroup) null);
        this.f32638h = (LinearLayout) inflate.findViewById(R$id.ll_dialog);
        this.f32631a = (TextView) inflate.findViewById(R$id.tv_positive_btn);
        this.f32632b = (TextView) inflate.findViewById(R$id.tv_negative_btn);
        this.f32633c = (TextView) inflate.findViewById(R$id.tv_title);
        this.f32634d = (TextView) inflate.findViewById(R$id.tv_text);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_hint);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R$id.ll_button);
        this.f32637g = (LinearLayout) inflate.findViewById(R$id.ll_conent);
        this.f32635e = (CheckBox) inflate.findViewById(R$id.cb_checkbox);
        this.f32636f = inflate.findViewById(R$id.v_outside);
        setContentView(inflate);
        this.f32631a.setOnClickListener(new View$OnClickListenerC14619a());
        this.f32632b.setOnClickListener(new View$OnClickListenerC14620b());
        this.f32638h.setOnClickListener(new View$OnClickListenerC14621c(this));
        this.f32636f.setOnClickListener(new View$OnClickListenerC14622d());
        Activity a = C14191v.m2260a(context);
        if (a != null) {
            setOwnerActivity(a);
        }
    }

    /* renamed from: a */
    public int m1006a(int i, boolean z) {
        int i2 = R$color.negative_btn_selector;
        if (i == 1) {
            if (z) {
                i2 = R$color.postive_btn_selector;
            }
            return i2;
        } else if (i == 2) {
            return R$color.postive_btn_selector;
        } else {
            if (i == 3) {
                return R$color.negative_btn_selector;
            }
            int i3 = i;
            if (i == 4) {
                i3 = R$color.delete_btn_selector;
            }
            return i3;
        }
    }

    /* renamed from: a */
    public void m1008a(@StringRes int i) {
        this.f32634d.setText(i);
        this.f32634d.setLinkTextColor(Color.parseColor("#1cdb3a"));
        Linkify.addLinks(this.f32634d, 15);
        this.f32634d.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* renamed from: a */
    public void m1007a(int i, DialogInterface.OnClickListener onClickListener) {
        m1002a(C14206w4.m2225a(i), onClickListener);
    }

    /* renamed from: a */
    public void m1005a(View view) {
        this.f32637g.addView(view, 1);
    }

    /* renamed from: a */
    public void m1003a(String str) {
        this.f32635e.setText(str);
    }

    /* renamed from: a */
    public void m1002a(String str, DialogInterface.OnClickListener onClickListener) {
        this.f32632b.setText(str);
        this.f32642l = onClickListener;
    }

    /* renamed from: a */
    public void m1001a(boolean z) {
        this.f32635e.setChecked(z);
    }

    /* renamed from: a */
    public boolean m1009a() {
        return this.f32635e.isChecked();
    }

    /* renamed from: b */
    public void m1000b(int i) {
        m1003a(C14206w4.m2225a(i));
    }

    /* renamed from: b */
    public void m999b(int i, DialogInterface.OnClickListener onClickListener) {
        m997b(C14206w4.m2225a(i), onClickListener);
    }

    /* renamed from: b */
    public void m998b(String str) {
        this.f32634d.setText(str);
    }

    /* renamed from: b */
    public void m997b(String str, DialogInterface.OnClickListener onClickListener) {
        this.f32631a.setText(str);
        this.f32641k = onClickListener;
    }

    /* renamed from: b */
    public void m996b(boolean z) {
        if (z) {
            this.f32635e.setOnCheckedChangeListener(new C14623e());
            this.f32631a.setEnabled(false);
            return;
        }
        this.f32635e.setOnCheckedChangeListener(null);
        this.f32631a.setEnabled(true);
    }

    /* renamed from: c */
    public void m995c(int i) {
        m998b(C14206w4.m2225a(i));
    }

    /* renamed from: c */
    public void m994c(String str) {
        this.f32632b.setText(str);
    }

    /* renamed from: d */
    public void m993d(int i) {
        this.f32632b.setText(C14206w4.m2225a(i));
    }

    /* renamed from: d */
    public void m992d(String str) {
        this.f32631a.setText(str);
    }

    /* renamed from: e */
    public void m991e(int i) {
        this.f32631a.setText(C14206w4.m2225a(i));
    }

    /* renamed from: f */
    public void m990f(int i) {
        this.f32639i = i;
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        this.f32644n = z;
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        setTitle(C14206w4.m2225a(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f32633c.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        if (TextUtils.isEmpty(this.f32633c.getText())) {
            this.f32633c.setVisibility(8);
        } else {
            this.f32633c.setVisibility(0);
        }
        if (TextUtils.isEmpty(this.f32634d.getText())) {
            this.f32634d.setVisibility(8);
        } else {
            this.f32634d.setVisibility(0);
        }
        this.f32631a.setTextColor(getContext().getResources().getColorStateList(m1006a(this.f32639i, true)));
        this.f32632b.setTextColor(getContext().getResources().getColorStateList(m1006a(this.f32640j, false)));
        if (TextUtils.isEmpty(this.f32632b.getText())) {
            this.f32632b.setVisibility(8);
        }
        if (TextUtils.isEmpty(this.f32631a.getText())) {
            this.f32631a.setVisibility(8);
        }
        getWindow().setBackgroundDrawableResource(17170445);
        if (this.f32635e.getText() == null || this.f32635e.getText().length() < 1) {
            this.f32635e.setVisibility(8);
        } else {
            this.f32635e.setButtonDrawable(R$drawable.checkbox_selector);
        }
        try {
            C14123p4.m2445a(getOwnerActivity(), getWindow());
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
