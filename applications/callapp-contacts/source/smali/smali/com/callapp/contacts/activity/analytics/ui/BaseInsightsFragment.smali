.class public abstract Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;
.super Lcom/callapp/contacts/activity/base/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;
.implements Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;
.implements Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;,
        Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;
    }
.end annotation


# instance fields
.field protected cardLoadedListener:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;

.field protected cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

.field protected contact:Lcom/callapp/contacts/model/contact/ContactData;

.field private datePickerButton:Landroid/widget/FrameLayout;

.field private datePickerDates:Landroid/widget/TextView;

.field private datePickerYear:Landroid/widget/TextView;

.field protected enterFromBottomBar:Z

.field protected eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field protected presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field protected presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field private recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field private rootLayout:Landroid/widget/LinearLayout;

.field protected sourceForEvent:Ljava/lang/String;

.field private stopAutoScroll:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->enterFromBottomBar:Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private loadSelfContact()V
    .locals 1

    .line 199
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V

    .line 223
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private shouldAutoScroll()Z
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->isUserTouchedItOrItsChildrenOnce()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->stopAutoScroll:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateDateText(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;)V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerDates:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerYear:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 348
    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    const-string v1, " - "

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    .line 349
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->getDateText(I)Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerDates:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getStartDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getToday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerYear:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 352
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x1e

    .line 353
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->getDateText(I)Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerDates:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getStartDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getToday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerYear:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 357
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerDates:Landroid/widget/TextView;

    const v0, 0x7f120273

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerYear:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected addCardShowingAdEvent()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0161

    return v0
.end method

.method protected abstract getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
.end method

.method public synthetic lambda$null$0$BaseInsightsFragment()V
    .locals 2

    .line 331
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->shouldAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCardShowingAd$1$BaseInsightsFragment()V
    .locals 4

    .line 328
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->shouldAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    .line 330
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$BaseInsightsFragment$yKNx4zhiXSp_rwN6iRjSbRFBPL4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$BaseInsightsFragment$yKNx4zhiXSp_rwN6iRjSbRFBPL4;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onCardShowingAd(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
    .locals 1

    .line 326
    instance-of v0, p1, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsSmallAdCard;

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/callapp/contacts/activity/analytics/cards/AnalyticsLargeAdCard;

    if-eqz p1, :cond_1

    .line 327
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$BaseInsightsFragment$0ATtQ8ENAotzUp6CzivFmMdtAKs;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$BaseInsightsFragment$0ATtQ8ENAotzUp6CzivFmMdtAKs;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 104
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$1;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    .line 173
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 175
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$2;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    .line 186
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    .line 188
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/InsightActivity;->getCardLoadedListener()Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->cardLoadedListener:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;

    .line 189
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->loadSelfContact()V

    .line 191
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->addCardShowingAdEvent()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a052b

    .line 229
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->rootLayout:Landroid/widget/LinearLayout;

    const p3, 0x7f0600f3

    .line 231
    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const p2, 0x7f0a01f5

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    .line 233
    new-instance p3, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$4;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 264
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iget-object p3, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V

    const p2, 0x7f0a00d9

    .line 266
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerDates:Landroid/widget/TextView;

    const p2, 0x7f0a00da

    .line 267
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerYear:Landroid/widget/TextView;

    .line 269
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerDates:Landroid/widget/TextView;

    const p3, 0x7f0601ec

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerYear:Landroid/widget/TextView;

    const p3, 0x7f0601cc

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a02e2

    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->datePickerButton:Landroid/widget/FrameLayout;

    .line 274
    new-instance p3, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->updateDateText(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;)V

    .line 284
    new-instance p2, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$6;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$6;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V

    .line 289
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 291
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object p3, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    return-object p1
.end method

.method public onDatePick(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;)V
    .locals 3

    .line 309
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->updateDateText(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;)V

    .line 311
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 317
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;->onDestroy()V

    .line 318
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onNewSelected()V
    .locals 1

    .line 399
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->updateDateText(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;)V

    .line 400
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->e()V

    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->stopAutoScroll:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 365
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFragment;->onPause()V

    .line 366
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->e()V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->stopAutoScroll:Z

    :cond_0
    return-void
.end method

.method public setEnterViaBottomBar(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->enterFromBottomBar:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->sourceForEvent:Ljava/lang/String;

    return-void
.end method
