package p459j.p460a.p613z0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import kotlin.Metadata;
import p459j.p460a.p521j0.p522u.p526e.C12715a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14191v;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/view/IapPostCedPromoView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "onCloseClickedListener", "Landroid/view/View$OnClickListener;", "init", "", "setOnClosedClickedListener", "onClickedListener", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.z0.c */
/* loaded from: classes3-dex2jar.jar:j/a/z0/c.class */
public final class C14606c extends ConstraintLayout {

    /* renamed from: a */
    public View.OnClickListener f32616a;

    /* renamed from: j.a.z0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/c$a.class */
    public static final class C14607a {
        public C14607a() {
        }

        public /* synthetic */ C14607a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.z0.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/c$b.class */
    public static final class View$OnClickListenerC14608b implements View.OnClickListener {
        public View$OnClickListenerC14608b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12715a.m5471a(0);
            View.OnClickListener onClickListener = C14606c.this.f32616a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* renamed from: j.a.z0.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/c$c.class */
    public static final class View$OnClickListenerC14609c implements View.OnClickListener {
        public View$OnClickListenerC14609c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12715a.m5471a(2);
            View.OnClickListener onClickListener = C14606c.this.f32616a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* renamed from: j.a.z0.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/c$d.class */
    public static final class View$OnClickListenerC14610d implements View.OnClickListener {
        public View$OnClickListenerC14610d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12715a.m5471a(1);
            Context context = C14606c.this.getContext();
            IapActivity.C4488b bVar = IapActivity.f10799k;
            Context context2 = C14606c.this.getContext();
            C15149k.m383a((Object) context2, "context");
            C14191v.m2257a(context, IapActivity.C4488b.m28094a(bVar, context2, "post_call_end_promo", null, null, 12, null), null, 2, null);
            View.OnClickListener onClickListener = C14606c.this.f32616a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* renamed from: j.a.z0.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/c$e.class */
    public static final class View$OnClickListenerC14611e implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC14611e f32620a = new View$OnClickListenerC14611e();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    static {
        new C14607a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14606c(Context context) {
        super(context);
        C15149k.m377b(context, "context");
        m1027a();
    }

    /* renamed from: a */
    public final void m1027a() {
        C13915b3.m3057b("show_iap_post_ced_promo_time", System.currentTimeMillis());
        View inflate = LayoutInflater.from(getContext()).inflate(R$layout.iap_ced_ad_promo_layout, this);
        inflate.setOnClickListener(new View$OnClickListenerC14608b());
        ((ImageView) inflate.findViewById(R$id.ivClose)).setOnClickListener(new View$OnClickListenerC14609c());
        ((TextView) inflate.findViewById(R$id.tvCta)).setOnClickListener(new View$OnClickListenerC14610d());
        ((ConstraintLayout) inflate.findViewById(R$id.clBg)).setOnClickListener(View$OnClickListenerC14611e.f32620a);
        C12715a.m5472a();
    }

    /* renamed from: a */
    public final void m1026a(View.OnClickListener onClickListener) {
        this.f32616a = onClickListener;
    }
}
