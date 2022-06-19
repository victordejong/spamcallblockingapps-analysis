.class Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;
.super Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

.field private final d:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

.field private final e:Lcom/callapp/contacts/widget/DrawingViewWithCallback;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Lcom/callapp/contacts/widget/DrawingViewWithCallback;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 34
    invoke-direct {v0, v2, v3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;-><init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)V

    .line 35
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->e:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    const v2, 0x7f0a00df

    .line 36
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->c:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    const v3, 0x7f0a02ea

    .line 37
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    iput-object v3, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->d:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    .line 38
    invoke-virtual {v2}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->startAnimation()V

    .line 39
    invoke-virtual {v3}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->startAnimation()V

    const v2, 0x7f0a016a

    .line 40
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a:Landroid/view/View;

    const v3, 0x7f0a016e

    .line 41
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->b:Landroid/view/View;

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isGif()Z

    move-result v4

    const v5, 0x7f0a04da

    const v6, 0x7f0a04d8

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v0, v6}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v0, v5}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 45
    new-instance v6, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerResourceUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    .line 46
    new-instance v9, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineResourceUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineCallDrawableRes()I

    move-result v13

    const/4 v14, -0x1

    const/4 v15, 0x1

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f010025

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    new-instance v4, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v0, v6}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 50
    new-instance v4, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v0, v5}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineCallDrawableRes()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :goto_0
    const v4, 0x7f060110

    .line 52
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$pw4HhKULdVJCV4pZCl-A8jK6FE4;

    invoke-direct {v6, v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$pw4HhKULdVJCV4pZCl-A8jK6FE4;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)V

    invoke-direct {v0, v5, v6}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(ILjava/lang/Runnable;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    new-instance v5, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$pfoYpqa4pKuetYeuPO2WWA_Xem4;

    invoke-direct {v5, v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$pfoYpqa4pKuetYeuPO2WWA_Xem4;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)V

    invoke-direct {v0, v4, v5}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(ILjava/lang/Runnable;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$0dWyElrSu-nPzFuN_h_wQmBS7Xg;

    invoke-direct {v3, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/-$$Lambda$TwoButtonAnsweringMethodViewController$0dWyElrSu-nPzFuN_h_wQmBS7Xg;-><init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    return-void
.end method

.method private a(ILjava/lang/Runnable;)Landroid/view/View$OnTouchListener;
    .locals 1

    .line 72
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController$1;-><init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;ILjava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)Lcom/callapp/contacts/widget/DrawingViewWithCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->e:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    return-object p0
.end method

.method private static synthetic a(Lcom/callapp/contacts/widget/DrawingViewWithCallback;Landroid/view/View;)V
    .locals 1

    .line 1091
    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b:Landroid/view/View;

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->getCallback()Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->onActionSelected(I)V

    :cond_0
    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->getCallback()Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 56
    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;->onActionSelected(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$0dWyElrSu-nPzFuN_h_wQmBS7Xg(Lcom/callapp/contacts/widget/DrawingViewWithCallback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a(Lcom/callapp/contacts/widget/DrawingViewWithCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$pfoYpqa4pKuetYeuPO2WWA_Xem4(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->c()V

    return-void
.end method

.method public static synthetic lambda$pw4HhKULdVJCV4pZCl-A8jK6FE4(Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->d:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;->c:Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;->stopAnimation()V

    .line 149
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->a()V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d0182

    return v0
.end method
