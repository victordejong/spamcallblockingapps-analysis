.class public abstract Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;
.super Lcom/callapp/contacts/util/BaseAdTransparentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$e;
.implements Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field private final NO_IM_PROTOCOL:I

.field private adapter:Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;

.field private contact:Lcom/callapp/contacts/model/contact/ContactData;

.field private final dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;",
            ">;"
        }
    .end annotation
.end field

.field private final dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field private final horizontalScrollViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private indicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private missedCallType:I

.field presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field private final presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->horizontalScrollViews:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->NO_IM_PROTOCOL:I

    .line 94
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->MISSED_CALL:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    .line 95
    new-instance v0, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v0}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 96
    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->MISSED_CALL:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-direct {v1, p0, v0, v2}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/event/bus/EventBus;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->removeItemFromList()V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getCurrentSingleMissedCallData()Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->closeOverlay()V

    return-void
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->deleteAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->callBtnLongClick(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->callBtnClick(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method private callBtnClick(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 4

    .line 480
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getContactId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 481
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ClickOverlyCallButton"

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private callBtnLongClick(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 2

    .line 467
    invoke-static {p0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 468
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$wNNkfv277B2uiiZ1R3W6nS-GuSk;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$wNNkfv277B2uiiZ1R3W6nS-GuSk;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/activity/-$$Lambda$BaseCallActivity$mGFgEC6pqoIon5WTJPHme5m9ICM;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 476
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    return-void
.end method

.method private closeOverlay()V
    .locals 0

    .line 569
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    return-void
.end method

.method private deleteAll()V
    .locals 6

    .line 557
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 558
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    .line 559
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->handleRemove(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 560
    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget v3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->missedCallType:I

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    goto :goto_0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->closeOverlay()V

    :cond_1
    return-void
.end method

.method private getCurrentSingleMissedCallData()Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRemove(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;)Lcom/callapp/framework/phone/Phone;
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->adapter:Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->c()V

    .line 604
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 605
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    return-object p1
.end method

.method private initListener()V
    .locals 2

    const v0, 0x7f0a0681

    .line 213
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$2;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    .line 221
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->setupCallButton(I)V

    const v0, 0x7f0a0684

    .line 223
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0683

    .line 238
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$4;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0247

    .line 246
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$5;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0659

    .line 253
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 254
    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f060088

    .line 180
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0600f3

    .line 181
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f0a0aa8

    .line 183
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    iput-object v3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 184
    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setBackgroundColor(I)V

    .line 185
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 186
    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    const v3, 0x7f0a0510

    .line 188
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 189
    invoke-virtual {v3, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setBackgroundColor(I)V

    .line 190
    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v2, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 191
    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v2, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeColor(I)V

    .line 192
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    const v1, 0x7f0a02d9

    .line 194
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 195
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v2, 0x7f0805f1

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const v0, 0x7f0a0566

    .line 196
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a055a

    .line 198
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 199
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f060244

    .line 200
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 201
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f06010e

    .line 203
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 204
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->horizontalScrollViews:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->horizontalScrollViews:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeItemFromList()V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getCurrentSingleMissedCallData()Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 290
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    .line 291
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v0}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 294
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->adapter:Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->c()V

    .line 295
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->missedCallType:I

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 296
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->closeOverlay()V

    :cond_2
    return-void
.end method

.method private setupCallButton(I)V
    .locals 3

    const v0, 0x7f0a0680

    .line 379
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x5dd

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5de

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    sget-object v1, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v1

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    sget-object v1, Lcom/callapp/contacts/manager/Singletons$SenderType;->VIBER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v1

    .line 392
    :goto_0
    new-instance v2, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$7;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    new-instance v2, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$8;

    invoke-direct {v2, p0, p1, v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$8;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;ILcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 433
    new-instance v2, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;

    invoke-direct {v2, p0, p1, v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;ILcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateHeaderByPosition(I)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    .line 310
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 312
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iput-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 314
    sget-object p1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    invoke-virtual {p0, v1, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private updateIndicatorsVisibility()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addPage(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;)V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    .line 323
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getNumberOfMissedCalls()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->setNumberOfMissedCalls(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->adapter:Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;

    if-nez p1, :cond_3

    .line 335
    new-instance p1, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getSubTitleId()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;-><init>(Ljava/util/List;I)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->adapter:Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    goto :goto_1

    .line 338
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter;->c()V

    .line 341
    :goto_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->updateIndicatorsVisibility()V

    return-void
.end method

.method public abstract getAnalyticsTag()Ljava/lang/String;
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d01aa

    return v0
.end method

.method public abstract getSubTitleId()I
.end method

.method public getThemeResId()I
    .locals 1

    .line 499
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getCallScreenTransparentTheme()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$callBtnLongClick$0$BaseCallActivity(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 1

    .line 470
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p0, p3, p1, v0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public synthetic lambda$callBtnLongClick$1$BaseCallActivity(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V
    .locals 1

    .line 471
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, v0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 346
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    .line 348
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 351
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->shouldUpdateCallButtion()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 352
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getImAddresses()Ljava/util/Collection;

    move-result-object p2

    const/4 v0, -0x1

    .line 354
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/16 v2, 0x5de

    if-eqz v1, :cond_2

    .line 355
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONIMaddress;

    .line 356
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONIMaddress;->getProtocol()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 357
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    sget-object v1, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v1

    .line 358
    invoke-interface {v1, p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5de

    goto :goto_1

    .line 362
    :cond_1
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONIMaddress;->getProtocol()I

    move-result v1

    const/16 v3, 0x5dd

    if-ne v1, v3, :cond_0

    .line 363
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    sget-object v1, Lcom/callapp/contacts/manager/Singletons$SenderType;->VIBER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v1

    .line 364
    invoke-interface {v1, p1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->canUseIm(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5dd

    goto :goto_0

    .line 372
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->setupCallButton(I)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 145
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->initListener()V

    .line 146
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->initView()V

    .line 147
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->initAd()V

    .line 148
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDeleteClick()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 165
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 167
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const/4 v3, 0x0

    .line 3091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a()V

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/bus/EventBus;->a()V

    return-void
.end method

.method public onDontShowClick()V
    .locals 5

    .line 588
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getCurrentSingleMissedCallData()Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->handleRemove(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;)Lcom/callapp/framework/phone/Phone;

    .line 591
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->missedCallType:I

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 592
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickOverlayMoreOptions"

    const-string v3, "DontShow"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 14

    .line 524
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNewIntent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, "contactId"

    const-wide/16 v1, -0x1

    .line 526
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 527
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const-string v3, "EXTRA_MISSED_CALL_TIME"

    .line 528
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "EXTRA_MISSED_CALL_NUMBER"

    const/4 v2, 0x0

    .line 529
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "EXTRA_MISSED_CALL_TYPE"

    .line 530
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->missedCallType:I

    .line 531
    new-instance p1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    iget v11, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->missedCallType:I

    move-object v3, p1

    move-wide v4, v12

    move-object v6, v0

    invoke-direct/range {v3 .. v11}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;-><init>(JLcom/callapp/framework/phone/Phone;JIII)V

    .line 532
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->addPage(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;)V

    const p1, 0x7f0a0688

    .line 533
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 534
    iget v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->missedCallType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const v1, 0x7f120459

    .line 535
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    const v1, 0x7f120129

    .line 537
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const v1, 0x7f0601ec

    .line 539
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v9, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v4, v0

    move-wide v6, v12

    move-object v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    .line 542
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    .line 543
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v1, :cond_2

    .line 544
    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 548
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->updateHeaderByPosition(I)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 159
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onPause()V

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 153
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onShowLessClick()V
    .locals 5

    .line 574
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getCurrentSingleMissedCallData()Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->handleRemove(Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;)Lcom/callapp/framework/phone/Phone;

    .line 577
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->SHOW_LESS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    iget v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->missedCallType:I

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 578
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickOverlayMoreOptions"

    const-string v3, "ShowLess"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->dataArray:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected shouldUpdateCallButtion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
