package p193e.p194a.p1275v.p1276a.p1293m0;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.details_view.C3857R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1304k.C20908o;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0014\u0010\u000fJ\u000f\u0010\u0015\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0015\u0010\u0006R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0019\u0010#\u001a\u00020\u001e8\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Le/a/v/a/m0/e;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/v/a/s0/a;", "Le/a/v/a/m0/b;", "Ls1/s;", "onAttachedToWindow", "()V", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "C0", "", "message", "H", "(Ljava/lang/String;)V", "buttonTitle", "s", "a0", RemoteMessageConst.MessageBody.MSG, "M", "onDetachedFromWindow", "Le/a/v/a/m0/a;", "u", "Le/a/v/a/m0/a;", "getPresenter", "()Le/a/v/a/m0/a;", "setPresenter", "(Le/a/v/a/m0/a;)V", "presenter", "Le/a/v/k/o;", "t", "Le/a/v/k/o;", "getBinding", "()Le/a/v/k/o;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.m0.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/m0/e.class */
public final class C20798e extends ConstraintLayout implements AbstractC20848a, AbstractC20795b {

    /* renamed from: t */
    public final C20908o f58452t;
    @Inject

    /* renamed from: u */
    public AbstractC20794a f58453u;

    /* renamed from: e.a.v.a.m0.e$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/m0/e$a.class */
    public static final class View$OnClickListenerC20799a implements View.OnClickListener {
        public View$OnClickListenerC20799a() {
            C20798e.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20797d c20797d = (C20797d) C20798e.this.getPresenter();
            C20847s c20847s = c20797d.f58449b;
            if (c20847s == null) {
                l.l("detailsViewModel");
                throw null;
            }
            String tcId = c20847s.f58578a.getTcId();
            if (tcId == null) {
                return;
            }
            l.d(tcId, "detailsViewModel.contact.tcId ?: return");
            C20847s c20847s2 = c20797d.f58449b;
            if (c20847s2 == null) {
                l.l("detailsViewModel");
                throw null;
            }
            String m35491w = c20847s2.f58578a.m35491w();
            if (m35491w == null) {
                return;
            }
            l.d(m35491w, "detailsViewModel.contact.displayName ?: return");
            AbstractC20795b abstractC20795b = (AbstractC20795b) c20797d.f57683a;
            if (abstractC20795b != null) {
                abstractC20795b.mo10687a0();
            }
            c20797d.f58450c.mo18693c(tcId, m35491w, new C20796c(c20797d));
        }
    }

    /* renamed from: e.a.v.a.m0.e$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/m0/e$b.class */
    public static final class View$OnClickListenerC20800b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ g f58455a;

        public View$OnClickListenerC20800b(g gVar) {
            this.f58455a = gVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f58455a.dismiss();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20798e(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, int r11) {
        /*
            r6 = this;
            r0 = r11
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r9 = r0
        L9:
            r0 = r11
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L14
            r0 = 0
            r10 = r0
        L14:
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = r7
            r2 = 0
            r3 = r9
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            r0 = r7
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = com.truecaller.details_view.C3857R.layout.view_request_contact
            r2 = r6
            android.view.View r0 = r0.inflate(r1, r2)
            int r0 = com.truecaller.details_view.C3857R.C3859id.requestContactDetailsBtn
            r9 = r0
            r0 = r6
            r1 = r9
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L86
            int r0 = com.truecaller.details_view.C3857R.C3859id.requestContactProgressBar
            r9 = r0
            r0 = r6
            r1 = r9
            android.view.View r0 = r0.findViewById(r1)
            android.widget.ProgressBar r0 = (android.widget.ProgressBar) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L86
            e.a.v.k.o r0 = new e.a.v.k.o
            r1 = r0
            r2 = r6
            r3 = r12
            r4 = r8
            r1.<init>(r2, r3, r4)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "ViewRequestContactBindin…ater.from(context), this)"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r8
            r0.f58452t = r1
            r0 = r7
            android.content.Context r0 = r0.getApplicationContext()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            e.a.v.l.b r0 = (p193e.p194a.p1275v.p1305l.AbstractC20914b) r0
            e.a.v.l.a r0 = r0.mo10529v()
            r1 = r6
            r0.mo10535o(r1)
            return
        L86:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "Missing required view with ID: "
            r3 = r6
            android.content.res.Resources r3 = r3.getResources()
            r4 = r9
            java.lang.String r3 = r3.getResourceName(r4)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1293m0.C20798e.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1293m0.AbstractC20795b
    /* renamed from: C0 */
    public void mo10690C0() {
        this.f58452t.f58813b.setOnClickListener(new View$OnClickListenerC20799a());
        C19286f.m13684T(this);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1293m0.AbstractC20795b
    /* renamed from: H */
    public void mo10689H(String str) {
        l.e(str, "message");
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        g$a g_a = new g$a(C17422k.m16113E(context, true), C3857R.style.StyleX_Dialog_Startup);
        g_a.m3654o(C3857R.layout.dialog_contact_request_sent);
        g m3652q = g_a.m3652q();
        TextView textView = (TextView) m3652q.findViewById(C3857R.C3859id.subtitle);
        if (textView != null) {
            textView.setText(str);
        }
        View findViewById = m3652q.findViewById(C3857R.C3859id.btnDone);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View$OnClickListenerC20800b(m3652q));
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20794a abstractC20794a = this.f58453u;
        if (abstractC20794a == null) {
            l.l("presenter");
            throw null;
        }
        C20797d c20797d = (C20797d) abstractC20794a;
        Objects.requireNonNull(c20797d);
        l.e(c20847s, "detailsViewModel");
        c20797d.f58449b = c20847s;
        AbstractC20795b abstractC20795b = (AbstractC20795b) c20797d.f57683a;
        if (abstractC20795b == null) {
            return;
        }
        abstractC20795b.mo10690C0();
    }

    @Override // p193e.p194a.p1275v.p1276a.p1293m0.AbstractC20795b
    /* renamed from: M */
    public void mo10688M(String str) {
        l.e(str, RemoteMessageConst.MessageBody.MSG);
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // p193e.p194a.p1275v.p1276a.p1293m0.AbstractC20795b
    /* renamed from: a0 */
    public void mo10687a0() {
        C20908o c20908o = this.f58452t;
        TextView textView = c20908o.f58813b;
        l.d(textView, "requestContactDetailsBtn");
        textView.setClickable(false);
        TextView textView2 = c20908o.f58813b;
        l.d(textView2, "requestContactDetailsBtn");
        textView2.setText("");
        ProgressBar progressBar = c20908o.f58814c;
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        l.d(indeterminateDrawable, "indeterminateDrawable");
        indeterminateDrawable.setColorFilter(new PorterDuffColorFilter(progressBar.getContext().getColor(C3857R.color.white), PorterDuff.Mode.SRC_IN));
        C19286f.m13684T(progressBar);
    }

    public final C20908o getBinding() {
        return this.f58452t;
    }

    public final AbstractC20794a getPresenter() {
        AbstractC20794a abstractC20794a = this.f58453u;
        if (abstractC20794a != null) {
            return abstractC20794a;
        }
        l.l("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20794a abstractC20794a = this.f58453u;
        if (abstractC20794a != null) {
            ((AbstractC20576b) abstractC20794a).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC20794a abstractC20794a = this.f58453u;
        if (abstractC20794a != null) {
            ((AbstractC20576b) abstractC20794a).f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1293m0.AbstractC20795b
    /* renamed from: s */
    public void mo10686s(String str) {
        l.e(str, "buttonTitle");
        TextView textView = this.f58452t.f58813b;
        l.d(textView, "binding.requestContactDetailsBtn");
        textView.setClickable(true);
        TextView textView2 = this.f58452t.f58813b;
        l.d(textView2, "binding.requestContactDetailsBtn");
        textView2.setText(str);
        ProgressBar progressBar = this.f58452t.f58814c;
        l.d(progressBar, "binding.requestContactProgressBar");
        C19286f.m13689O(progressBar);
    }

    public final void setPresenter(AbstractC20794a abstractC20794a) {
        l.e(abstractC20794a, "<set-?>");
        this.f58453u = abstractC20794a;
    }
}
