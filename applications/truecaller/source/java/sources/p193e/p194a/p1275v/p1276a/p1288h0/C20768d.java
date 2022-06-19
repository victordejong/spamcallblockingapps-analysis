package p193e.p194a.p1275v.p1276a.p1288h0;

import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.data.entity.Note;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1304k.C20905l;
import s1.f0.r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Le/a/v/a/h0/d;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/v/a/h0/b;", "Le/a/v/a/s0/a;", "", "notes", "Ls1/s;", "k", "(Ljava/lang/String;)V", "j", "()V", "onAttachedToWindow", "onDetachedFromWindow", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/a/v/a/h0/a;", "t", "Le/a/v/a/h0/a;", "getPresenter", "()Le/a/v/a/h0/a;", "setPresenter", "(Le/a/v/a/h0/a;)V", "presenter", "Le/a/v/k/l;", "u", "Le/a/v/k/l;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.h0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/h0/d.class */
public final class C20768d extends ConstraintLayout implements AbstractC20766b, AbstractC20848a {
    @Inject

    /* renamed from: t */
    public AbstractC20765a f58398t;

    /* renamed from: u */
    public final C20905l f58399u;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20768d(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, int r11) {
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
            int r1 = com.truecaller.details_view.C3857R.layout.view_notes
            r2 = r6
            android.view.View r0 = r0.inflate(r1, r2)
            int r0 = com.truecaller.details_view.C3857R.C3859id.header
            r9 = r0
            r0 = r6
            r1 = r9
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r12 = r0
            r0 = r12
            if (r0 == 0) goto Laf
            int r0 = com.truecaller.details_view.C3857R.C3859id.notes
            r9 = r0
            r0 = r6
            r1 = r9
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Laf
            e.a.v.k.l r0 = new e.a.v.k.l
            r1 = r0
            r2 = r6
            r3 = r12
            r4 = r8
            r1.<init>(r2, r3, r4)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "ViewNotesBinding.inflate…ater.from(context), this)"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r8
            r0.f58399u = r1
            r0 = r7
            android.content.Context r0 = r0.getApplicationContext()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            e.a.v.l.b r0 = (p193e.p194a.p1275v.p1305l.AbstractC20914b) r0
            e.a.v.l.a r0 = r0.mo10529v()
            r1 = r6
            r0.mo10536n(r1)
            int r0 = com.truecaller.details_view.C3857R.C3858drawable.selectable_background_outlined_view
            r9 = r0
            java.lang.Object r0 = p1727n3.p1807k.p1809b.C26467a.f74235a
            r8 = r0
            r0 = r6
            r1 = r7
            r2 = r9
            android.graphics.drawable.Drawable r1 = p1727n3.p1807k.p1809b.C26467a.C26470c.m1789b(r1, r2)
            r0.setBackground(r1)
            r0 = r6
            r1 = 16
            int r1 = p193e.p194a.p1129p5.p1132s0.C19291g.m13603O(r1)
            r2 = 16
            int r2 = p193e.p194a.p1129p5.p1132s0.C19291g.m13603O(r2)
            r3 = 16
            int r3 = p193e.p194a.p1129p5.p1132s0.C19291g.m13603O(r3)
            r4 = 16
            int r4 = p193e.p194a.p1129p5.p1132s0.C19291g.m13603O(r4)
            r0.setPadding(r1, r2, r3, r4)
            return
        Laf:
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1288h0.C20768d.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        l.e(c20847s, "detailsViewModel");
        AbstractC20765a abstractC20765a = this.f58398t;
        if (abstractC20765a == null) {
            l.l("presenter");
            throw null;
        }
        C20767c c20767c = (C20767c) abstractC20765a;
        Objects.requireNonNull(c20767c);
        l.e(c20847s, "detailsViewModel");
        Note note = c20847s.f58578a.f11525t;
        String str = null;
        if (note != null) {
            str = note.getValue();
        }
        if (str == null || r.p(str)) {
            AbstractC20766b abstractC20766b = (AbstractC20766b) c20767c.f57683a;
            if (abstractC20766b == null) {
                return;
            }
            abstractC20766b.mo10717j();
            return;
        }
        AbstractC20766b abstractC20766b2 = (AbstractC20766b) c20767c.f57683a;
        if (abstractC20766b2 == null) {
            return;
        }
        abstractC20766b2.mo10716k(str);
    }

    public final AbstractC20765a getPresenter() {
        AbstractC20765a abstractC20765a = this.f58398t;
        if (abstractC20765a != null) {
            return abstractC20765a;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1288h0.AbstractC20766b
    /* renamed from: j */
    public void mo10717j() {
        C19286f.m13689O(this);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1288h0.AbstractC20766b
    /* renamed from: k */
    public void mo10716k(String str) {
        l.e(str, "notes");
        TextView textView = this.f58399u.f58805b;
        l.d(textView, "binding.notes");
        textView.setText(str);
        C19286f.m13684T(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20765a abstractC20765a = this.f58398t;
        if (abstractC20765a != null) {
            ((AbstractC20576b) abstractC20765a).f57683a = this;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC20765a abstractC20765a = this.f58398t;
        if (abstractC20765a == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20765a).f57683a = null;
        super.onDetachedFromWindow();
    }

    public final void setPresenter(AbstractC20765a abstractC20765a) {
        l.e(abstractC20765a, "<set-?>");
        this.f58398t = abstractC20765a;
    }
}
