.class Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->b(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->b(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7

    .line 151
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Z

    .line 152
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->e(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$3;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->getCurrentPage()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a(Ljava/lang/String;)I

    move-result v0

    .line 1154
    iget-object v1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    if-eqz v1, :cond_2

    .line 1155
    new-instance v1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    iget-object v2, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Ljava/util/List;Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;)V

    iput-object v1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->h:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    .line 1156
    iget-object v1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    iget-object v2, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->h:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 1157
    iget-object v1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->f:Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;

    iget-object v2, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a:Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/CallAppAnimatedViewPagerIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 1222
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1224
    :goto_0
    iget-object v3, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1225
    iget-object v3, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1226
    iget-object v4, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    .line 1227
    new-instance v5, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;

    invoke-direct {v5, v3}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;-><init>(Landroid/content/Context;)V

    .line 1228
    iget-object v6, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1229
    iget-object v6, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {v4}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getIconRes()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->setImageResource(I)V

    .line 1231
    invoke-virtual {v4}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getTopTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->setText(Ljava/lang/String;)V

    if-lez v2, :cond_0

    .line 1233
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07018f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1234
    invoke-virtual {v5}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v4, 0x1

    .line 1236
    invoke-virtual {v5, v4}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->setShouldResizeUponCurrentStep(Z)V

    .line 1238
    iget-object v6, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v2, v6, :cond_0

    .line 1239
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d02d0

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/skyfishjy/library/RippleBackground;

    iput-object v3, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    .line 1240
    iget-object v3, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->g:Lcom/skyfishjy/library/RippleBackground;

    const v4, 0x7f0a04ea

    .line 2128
    invoke-virtual {v5, v4}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2129
    invoke-virtual {v3}, Lcom/skyfishjy/library/RippleBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1159
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->setCurrentItem(IZ)V

    .line 153
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    return-void
.end method
