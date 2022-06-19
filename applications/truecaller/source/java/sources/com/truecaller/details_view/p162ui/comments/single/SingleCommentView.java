package com.truecaller.details_view.p162ui.comments.single;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.p162ui.comments.widget.CommentViewModel;
import com.truecaller.details_view.p162ui.comments.widget.ThumbState;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1304k.C20910q;
import p193e.p194a.p1275v.p1305l.AbstractC20914b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.s;
import s1.z.b.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006JE\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0019\u001a\u00020\u00148\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;", "commentViewModel", "Ls1/s;", "setAvatar", "(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V", "Lkotlin/Function1;", "upVoteClick", "downVoteClick", "f1", "(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Ls1/z/b/l;Ls1/z/b/l;)V", "Le/a/u3/g;", "u", "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/v/k/q;", "v", "Le/a/v/k/q;", "getBinding", "()Le/a/v/k/q;", "binding", "Le/a/p5/h0;", "t", "Le/a/p5/h0;", "getThemedResourceProvider", "()Le/a/p5/h0;", "setThemedResourceProvider", "(Le/a/p5/h0;)V", "themedResourceProvider", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.ui.comments.single.SingleCommentView */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/comments/single/SingleCommentView.class */
public final class SingleCommentView extends ConstraintLayout {
    @Inject

    /* renamed from: t */
    public AbstractC19233h0 f11748t;
    @Inject

    /* renamed from: u */
    public C20592g f11749u;

    /* renamed from: v */
    public final C20910q f11750v;

    /* renamed from: com.truecaller.details_view.ui.comments.single.SingleCommentView$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/details_view/ui/comments/single/SingleCommentView$a.class */
    public static final class View$OnClickListenerC3874a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f11751a;

        /* renamed from: b */
        public final /* synthetic */ Object f11752b;

        /* renamed from: c */
        public final /* synthetic */ Object f11753c;

        /* renamed from: d */
        public final /* synthetic */ Object f11754d;

        /* renamed from: e */
        public final /* synthetic */ Object f11755e;

        public View$OnClickListenerC3874a(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            this.f11751a = i;
            this.f11752b = obj;
            this.f11753c = obj2;
            this.f11754d = obj3;
            this.f11755e = obj4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f11751a;
            if (i == 0) {
                l lVar = (l) this.f11754d;
                if (lVar == null) {
                    return;
                }
                s sVar = (s) lVar.d((CommentViewModel) this.f11753c);
            } else if (i != 1) {
                throw null;
            } else {
                l lVar2 = (l) this.f11755e;
                if (lVar2 == null) {
                    return;
                }
                s sVar2 = (s) lVar2.d((CommentViewModel) this.f11753c);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleCommentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C3857R.layout.view_single_comment, this);
        int i = C3857R.C3859id.avatar;
        AvatarXView avatarXView = (AvatarXView) findViewById(i);
        if (avatarXView != null) {
            i = C3857R.C3859id.comment;
            TextView textView = (TextView) findViewById(i);
            if (textView != null) {
                i = C3857R.C3859id.ivDownVote;
                ImageView imageView = (ImageView) findViewById(i);
                if (imageView != null) {
                    i = C3857R.C3859id.ivUpVote;
                    ImageView imageView2 = (ImageView) findViewById(i);
                    if (imageView2 != null) {
                        i = C3857R.C3859id.originalPoster;
                        TextView textView2 = (TextView) findViewById(i);
                        if (textView2 != null) {
                            i = C3857R.C3859id.postedDate;
                            TextView textView3 = (TextView) findViewById(i);
                            if (textView3 != null) {
                                i = C3857R.C3859id.separator;
                                TextView textView4 = (TextView) findViewById(i);
                                if (textView4 != null) {
                                    i = C3857R.C3859id.tvDownVote;
                                    TextView textView5 = (TextView) findViewById(i);
                                    if (textView5 != null) {
                                        i = C3857R.C3859id.tvUpVote;
                                        TextView textView6 = (TextView) findViewById(i);
                                        if (textView6 != null) {
                                            i = C3857R.C3859id.voteCommentGroup;
                                            Group group = (Group) findViewById(i);
                                            if (group != null) {
                                                C20910q c20910q = new C20910q(this, avatarXView, textView, imageView, imageView2, textView2, textView3, textView4, textView5, textView6, group);
                                                s1.z.c.l.d(c20910q, "ViewSingleCommentBinding…ater.from(context), this)");
                                                this.f11750v = c20910q;
                                                Context applicationContext = context.getApplicationContext();
                                                Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider");
                                                ((AbstractC20914b) applicationContext).mo10529v().mo10533q(this);
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    private final void setAvatar(CommentViewModel commentViewModel) {
        AbstractC19233h0 abstractC19233h0 = this.f11748t;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("themedResourceProvider");
            throw null;
        }
        C8243a c8243a = new C8243a(abstractC19233h0);
        this.f11750v.f58821b.setPresenter(c8243a);
        C8243a.m28739ok(c8243a, commentViewModel.f11759d, false, 2, null);
    }

    /* renamed from: f1 */
    public final void m35433f1(CommentViewModel commentViewModel, l<? super CommentViewModel, s> lVar, l<? super CommentViewModel, s> lVar2) {
        s1.z.c.l.e(commentViewModel, "commentViewModel");
        C20910q c20910q = this.f11750v;
        setAvatar(commentViewModel);
        TextView textView = c20910q.f58825f;
        s1.z.c.l.d(textView, "originalPoster");
        textView.setText(commentViewModel.f11758c);
        TextView textView2 = c20910q.f58826g;
        s1.z.c.l.d(textView2, "postedDate");
        textView2.setText(commentViewModel.f11760e);
        TextView textView3 = c20910q.f58822c;
        s1.z.c.l.d(textView3, "comment");
        textView3.setText(commentViewModel.f11761f);
        Group group = c20910q.f58829j;
        s1.z.c.l.d(group, "voteCommentGroup");
        C20592g c20592g = this.f11749u;
        if (c20592g == null) {
            s1.z.c.l.l("featuresRegistry");
            throw null;
        }
        C19286f.m13683U(group, c20592g.f57853W2.m10941a(c20592g, C20592g.f57695p6[204]).isEnabled());
        ThumbState thumbState = commentViewModel.f11762g;
        if ((thumbState instanceof ThumbState.ThumbUpDefault) || (thumbState instanceof ThumbState.ThumbUpPressed)) {
            c20910q.f58824e.setOnClickListener(new View$OnClickListenerC3874a(0, this, commentViewModel, lVar, lVar2));
            c20910q.f58824e.setColorFilter(commentViewModel.f11762g.f11767d, PorterDuff.Mode.SRC_IN);
            c20910q.f58824e.setImageResource(commentViewModel.f11762g.f11764a);
            c20910q.f58828i.setTextColor(commentViewModel.f11762g.f11766c);
            TextView textView4 = c20910q.f58828i;
            s1.z.c.l.d(textView4, "tvUpVote");
            textView4.setText(commentViewModel.f11762g.f11765b);
        }
        ThumbState thumbState2 = commentViewModel.f11763h;
        if (!(thumbState2 instanceof ThumbState.ThumbDownDefault) && !(thumbState2 instanceof ThumbState.ThumbDownPressed)) {
            return;
        }
        c20910q.f58823d.setOnClickListener(new View$OnClickListenerC3874a(1, this, commentViewModel, lVar, lVar2));
        c20910q.f58823d.setColorFilter(commentViewModel.f11763h.f11767d, PorterDuff.Mode.SRC_IN);
        c20910q.f58823d.setImageResource(commentViewModel.f11763h.f11764a);
        c20910q.f58827h.setTextColor(commentViewModel.f11763h.f11766c);
        TextView textView5 = c20910q.f58827h;
        s1.z.c.l.d(textView5, "tvDownVote");
        textView5.setText(commentViewModel.f11763h.f11765b);
    }

    public final C20910q getBinding() {
        return this.f11750v;
    }

    public final C20592g getFeaturesRegistry() {
        C20592g c20592g = this.f11749u;
        if (c20592g != null) {
            return c20592g;
        }
        s1.z.c.l.l("featuresRegistry");
        throw null;
    }

    public final AbstractC19233h0 getThemedResourceProvider() {
        AbstractC19233h0 abstractC19233h0 = this.f11748t;
        if (abstractC19233h0 != null) {
            return abstractC19233h0;
        }
        s1.z.c.l.l("themedResourceProvider");
        throw null;
    }

    public final void setFeaturesRegistry(C20592g c20592g) {
        s1.z.c.l.e(c20592g, "<set-?>");
        this.f11749u = c20592g;
    }

    public final void setThemedResourceProvider(AbstractC19233h0 abstractC19233h0) {
        s1.z.c.l.e(abstractC19233h0, "<set-?>");
        this.f11748t = abstractC19233h0;
    }
}
