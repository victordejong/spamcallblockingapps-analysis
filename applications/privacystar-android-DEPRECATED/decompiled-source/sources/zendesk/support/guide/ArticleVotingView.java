package zendesk.support.guide;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import org.apache.commons.p018io.IOUtils;
import zendesk.support.ArticleVote;
import zendesk.support.ArticleVoteStorage;
import zendesk.support.HelpCenterProvider;
import zendesk.support.UiUtils;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ArticleVotingView.class */
public class ArticleVotingView extends RelativeLayout {
    private Long articleId;
    private ArticleVote articleVote;
    private ArticleVoteStorage articleVoteStorage;
    private ImageButton downvoteButton;
    private ViewGroup downvoteButtonFrame;
    private HelpCenterProvider helpCenterProvider;
    private ImageButton upvoteButton;
    private ViewGroup upvoteButtonFrame;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: zendesk.support.guide.ArticleVotingView$6 */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ArticleVotingView$6.class */
    public static /* synthetic */ class C27606 {
        static final /* synthetic */ int[] $SwitchMap$zendesk$support$guide$ArticleVotingView$VoteState = new int[VoteState.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$support$guide$ArticleVotingView$VoteState[VoteState.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$support$guide$ArticleVotingView$VoteState[VoteState.UPVOTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$zendesk$support$guide$ArticleVotingView$VoteState[VoteState.DOWNVOTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ArticleVotingView$VoteState.class */
    public enum VoteState {
        UPVOTED,
        DOWNVOTED,
        NONE;

        static VoteState fromArticleVote(ArticleVote articleVote) {
            if (articleVote == null || articleVote.getValue() == null) {
                return NONE;
            }
            int intValue = articleVote.getValue().intValue();
            return intValue > 0 ? UPVOTED : intValue < 0 ? DOWNVOTED : NONE;
        }
    }

    public ArticleVotingView(Context context) {
        super(context);
        setupViews(context);
    }

    public ArticleVotingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setupViews(context);
    }

    public ArticleVotingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setupViews(context);
    }

    private GradientDrawable buildButtonBackground(Context context, int i) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C1790R.dimen.zs_help_voting_button_border_corner_radius);
        int color = ContextCompat.getColor(context, C1790R.color.zs_help_voting_button_border);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(C1790R.dimen.zs_help_voting_button_border_width);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimensionPixelSize);
        gradientDrawable.setColor(i);
        gradientDrawable.setStroke(dimensionPixelSize2, color);
        return gradientDrawable;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    private ColorStateList colorStateList(int i, int i2) {
        return new ColorStateList(new int[]{new int[]{16843518}, new int[]{16842919}, new int[0]}, new int[]{i, i, i2});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downvoteArticle() {
        if (this.articleId == null) {
            Logger.m289w("ViewArticleActivity", "Cannot downvote article, articleId is null. Make sure you've called bindTo()!", new Object[0]);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("hcp == null -> ");
        sb.append(this.helpCenterProvider == null);
        Logger.m295e("ViewArticleActivity", sb.toString(), new Object[0]);
        this.helpCenterProvider.downvoteArticle(this.articleId, new ZendeskCallback<ArticleVote>() { // from class: zendesk.support.guide.ArticleVotingView.4
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                Logger.m298d("ViewArticleActivity", "Failed to downvote article. " + errorResponse, new Object[0]);
                ArticleVotingView.this.announceForAccessibility(ArticleVotingView.this.getResources().getString(C1790R.string.zs_view_article_voted_failed_accessibility_announce));
                ArticleVotingView.this.updateButtons(VoteState.fromArticleVote(ArticleVotingView.this.articleVote));
                ArticleVotingView.this.setVotingButtonsClickable(true);
            }

            public void onSuccess(ArticleVote articleVote) {
                Logger.m298d("ViewArticleActivity", "Successfully downvoted article!", new Object[0]);
                ArticleVotingView.this.articleVote = articleVote;
                ArticleVotingView.this.announceForAccessibility(ArticleVotingView.this.getResources().getString(C1790R.string.zs_view_article_voted_no_accessibility_announce));
                ArticleVotingView.this.articleVoteStorage.storeArticleVote(ArticleVotingView.this.articleId, articleVote);
                ArticleVotingView.this.setVotingButtonsClickable(true);
            }
        });
    }

    private StateListDrawable getVotingButtonBackground(int i) {
        GradientDrawable buildButtonBackground = buildButtonBackground(getContext(), i);
        GradientDrawable buildButtonBackground2 = buildButtonBackground(getContext(), -1);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16843518}, buildButtonBackground);
        stateListDrawable.addState(new int[]{16842919}, buildButtonBackground);
        stateListDrawable.addState(new int[0], buildButtonBackground2);
        return stateListDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeVote() {
        if (this.articleId == null) {
            Logger.m289w("ViewArticleActivity", "Article vote was null, could not remove vote", new Object[0]);
        } else if (this.articleVote.getId() != null) {
            this.helpCenterProvider.deleteVote(this.articleVote.getId(), new ZendeskCallback<Void>() { // from class: zendesk.support.guide.ArticleVotingView.5
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    Logger.m298d("ViewArticleActivity", "Failed to remove vote. " + errorResponse.getResponseBody() + IOUtils.LINE_SEPARATOR_UNIX + errorResponse.getResponseBodyType() + IOUtils.LINE_SEPARATOR_UNIX + errorResponse.getUrl(), new Object[0]);
                    ArticleVotingView.this.updateButtons(VoteState.fromArticleVote(ArticleVotingView.this.articleVote));
                    ArticleVotingView.this.setVotingButtonsClickable(true);
                }

                public void onSuccess(Void r5) {
                    Logger.m298d("ViewArticleActivity", "Successfully removed vote!", new Object[0]);
                    ArticleVotingView.this.articleVote = null;
                    ArticleVotingView.this.articleVoteStorage.removeStoredArticleVote(ArticleVotingView.this.articleId);
                    ArticleVotingView.this.setVotingButtonsClickable(true);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVotingButtonsClickable(boolean z) {
        this.upvoteButton.setClickable(z);
        this.downvoteButton.setClickable(z);
    }

    private void setupViews(Context context) {
        LayoutInflater.from(context).inflate(C1790R.C1794layout.zs_view_article_voting, this);
        this.upvoteButtonFrame = (ViewGroup) findViewById(C1790R.C1793id.upvote_button_frame);
        this.upvoteButton = (ImageButton) findViewById(C1790R.C1793id.upvote_button);
        this.downvoteButtonFrame = (ViewGroup) findViewById(C1790R.C1793id.downvote_button_frame);
        this.downvoteButton = (ImageButton) findViewById(C1790R.C1793id.downvote_button);
        int themeAttributeToColor = UiUtils.themeAttributeToColor(C1790R.C1791attr.colorPrimary, getContext(), C1790R.color.zs_fallback_text_color);
        themeVotingButton(this.upvoteButton, C1790R.C1792drawable.zs_ic_thumb_up, themeAttributeToColor);
        themeVotingButton(this.downvoteButton, C1790R.C1792drawable.zs_ic_thumb_down, themeAttributeToColor);
        this.upvoteButton.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.ArticleVotingView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VoteState voteState;
                ArticleVotingView.this.setVotingButtonsClickable(false);
                if (ArticleVotingView.this.articleVote == null || ArticleVotingView.this.articleVote.getValue() == null || !ArticleVotingView.this.articleVote.getValue().equals(1)) {
                    voteState = VoteState.UPVOTED;
                    ArticleVotingView.this.upvoteArticle();
                } else {
                    voteState = VoteState.NONE;
                    ArticleVotingView.this.removeVote();
                }
                ArticleVotingView.this.updateButtons(voteState);
            }
        });
        this.downvoteButton.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.guide.ArticleVotingView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VoteState voteState;
                ArticleVotingView.this.setVotingButtonsClickable(false);
                if (ArticleVotingView.this.articleVote == null || ArticleVotingView.this.articleVote.getValue() == null || !ArticleVotingView.this.articleVote.getValue().equals(-1)) {
                    voteState = VoteState.DOWNVOTED;
                    ArticleVotingView.this.downvoteArticle();
                } else {
                    voteState = VoteState.NONE;
                    ArticleVotingView.this.removeVote();
                }
                ArticleVotingView.this.updateButtons(voteState);
            }
        });
    }

    private void themeVotingButton(ImageButton imageButton, int i, int i2) {
        ViewCompat.setBackground(imageButton, getVotingButtonBackground(i2));
        Drawable wrap = DrawableCompat.wrap(ContextCompat.getDrawable(getContext(), i));
        DrawableCompat.setTintList(wrap, colorStateList(-1, i2));
        DrawableCompat.setTintMode(wrap, PorterDuff.Mode.SRC_IN);
        imageButton.setImageDrawable(wrap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateButtons(VoteState voteState) {
        if (voteState == VoteState.NONE) {
            this.upvoteButtonFrame.setActivated(false);
            this.downvoteButtonFrame.setActivated(false);
        } else if (voteState == VoteState.UPVOTED) {
            this.upvoteButtonFrame.setActivated(true);
            this.downvoteButtonFrame.setActivated(false);
        } else if (voteState == VoteState.DOWNVOTED) {
            this.upvoteButtonFrame.setActivated(false);
            this.downvoteButtonFrame.setActivated(true);
        }
        updateContentDesc(voteState);
    }

    private void updateContentDesc(VoteState voteState) {
        switch (C27606.$SwitchMap$zendesk$support$guide$ArticleVotingView$VoteState[voteState.ordinal()]) {
            case 1:
                this.upvoteButton.setContentDescription(getResources().getString(C1790R.string.zs_view_article_vote_yes_accessibility));
                this.downvoteButton.setContentDescription(getResources().getString(C1790R.string.zs_view_article_vote_no_accessibility));
                return;
            case 2:
                this.upvoteButton.setContentDescription(getResources().getString(C1790R.string.zs_view_article_vote_yes_remove_accessibility));
                this.downvoteButton.setContentDescription(getResources().getString(C1790R.string.zs_view_article_vote_no_accessibility));
                return;
            case 3:
                this.upvoteButton.setContentDescription(getResources().getString(C1790R.string.zs_view_article_vote_yes_accessibility));
                this.downvoteButton.setContentDescription(getResources().getString(C1790R.string.zs_view_article_vote_no_remove_accessibility));
                return;
            default:
                Logger.m298d("ViewArticleActivity", "Unhandled voteState case", new Object[0]);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void upvoteArticle() {
        if (this.articleId == null) {
            Logger.m289w("ViewArticleActivity", "Cannot upvote article, articleId is null. Make sure you've called bindTo()!", new Object[0]);
        } else {
            this.helpCenterProvider.upvoteArticle(this.articleId, new ZendeskCallback<ArticleVote>() { // from class: zendesk.support.guide.ArticleVotingView.3
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    Logger.m298d("ViewArticleActivity", "Failed to upvote article. " + errorResponse, new Object[0]);
                    ArticleVotingView.this.announceForAccessibility(ArticleVotingView.this.getResources().getString(C1790R.string.zs_view_article_voted_failed_accessibility_announce));
                    ArticleVotingView.this.updateButtons(VoteState.fromArticleVote(ArticleVotingView.this.articleVote));
                    ArticleVotingView.this.setVotingButtonsClickable(true);
                }

                public void onSuccess(ArticleVote articleVote) {
                    Logger.m298d("ViewArticleActivity", "Successfully upvoted article!", new Object[0]);
                    ArticleVotingView.this.articleVote = articleVote;
                    ArticleVotingView.this.announceForAccessibility(ArticleVotingView.this.getResources().getString(C1790R.string.zs_view_article_voted_yes_accessibility_announce));
                    ArticleVotingView.this.articleVoteStorage.storeArticleVote(ArticleVotingView.this.articleId, articleVote);
                    ArticleVotingView.this.setVotingButtonsClickable(true);
                }
            });
        }
    }

    public void bindTo(Long l, ArticleVoteStorage articleVoteStorage, HelpCenterProvider helpCenterProvider) {
        this.articleVoteStorage = articleVoteStorage;
        this.helpCenterProvider = helpCenterProvider;
        this.articleId = l;
        if (l != null) {
            this.articleVote = articleVoteStorage.getStoredArticleVote(l);
            updateButtons(VoteState.fromArticleVote(this.articleVote));
        }
    }
}
