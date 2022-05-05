package p459j.p460a.p613z0;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.view.AdjustableLottieAnimView;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14315y;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0012J\"\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u001c\u001a\u00020\u000eJ$\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u001c\u001a\u00020\u000eH\u0007J\b\u0010\u001e\u001a\u00020\fH\u0016J\u000e\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u000eJ\b\u0010 \u001a\u00020\fH\u0002J\b\u0010!\u001a\u00020\fH\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\""}, m815d2 = {"Lgogolook/callgogolook2/view/LottieAnimDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "closeBtnOnClickListener", "Landroid/view/View$OnClickListener;", "getCloseBtnOnClickListener", "()Landroid/view/View$OnClickListener;", "setCloseBtnOnClickListener", "(Landroid/view/View$OnClickListener;)V", "hideNegative", "", "hide", "", "hidePositive", "setAnimation", "name", "", "setDialogTitle", "resId", "", "str", "setMessage", NotificationCompat.CATEGORY_MESSAGE, "setNegative", "text", "clickListener", "autoDismiss", "setPositive", "show", "showCloseBtn", "showMessage", "showTitle", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.z0.e */
/* loaded from: classes3-dex2jar.jar:j/a/z0/e.class */
public final class DialogC14614e extends Dialog {

    /* renamed from: a */
    public View.OnClickListener f32625a;

    /* renamed from: j.a.z0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/e$a.class */
    public static final class View$OnClickListenerC14615a implements View.OnClickListener {
        public View$OnClickListenerC14615a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            View.OnClickListener a = DialogC14614e.this.m1018a();
            if (a != null) {
                a.onClick(view);
            }
            C14315y.m1604a(DialogC14614e.this);
        }
    }

    /* renamed from: j.a.z0.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/e$b.class */
    public static final class View$OnClickListenerC14616b implements View.OnClickListener {
        public View$OnClickListenerC14616b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14315y.m1604a(DialogC14614e.this);
        }
    }

    /* renamed from: j.a.z0.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/e$c.class */
    public static final class View$OnClickListenerC14617c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ boolean f32629b;

        /* renamed from: c */
        public final /* synthetic */ View.OnClickListener f32630c;

        public View$OnClickListenerC14617c(String str, boolean z, View.OnClickListener onClickListener) {
            this.f32629b = z;
            this.f32630c = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.f32629b) {
                C14315y.m1604a(DialogC14614e.this);
            }
            View.OnClickListener onClickListener = this.f32630c;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC14614e(Context context) {
        super(context, 16973840);
        C15149k.m377b(context, "context");
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        setContentView(LayoutInflater.from(context).inflate(R$layout.dialog_lottie_anim, (ViewGroup) null));
        ((ImageView) findViewById(R$id.iv_close)).setOnClickListener(new View$OnClickListenerC14615a());
        ((RelativeLayout) findViewById(R$id.v_bg)).setOnClickListener(new View$OnClickListenerC14616b());
        ((AdjustableLottieAnimView) findViewById(R$id.lav_anim)).m25939c(true);
    }

    /* renamed from: a */
    public static /* synthetic */ void m1017a(DialogC14614e eVar, String str, View.OnClickListener onClickListener, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        eVar.m1014a(str, onClickListener, z);
    }

    /* renamed from: a */
    public final View.OnClickListener m1018a() {
        return this.f32625a;
    }

    /* renamed from: a */
    public final void m1016a(String str) {
        C15149k.m377b(str, "name");
        ((AdjustableLottieAnimView) findViewById(R$id.lav_anim)).m37035a(str);
        ((AdjustableLottieAnimView) findViewById(R$id.lav_anim)).m37026e();
    }

    /* renamed from: a */
    public final void m1015a(String str, View.OnClickListener onClickListener) {
        m1017a(this, str, onClickListener, false, 4, null);
    }

    /* renamed from: a */
    public final void m1014a(String str, View.OnClickListener onClickListener, boolean z) {
        C15149k.m377b(str, "text");
        TextView textView = (TextView) findViewById(R$id.txv_positive);
        C15149k.m383a((Object) textView, "this");
        textView.setText(str);
        textView.setTextColor(ContextCompat.getColor(textView.getContext(), 2131099787));
        textView.setOnClickListener(new View$OnClickListenerC14617c(str, z, onClickListener));
    }

    /* renamed from: a */
    public final void m1013a(boolean z) {
        TextView textView = (TextView) findViewById(R$id.txv_negative);
        C15149k.m383a((Object) textView, "txv_negative");
        int i = 8;
        textView.setVisibility(z ? 8 : 0);
        View findViewById = findViewById(R$id.line_3);
        C15149k.m383a((Object) findViewById, "line_3");
        if (!z) {
            i = 0;
        }
        findViewById.setVisibility(i);
    }

    /* renamed from: b */
    public final void m1012b() {
        TextView textView = (TextView) findViewById(R$id.content);
        C15149k.m383a((Object) textView, "content");
        textView.setVisibility(0);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.text_area);
        C15149k.m383a((Object) linearLayout, "text_area");
        linearLayout.setVisibility(0);
    }

    /* renamed from: b */
    public final void m1011b(String str) {
        C15149k.m377b(str, NotificationCompat.CATEGORY_MESSAGE);
        TextView textView = (TextView) findViewById(R$id.content);
        C15149k.m383a((Object) textView, "content");
        textView.setText(str);
        m1012b();
    }

    /* renamed from: b */
    public final void m1010b(boolean z) {
        ImageView imageView = (ImageView) findViewById(R$id.iv_close);
        C15149k.m383a((Object) imageView, "iv_close");
        imageView.setVisibility(z ? 0 : 8);
    }

    @Override // android.app.Dialog
    public void show() {
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(17170445);
        }
        try {
            C14123p4.m2445a(getOwnerActivity(), getWindow());
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.show();
    }
}
