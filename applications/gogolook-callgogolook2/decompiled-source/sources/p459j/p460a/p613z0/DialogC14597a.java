package p459j.p460a.p613z0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p613z0.p617p.C14684g;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0002\n��\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JV\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\u00062:\b\u0002\u0010\"\u001a4\u0012\u0013\u0012\u00110$¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0013\u0012\u00110$¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u001e\u0018\u00010#H\u0007JV\u0010\u001d\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\u00122\b\b\u0002\u0010!\u001a\u00020\u00062:\b\u0002\u0010\"\u001a4\u0012\u0013\u0012\u00110$¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0013\u0012\u00110$¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u001e\u0018\u00010#H\u0007J\u0018\u0010*\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020$2\b\u0010+\u001a\u0004\u0018\u00010\fJ\u0018\u0010,\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020$2\b\u0010+\u001a\u0004\u0018\u00010\fJ\u0012\u0010-\u001a\u00020\u001e2\b\u0010.\u001a\u0004\u0018\u00010 H\u0016J\u0010\u0010-\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\u0012H\u0016J\b\u00100\u001a\u00020\u001eH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\u001e\u0010\u001a\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016¨\u00061"}, m815d2 = {"Lgogolook/callgogolook2/view/DescriptionDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "closeable", "", "getCloseable", "()Z", "setCloseable", "(Z)V", "negativeBtnClickListener", "Landroid/content/DialogInterface$OnClickListener;", "getNegativeBtnClickListener", "()Landroid/content/DialogInterface$OnClickListener;", "setNegativeBtnClickListener", "(Landroid/content/DialogInterface$OnClickListener;)V", "negativeBtnTextColor", "", "getNegativeBtnTextColor", "()I", "setNegativeBtnTextColor", "(I)V", "positiveBtnClickListener", "getPositiveBtnClickListener", "setPositiveBtnClickListener", "positiveBtnTextColor", "getPositiveBtnTextColor", "setPositiveBtnTextColor", "setMessage", "", NotificationCompat.CATEGORY_MESSAGE, "", "htmlMode", "onUrlClickListener", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "text", "url", "resId", "setNegativeButton", "listener", "setPositiveButton", "setTitle", "title", "titleId", "show", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.z0.a */
/* loaded from: classes3-dex2jar.jar:j/a/z0/a.class */
public final class DialogC14597a extends Dialog {

    /* renamed from: a */
    public boolean f32598a = true;
    @ColorInt

    /* renamed from: b */
    public int f32599b;
    @ColorInt

    /* renamed from: c */
    public int f32600c;

    /* renamed from: d */
    public DialogInterface.OnClickListener f32601d;

    /* renamed from: e */
    public DialogInterface.OnClickListener f32602e;

    /* renamed from: j.a.z0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/a$a.class */
    public static final class View$OnClickListenerC14598a implements View.OnClickListener {
        public View$OnClickListenerC14598a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogC14597a.this.dismiss();
        }
    }

    /* renamed from: j.a.z0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/a$b.class */
    public static final class View$OnClickListenerC14599b implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC14599b f32604a = new View$OnClickListenerC14599b();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: j.a.z0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/a$c.class */
    public static final class View$OnClickListenerC14600c implements View.OnClickListener {
        public View$OnClickListenerC14600c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogInterface.OnClickListener b = DialogC14597a.this.m1039b();
            if (b != null) {
                b.onClick(DialogC14597a.this, -1);
            }
            DialogC14597a.this.dismiss();
        }
    }

    /* renamed from: j.a.z0.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/a$d.class */
    public static final class View$OnClickListenerC14601d implements View.OnClickListener {
        public View$OnClickListenerC14601d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogInterface.OnClickListener a = DialogC14597a.this.m1046a();
            if (a != null) {
                a.onClick(DialogC14597a.this, -2);
            }
            DialogC14597a.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC14597a(Context context) {
        super(context);
        C15149k.m377b(context, "context");
        this.f32599b = ContextCompat.getColor(context, R$color.postive_btn_selector);
        this.f32600c = ContextCompat.getColor(context, R$color.negative_btn_selector);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        setContentView(R$layout.dialog_description_layout);
        ((ImageView) findViewById(R$id.ivCloseBtn)).setOnClickListener(new View$OnClickListenerC14598a());
        ((ConstraintLayout) findViewById(R$id.rlBg)).setOnClickListener(View$OnClickListenerC14599b.f32604a);
        ((TextView) findViewById(R$id.tv_positive_btn)).setOnClickListener(new View$OnClickListenerC14600c());
        ((TextView) findViewById(R$id.tv_negative_btn)).setOnClickListener(new View$OnClickListenerC14601d());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static /* synthetic */ void m1043a(DialogC14597a aVar, int i, boolean z, AbstractC15122p pVar, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            pVar = null;
        }
        aVar.m1044a(i, z, pVar);
    }

    /* renamed from: a */
    public final DialogInterface.OnClickListener m1046a() {
        return this.f32602e;
    }

    /* renamed from: a */
    public final void m1045a(int i) {
        m1043a(this, i, false, null, 6, null);
    }

    /* renamed from: a */
    public final void m1044a(int i, boolean z, AbstractC15122p<? super String, ? super String, C14989s> pVar) {
        String string = getContext().getString(i);
        C15149k.m383a((Object) string, "context.getString(resId)");
        m1042a(string, z, pVar);
    }

    /* renamed from: a */
    public final void m1042a(CharSequence charSequence, boolean z, AbstractC15122p<? super String, ? super String, C14989s> pVar) {
        C15149k.m377b(charSequence, NotificationCompat.CATEGORY_MESSAGE);
        if (z) {
            TextView textView = (TextView) findViewById(R$id.tvContent);
            C15149k.m383a((Object) textView, "tvContent");
            C14684g.m867a(textView, charSequence.toString(), pVar);
            return;
        }
        TextView textView2 = (TextView) findViewById(R$id.tvContent);
        C15149k.m383a((Object) textView2, "tvContent");
        textView2.setMovementMethod(new ScrollingMovementMethod());
        TextView textView3 = (TextView) findViewById(R$id.tvContent);
        C15149k.m383a((Object) textView3, "tvContent");
        textView3.setText(charSequence);
    }

    /* renamed from: a */
    public final void m1041a(String str, DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(str, "text");
        TextView textView = (TextView) findViewById(R$id.tv_negative_btn);
        C15149k.m383a((Object) textView, "tv_negative_btn");
        textView.setText(str);
        this.f32602e = onClickListener;
    }

    /* renamed from: a */
    public final void m1040a(boolean z) {
        this.f32598a = z;
    }

    /* renamed from: b */
    public final DialogInterface.OnClickListener m1039b() {
        return this.f32601d;
    }

    /* renamed from: b */
    public final void m1038b(String str, DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(str, "text");
        TextView textView = (TextView) findViewById(R$id.tv_positive_btn);
        C15149k.m383a((Object) textView, "tv_positive_btn");
        textView.setText(str);
        this.f32601d = onClickListener;
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        setTitle(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        TextView textView = (TextView) findViewById(R$id.tvTitle);
        C15149k.m383a((Object) textView, "tvTitle");
        textView.setText(charSequence);
    }

    @Override // android.app.Dialog
    public void show() {
        ImageView imageView = (ImageView) findViewById(R$id.ivCloseBtn);
        C15149k.m383a((Object) imageView, "ivCloseBtn");
        int i = 8;
        imageView.setVisibility(this.f32598a ? 0 : 8);
        TextView textView = (TextView) findViewById(R$id.tvTitle);
        C15149k.m383a((Object) textView, "tvTitle");
        TextView textView2 = (TextView) findViewById(R$id.tvTitle);
        C15149k.m383a((Object) textView2, "tvTitle");
        CharSequence text = textView2.getText();
        textView.setVisibility(text == null || text.length() == 0 ? 8 : 0);
        TextView textView3 = (TextView) findViewById(R$id.tvContent);
        C15149k.m383a((Object) textView3, "tvContent");
        TextView textView4 = (TextView) findViewById(R$id.tvContent);
        C15149k.m383a((Object) textView4, "tvContent");
        CharSequence text2 = textView4.getText();
        textView3.setVisibility(text2 == null || text2.length() == 0 ? 8 : 0);
        TextView textView5 = (TextView) findViewById(R$id.tv_positive_btn);
        C15149k.m383a((Object) textView5, "tv_positive_btn");
        CharSequence text3 = textView5.getText();
        if (text3 == null || text3.length() == 0) {
            TextView textView6 = (TextView) findViewById(R$id.tv_positive_btn);
            C15149k.m383a((Object) textView6, "tv_positive_btn");
            textView6.setVisibility(8);
        } else {
            TextView textView7 = (TextView) findViewById(R$id.tv_positive_btn);
            C15149k.m383a((Object) textView7, "tv_positive_btn");
            textView7.setVisibility(0);
            ((TextView) findViewById(R$id.tv_positive_btn)).setTextColor(this.f32599b);
        }
        TextView textView8 = (TextView) findViewById(R$id.tv_negative_btn);
        C15149k.m383a((Object) textView8, "tv_negative_btn");
        CharSequence text4 = textView8.getText();
        boolean z = true;
        if (text4 != null) {
            z = text4.length() == 0;
        }
        if (z) {
            TextView textView9 = (TextView) findViewById(R$id.tv_negative_btn);
            C15149k.m383a((Object) textView9, "tv_negative_btn");
            textView9.setVisibility(8);
        } else {
            TextView textView10 = (TextView) findViewById(R$id.tv_negative_btn);
            C15149k.m383a((Object) textView10, "tv_negative_btn");
            textView10.setVisibility(0);
            ((TextView) findViewById(R$id.tv_negative_btn)).setTextColor(this.f32600c);
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.ll_button);
        C15149k.m383a((Object) linearLayout, "ll_button");
        TextView textView11 = (TextView) findViewById(R$id.tv_positive_btn);
        C15149k.m383a((Object) textView11, "tv_positive_btn");
        if (textView11.getVisibility() == 8) {
            TextView textView12 = (TextView) findViewById(R$id.tv_negative_btn);
            C15149k.m383a((Object) textView12, "tv_negative_btn");
            if (textView12.getVisibility() == 8) {
                linearLayout.setVisibility(i);
                super.show();
            }
        }
        i = 0;
        linearLayout.setVisibility(i);
        super.show();
    }
}
