package p193e.p194a.p1275v.p1276a.p1280c.p1281a;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.presentation.addcomment.AddCommentActivity;
import com.truecaller.contactfeedback.repo.SortType;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.p162ui.comments.all.AllCommentsActivity;
import com.truecaller.details_view.p162ui.comments.single.SingleCommentView;
import com.truecaller.details_view.p162ui.comments.widget.CommentViewModel;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1138q.p1144h.C19443b;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1304k.C20901h;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\u0006J+\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0006J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0006J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u0006J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0019\u0010+\u001a\u00020&8\u0006@\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006,"}, d2 = {"Le/a/v/a/c/a/a;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/v/a/c/a/c;", "Le/a/v/a/s0/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;", "first", "second", "third", "X", "(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V", "", "count", "v", "(I)V", "B0", "Lcom/truecaller/data/entity/Contact;", "spammer", "M0", "(Lcom/truecaller/data/entity/Contact;)V", "w0", "E0", "m0", "Le/a/v/a/s;", "detailsViewModel", "K0", "(Le/a/v/a/s;)V", "Le/a/v/a/c/a/b;", "t", "Le/a/v/a/c/a/b;", "getPresenter", "()Le/a/v/a/c/a/b;", "setPresenter", "(Le/a/v/a/c/a/b;)V", "presenter", "Le/a/v/k/h;", "u", "Le/a/v/k/h;", "getBinding", "()Le/a/v/k/h;", "binding", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.c.a.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c/a/a.class */
public final class C20687a extends ConstraintLayout implements AbstractC20692c, AbstractC20848a {
    @Inject

    /* renamed from: t */
    public AbstractC20691b f58263t;

    /* renamed from: u */
    public final C20901h f58264u;

    /* renamed from: e.a.v.a.c.a.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/v/a/c/a/a$a.class */
    public static final class C20688a extends m implements l<CommentViewModel, s> {

        /* renamed from: b */
        public final /* synthetic */ int f58265b;

        /* renamed from: c */
        public final /* synthetic */ Object f58266c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20688a(int i, Object obj) {
            super(1);
            this.f58265b = i;
            this.f58266c = obj;
        }

        /* renamed from: d */
        public final Object m10846d(Object obj) {
            s sVar = s.a;
            int i = this.f58265b;
            if (i == 0) {
                CommentViewModel commentViewModel = (CommentViewModel) obj;
                s1.z.c.l.e(commentViewModel, "it");
                ((C20695f) ((C20687a) this.f58266c).getPresenter()).m10833Jj(commentViewModel);
                return sVar;
            } else if (i == 1) {
                CommentViewModel commentViewModel2 = (CommentViewModel) obj;
                s1.z.c.l.e(commentViewModel2, "it");
                ((C20695f) ((C20687a) this.f58266c).getPresenter()).m10834Ij(commentViewModel2);
                return sVar;
            } else if (i == 2) {
                CommentViewModel commentViewModel3 = (CommentViewModel) obj;
                s1.z.c.l.e(commentViewModel3, "it");
                ((C20695f) ((C20687a) this.f58266c).getPresenter()).m10833Jj(commentViewModel3);
                return sVar;
            } else if (i == 3) {
                CommentViewModel commentViewModel4 = (CommentViewModel) obj;
                s1.z.c.l.e(commentViewModel4, "it");
                ((C20695f) ((C20687a) this.f58266c).getPresenter()).m10834Ij(commentViewModel4);
                return sVar;
            } else if (i == 4) {
                CommentViewModel commentViewModel5 = (CommentViewModel) obj;
                s1.z.c.l.e(commentViewModel5, "it");
                ((C20695f) ((C20687a) this.f58266c).getPresenter()).m10833Jj(commentViewModel5);
                return sVar;
            } else if (i != 5) {
                throw null;
            } else {
                CommentViewModel commentViewModel6 = (CommentViewModel) obj;
                s1.z.c.l.e(commentViewModel6, "it");
                ((C20695f) ((C20687a) this.f58266c).getPresenter()).m10834Ij(commentViewModel6);
                return sVar;
            }
        }
    }

    /* renamed from: e.a.v.a.c.a.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/c/a/a$b.class */
    public static final class View$OnClickListenerC20689b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Contact f58268b;

        public View$OnClickListenerC20689b(Contact contact) {
            C20687a.this = r4;
            this.f58268b = contact;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context context = C20687a.this.getContext();
            s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
            AddCommentActivity.m35610pa(context, this.f58268b);
        }
    }

    /* renamed from: e.a.v.a.c.a.a$c */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/c/a/a$c.class */
    public static final class View$OnClickListenerC20690c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Contact f58270b;

        public View$OnClickListenerC20690c(Contact contact) {
            C20687a.this = r4;
            this.f58270b = contact;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context context = C20687a.this.getContext();
            s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
            Contact contact = this.f58270b;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(contact, "spammer");
            Intent putExtra = new Intent(context, AllCommentsActivity.class).putExtra("spammer", contact);
            s1.z.c.l.d(putExtra, "Intent(context, AllComme…tra(KEY_SPAMMER, spammer)");
            context.startActivity(putExtra);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20687a(android.content.Context r15, android.util.AttributeSet r16, int r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1280c.p1281a.C20687a.<init>(android.content.Context, android.util.AttributeSet, int, int, int):void");
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1281a.AbstractC20692c
    /* renamed from: B0 */
    public void mo10845B0() {
        C19286f.m13689O(this);
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1281a.AbstractC20692c
    /* renamed from: E0 */
    public void mo10844E0(Contact contact) {
        s1.z.c.l.e(contact, "spammer");
        this.f58264u.f58789k.setOnClickListener(new View$OnClickListenerC20690c(contact));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a
    /* renamed from: K0 */
    public void mo10605K0(C20847s c20847s) {
        s1.z.c.l.e(c20847s, "detailsViewModel");
        AbstractC20691b abstractC20691b = this.f58263t;
        if (abstractC20691b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C20695f c20695f = (C20695f) abstractC20691b;
        Objects.requireNonNull(c20695f);
        s1.z.c.l.e(c20847s, "detailsViewModel");
        C19443b mo13323d = c20695f.f58279g.mo13323d(c20847s.f58578a, SortType.DEFAULT, new C20694e(c20695f, c20847s));
        d.w2(c20695f, (f) null, (j0) null, new C20693d(mo13323d, null, c20695f), 3, (Object) null);
        c20695f.f58277e = mo13323d;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1281a.AbstractC20692c
    /* renamed from: M0 */
    public void mo10843M0(Contact contact) {
        s1.z.c.l.e(contact, "spammer");
        TextView textView = this.f58264u.f58780b;
        s1.z.c.l.d(textView, "binding.addCommentButton");
        C19286f.m13684T(textView);
        this.f58264u.f58780b.setOnClickListener(new View$OnClickListenerC20689b(contact));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1281a.AbstractC20692c
    /* renamed from: X */
    public void mo10842X(CommentViewModel commentViewModel, CommentViewModel commentViewModel2, CommentViewModel commentViewModel3) {
        s1.z.c.l.e(commentViewModel, "first");
        C19286f.m13684T(this);
        this.f58264u.f58782d.m35433f1(commentViewModel, new C20688a(4, this), new C20688a(5, this));
        if (commentViewModel2 != null) {
            View view = this.f58264u.f58783e;
            s1.z.c.l.d(view, "binding.firstDivider");
            C19286f.m13684T(view);
            SingleCommentView singleCommentView = this.f58264u.f58784f;
            s1.z.c.l.d(singleCommentView, "binding.secondComment");
            C19286f.m13684T(singleCommentView);
            this.f58264u.f58784f.m35433f1(commentViewModel2, new C20688a(0, this), new C20688a(1, this));
        } else {
            View view2 = this.f58264u.f58783e;
            s1.z.c.l.d(view2, "binding.firstDivider");
            C19286f.m13689O(view2);
            SingleCommentView singleCommentView2 = this.f58264u.f58784f;
            s1.z.c.l.d(singleCommentView2, "binding.secondComment");
            C19286f.m13689O(singleCommentView2);
        }
        if (commentViewModel3 != null) {
            View view3 = this.f58264u.f58785g;
            s1.z.c.l.d(view3, "binding.secondDivider");
            C19286f.m13684T(view3);
            SingleCommentView singleCommentView3 = this.f58264u.f58786h;
            s1.z.c.l.d(singleCommentView3, "binding.thirdComment");
            C19286f.m13684T(singleCommentView3);
            this.f58264u.f58786h.m35433f1(commentViewModel3, new C20688a(2, this), new C20688a(3, this));
            return;
        }
        View view4 = this.f58264u.f58785g;
        s1.z.c.l.d(view4, "binding.secondDivider");
        C19286f.m13689O(view4);
        SingleCommentView singleCommentView4 = this.f58264u.f58786h;
        s1.z.c.l.d(singleCommentView4, "binding.thirdComment");
        C19286f.m13689O(singleCommentView4);
        View view5 = this.f58264u.f58787i;
        s1.z.c.l.d(view5, "binding.thirdDivider");
        C19286f.m13689O(view5);
    }

    public final C20901h getBinding() {
        return this.f58264u;
    }

    public final AbstractC20691b getPresenter() {
        AbstractC20691b abstractC20691b = this.f58263t;
        if (abstractC20691b != null) {
            return abstractC20691b;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1281a.AbstractC20692c
    /* renamed from: m0 */
    public void mo10841m0() {
        MaterialButton materialButton = this.f58264u.f58789k;
        s1.z.c.l.d(materialButton, "binding.viewAllButton");
        C19286f.m13689O(materialButton);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC20691b abstractC20691b = this.f58263t;
        if (abstractC20691b != null) {
            ((AbstractC20576b) abstractC20691b).f57683a = this;
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC20691b abstractC20691b = this.f58263t;
        if (abstractC20691b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C20695f) abstractC20691b).mo9806c();
        super.onDetachedFromWindow();
    }

    public final void setPresenter(AbstractC20691b abstractC20691b) {
        s1.z.c.l.e(abstractC20691b, "<set-?>");
        this.f58263t = abstractC20691b;
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1281a.AbstractC20692c
    /* renamed from: v */
    public void mo10840v(int i) {
        TextView textView = this.f58264u.f58788j;
        s1.z.c.l.d(textView, "binding.title");
        textView.setText(getContext().getString(C3857R.string.details_view_title_comments, Integer.valueOf(i)));
    }

    @Override // p193e.p194a.p1275v.p1276a.p1280c.p1281a.AbstractC20692c
    /* renamed from: w0 */
    public void mo10839w0() {
        TextView textView = this.f58264u.f58780b;
        s1.z.c.l.d(textView, "binding.addCommentButton");
        C19286f.m13689O(textView);
    }
}
