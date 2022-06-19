package p193e.p194a.p1275v.p1276a.p1280c;

import com.truecaller.contactfeedback.presentation.model.CommentFeedbackModel;
import com.truecaller.contactfeedback.presentation.model.VoteStatus;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.p162ui.comments.widget.CommentViewModel;
import com.truecaller.details_view.p162ui.comments.widget.ThumbState;
import java.util.Locale;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.AbstractC19352y;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8246b;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.z.c.l;
/* renamed from: e.a.v.a.c.b */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c/b.class */
public final class C20697b {

    /* renamed from: a */
    public final AbstractC19352y f58284a;

    /* renamed from: b */
    public final AbstractC19233h0 f58285b;

    /* renamed from: c */
    public final AbstractC8246b<Contact> f58286c;

    @Inject
    public C20697b(AbstractC19352y abstractC19352y, AbstractC19233h0 abstractC19233h0, AbstractC8246b<Contact> abstractC8246b) {
        l.e(abstractC19352y, "numberFormatter");
        l.e(abstractC19233h0, "themedResourceProvider");
        l.e(abstractC8246b, "avatarXConfigProvider");
        this.f58284a = abstractC19352y;
        this.f58285b = abstractC19233h0;
        this.f58286c = abstractC8246b;
    }

    /* renamed from: a */
    public final CommentViewModel m10832a(CommentFeedbackModel commentFeedbackModel) {
        String str;
        ThumbState.ThumbUpPressed thumbUpPressed;
        ThumbState.ThumbDownPressed thumbDownPressed;
        l.e(commentFeedbackModel, "commentFeedBackModel");
        if (commentFeedbackModel.getAnonymous()) {
            str = this.f58285b.mo13768b(C3857R.string.details_view_comments_anonymous_poster, new Object[0]);
            l.d(str, "themedResourceProvider.g…omments_anonymous_poster)");
        } else {
            str = commentFeedbackModel.getName();
        }
        Contact contact = new Contact();
        contact.m35546S0(str);
        contact.m35550P0(commentFeedbackModel.getAvatarUrl());
        AbstractC19352y abstractC19352y = this.f58284a;
        Locale locale = C8502h.f26287b;
        l.d(locale, "LocaleManager.getAppLocale()");
        String mo13416b = abstractC19352y.mo13416b(locale, commentFeedbackModel.getUpVotes());
        AbstractC19352y abstractC19352y2 = this.f58284a;
        Locale locale2 = C8502h.f26287b;
        l.d(locale2, "LocaleManager.getAppLocale()");
        String mo13416b2 = abstractC19352y2.mo13416b(locale2, commentFeedbackModel.getDownVotes());
        int upVotes = commentFeedbackModel.getUpVotes();
        if (commentFeedbackModel.getVoteStatus() == VoteStatus.UPVOTED) {
            int mo13758l = this.f58285b.mo13758l(C3857R.attr.tcx_brandBackgroundBlue);
            thumbUpPressed = new ThumbState.ThumbUpPressed(upVotes, mo13416b, mo13758l, mo13758l);
        } else {
            thumbUpPressed = new ThumbState.ThumbUpDefault(upVotes, mo13416b, this.f58285b.mo13758l(C3857R.attr.tcx_textPrimary), this.f58285b.mo13758l(C3857R.attr.tcx_detailsViewThumbColor));
        }
        int downVotes = commentFeedbackModel.getDownVotes();
        if (commentFeedbackModel.getVoteStatus() == VoteStatus.DOWNVOTED) {
            int mo13758l2 = this.f58285b.mo13758l(C3857R.attr.tcx_alertBackgroundRed);
            thumbDownPressed = new ThumbState.ThumbDownPressed(downVotes, mo13416b2, mo13758l2, mo13758l2);
        } else {
            thumbDownPressed = new ThumbState.ThumbDownDefault(downVotes, mo13416b2, this.f58285b.mo13758l(C3857R.attr.tcx_textPrimary), this.f58285b.mo13758l(C3857R.attr.tcx_detailsViewThumbColor));
        }
        return new CommentViewModel(commentFeedbackModel.getId(), commentFeedbackModel.getPhoneNumber(), str, this.f58286c.mo9781a(contact), commentFeedbackModel.getPostedAt(), commentFeedbackModel.getText(), thumbUpPressed, thumbDownPressed);
    }
}
