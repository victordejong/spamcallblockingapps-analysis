package p193e.p194a.p1275v.p1276a.p1287g0;

import android.widget.FrameLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.details_view.C3857R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.AbstractC20721d;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1304k.C20904k;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u0006J\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\t\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0017¨\u0006\u0019"}, d2 = {"Le/a/v/a/g0/d;", "Landroid/widget/FrameLayout;", "Le/a/v/a/g0/b;", "Le/a/v/a/s0/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", AbstractC2405c.f7629a, "a", C22021b.f61237c, "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/a/v/a/g0/a;", "Le/a/v/a/g0/a;", "getPresenter", "()Le/a/v/a/g0/a;", "setPresenter", "(Le/a/v/a/g0/a;)V", "presenter", "Le/a/v/k/k;", "Le/a/v/k/k;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.g0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/g0/d.class */
public final class C20762d extends FrameLayout implements AbstractC20760b, AbstractC20848a {
    @Inject

    /* renamed from: a */
    public AbstractC20759a f58393a;

    /* renamed from: b */
    public C20904k f58394b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20762d(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r6
            android.content.Context r0 = r0.getApplicationContext()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            e.a.v.l.b r0 = (p193e.p194a.p1275v.p1305l.AbstractC20914b) r0
            e.a.v.l.a r0 = r0.mo10529v()
            r1 = r5
            r0.mo10544f(r1)
            r0 = r6
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = com.truecaller.details_view.C3857R.layout.view_moderation_notice
            r2 = r5
            r3 = 0
            android.view.View r0 = r0.inflate(r1, r2, r3)
            r6 = r0
            r0 = r5
            r1 = r6
            r0.addView(r1)
            r0 = r6
            java.lang.String r1 = "rootView"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r6
            android.widget.TextView r0 = (android.widget.TextView) r0
            r6 = r0
            e.a.v.k.k r0 = new e.a.v.k.k
            r1 = r0
            r2 = r6
            r3 = r6
            r1.<init>(r2, r3)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "ViewModerationNoticeBind…rom(context), this, true)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            r0.f58394b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1287g0.C20762d.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20759a abstractC20759a = this.f58393a;
        if (abstractC20759a == null) {
            l.l("presenter");
            throw null;
        }
        C20761c c20761c = (C20761c) abstractC20759a;
        Objects.requireNonNull(c20761c);
        l.e(c20847s, "detailsViewModel");
        AbstractC20721d abstractC20721d = c20847s.f58579b;
        if (l.a(abstractC20721d, AbstractC20721d.C20725d.f58333a) || l.a(abstractC20721d, AbstractC20721d.C20732g.f58337a) || (abstractC20721d instanceof AbstractC20721d.AbstractC20727f.C20731d)) {
            AbstractC20760b abstractC20760b = (AbstractC20760b) c20761c.f57683a;
            if (abstractC20760b == null) {
                return;
            }
            abstractC20760b.mo10722b();
        } else if (c20847s.f58578a.m35572B0()) {
            AbstractC20760b abstractC20760b2 = (AbstractC20760b) c20761c.f57683a;
            if (abstractC20760b2 == null) {
                return;
            }
            abstractC20760b2.mo10723a();
        } else {
            AbstractC20760b abstractC20760b3 = (AbstractC20760b) c20761c.f57683a;
            if (abstractC20760b3 == null) {
                return;
            }
            abstractC20760b3.mo10721c();
        }
    }

    @Override // p193e.p194a.p1275v.p1276a.p1287g0.AbstractC20760b
    /* renamed from: a */
    public void mo10723a() {
        C19286f.m13684T(this);
        this.f58394b.f58803a.setText(C3857R.string.details_view_moderation_notice_unmoderated);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1287g0.AbstractC20760b
    /* renamed from: b */
    public void mo10722b() {
        C19286f.m13684T(this);
        this.f58394b.f58803a.setText(C3857R.string.details_view_verified_notice);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1287g0.AbstractC20760b
    /* renamed from: c */
    public void mo10721c() {
        C19286f.m13684T(this);
        this.f58394b.f58803a.setText(C3857R.string.details_view_moderation_notice_moderated);
    }

    public final AbstractC20759a getPresenter() {
        AbstractC20759a abstractC20759a = this.f58393a;
        if (abstractC20759a != null) {
            return abstractC20759a;
        }
        l.l("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20759a abstractC20759a = this.f58393a;
        if (abstractC20759a != null) {
            ((AbstractC20576b) abstractC20759a).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC20759a abstractC20759a = this.f58393a;
        if (abstractC20759a != null) {
            ((AbstractC20576b) abstractC20759a).f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public final void setPresenter(AbstractC20759a abstractC20759a) {
        l.e(abstractC20759a, "<set-?>");
        this.f58393a = abstractC20759a;
    }
}
