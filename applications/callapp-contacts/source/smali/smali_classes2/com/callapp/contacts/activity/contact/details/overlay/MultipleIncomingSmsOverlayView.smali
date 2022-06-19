.class public Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;
.super Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$e;
.implements Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MultipleIncomingSmsOverlayView"


# instance fields
.field private adapter:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;

.field private callButton:Landroid/widget/ImageView;

.field private dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/SingleSmsData;",
            ">;"
        }
    .end annotation
.end field

.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private final headerHeight:I

.field private horizontalScrollViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private indicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private final indicatorsHeight:I

.field private invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

.field private pageHeight:I

.field private final registeredForScreenLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private responseContainer:Lcom/callapp/contacts/widget/MaxHeightScrollView;

.field private responseContainerHeight:I

.field private responseSmsText:Landroid/widget/EditText;

.field protected final screenLockedReceiver:Landroid/content/BroadcastReceiver;

.field private sendSmsButton:Landroid/widget/ImageView;

.field private verticalScrollView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;ZZ)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainerHeight:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->horizontalScrollViews:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->registeredForScreenLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    .line 105
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->screenLockedReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->headerHeight:I

    .line 118
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicatorsHeight:I

    const v0, 0x7f0600f3

    .line 120
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0aa8

    .line 121
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 122
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setBackgroundColor(I)V

    .line 123
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const v1, 0x7f0a0510

    .line 124
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 125
    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setBackgroundColor(I)V

    const v0, 0x7f060088

    .line 127
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 130
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setStrokeColor(I)V

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 133
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    const p1, 0x7f0a00b1

    .line 135
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->horizontalScrollViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->horizontalScrollViews:Ljava/util/List;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->horizontalScrollViews:Ljava/util/List;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainerHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateHeightByCurrentPosition()V

    return-void
.end method

.method private hasValidPhoneNumber(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)Z
    .locals 1

    .line 572
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result p1

    return p1
.end method

.method private notifyTextChange(Ljava/lang/String;)V
    .locals 4

    .line 565
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 566
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 567
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    const v0, 0x7f060088

    goto :goto_0

    :cond_0
    const v0, 0x7f0600f2

    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 568
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->setLastText(Ljava/lang/String;)V

    return-void
.end method

.method private onCallButtonClick()V
    .locals 14

    .line 614
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 615
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->hasValidPhoneNumber(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v2, 0x1

    .line 617
    invoke-static {p0, v2}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 618
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    .line 619
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->finishViewContainer(Z)V

    .line 620
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v7, v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getFullName()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v10, "Incoming Sms Overlay"

    const-string v11, "Call"

    invoke-static/range {v5 .. v13}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    :cond_1
    return-void
.end method

.method private onSendMessageClick()V
    .locals 6

    .line 576
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 577
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->hasValidPhoneNumber(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 578
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 579
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Incoming Sms Overlay"

    const-string v4, "Reply"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const v3, 0x7f0a0754

    .line 583
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 584
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 590
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;

    invoke-direct {v5, p0, v2, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 598
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    const v3, 0x7f0805a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 599
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    const/16 v3, 0x3e8

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v4, v4, v3, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;FFII)V

    .line 600
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$7;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$7;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;Lcom/callapp/contacts/model/objectbox/SingleSmsData;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 608
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onMessageSent(Lcom/callapp/contacts/model/objectbox/SingleSmsData;Z)V

    :cond_1
    return-void
.end method

.method private updateDataIndexes()V
    .locals 2

    const/4 v0, 0x0

    .line 459
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->setPagePosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateEditTextWithData()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getLastText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHeaderByPosition(I)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 466
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 468
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataMap:Ljava/util/Map;

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

    .line 470
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->setContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 472
    sget-object p1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    invoke-virtual {p0, v1, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private updateHeightByCurrentPosition()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 438
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->pageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 439
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainer:Lcom/callapp/contacts/widget/MaxHeightScrollView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/MaxHeightScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 441
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainer:Lcom/callapp/contacts/widget/MaxHeightScrollView;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/MaxHeightScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0}, Lcom/viewpagerindicator/CirclePageIndicator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicatorsHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 444
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeaderHeight="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->headerHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", PageHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->pageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IndicatorHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", AdSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->adSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  Response Height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainerHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MultipleIncomingSmsOverlayView"

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 445
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->headerHeight:I

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->pageHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainerHeight:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->adSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->setWindowHeight(I)V

    .line 446
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getWindowY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->repositionOverlayVertically(I)V

    return-void
.end method

.method private updateIndicatorsVisibility()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    return-void
.end method

.method private updateRespondLayout(Z)V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const v0, 0x7f060088

    goto :goto_0

    :cond_0
    const v0, 0x7f0600f2

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->callButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 303
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private updateVerticalScrollItems()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 543
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->adapter:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->getViewByPosition(I)Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView;->getTextContainer()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainer:Lcom/callapp/contacts/widget/MaxHeightScrollView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addPage(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)V
    .locals 9

    .line 316
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateDataIndexes()V

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->adapter:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/contact/details/overlay/SingleSmsItemView$OnSinglePageEventListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->adapter:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;

    .line 322
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->c()V

    .line 327
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateIndicatorsVisibility()V

    .line 329
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 331
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->extractedInfo:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 332
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v2

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->extractedInfo:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getContactId()J

    move-result-wide v5

    sget-object v8, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    .line 333
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 334
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 337
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->setFirstTimeExperience()Z

    move-result v0

    if-eqz v0, :cond_2

    const v2, 0x7f0a0244

    const/4 v3, -0x1

    .line 342
    invoke-virtual {p0, v2, v3, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->setCloseButtonListenerInOverlay(IIZ)V

    .line 345
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getFullName()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->assertIntentDataExists()V

    .line 349
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getIntentData()Lcom/callapp/contacts/model/contact/IntentData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/IntentData;->setFullName(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    goto :goto_1

    .line 353
    :cond_3
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 355
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 356
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->hasValidPhoneNumber(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateRespondLayout(Z)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 561
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->notifyTextChange(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public finishViewContainer(Z)V
    .locals 2

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->registeredForScreenLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->screenLockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 225
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->finishViewContainer(Z)V

    return-void
.end method

.method protected getAdLayoutResourceId(I)I
    .locals 0

    .line 537
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->getSmallCardAdLayoutResourceId(I)I

    move-result p1

    return p1
.end method

.method protected getAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 532
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected getBiddingRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 528
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected getBottomLayoutAdColor()I
    .locals 1

    const v0, 0x7f060026

    return v0
.end method

.method protected getBottomLayoutBackgroundColor()I
    .locals 1

    .line 240
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080518

    return v0

    :cond_0
    const v0, 0x7f080279

    return v0
.end method

.method protected getBottomLayoutResId()I
    .locals 1

    const v0, 0x7f0d0239

    return v0
.end method

.method protected getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "SMSExperiments"

    return-object v0
.end method

.method protected getHorizontallyScrollableViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->horizontalScrollViews:Ljava/util/List;

    return-object v0
.end method

.method getOrigin()Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 264
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SMS_MESSAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object v0
.end method

.method protected getOverlayInitHeight()I
    .locals 2

    .line 235
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "SMSPreferences"

    return-object v0
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 259
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->INCOMING_SMS_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method protected getTrackEventCategory()Ljava/lang/String;
    .locals 1

    const-string v0, "Incoming Sms Overlay"

    return-object v0
.end method

.method protected getVerticallyScrollableViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateVerticalScrollItems()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->verticalScrollView:Ljava/util/List;

    return-object v0
.end method

.method protected needsKeyboard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAdLoaded(Landroid/view/View;)V
    .locals 1

    .line 382
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAdLoaded(Landroid/view/View;)V

    .line 383
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$5;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05f1

    if-ne p1, v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onSendMessageClick()V

    return-void

    :cond_0
    const v0, 0x7f0a01a1

    if-ne p1, v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onCallButtonClick()V

    :cond_1
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 364
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 365
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->finishViewContainer(Z)V

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 372
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->setContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 376
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 144
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 145
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/OverlayManager;->a(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Lcom/callapp/framework/phone/Phone;)V

    const v0, 0x7f0a0753

    .line 147
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/MaxHeightScrollView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseContainer:Lcom/callapp/contacts/widget/MaxHeightScrollView;

    .line 148
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$3;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/MaxHeightScrollView;->setOnSizeChangedListener(Lcom/callapp/contacts/widget/OnSizeChangedListener;)V

    const v0, 0x7f0a0754

    .line 156
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    const v1, 0x7f0601ec

    .line 157
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    const v1, 0x7f06011a

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    const v1, 0x7f12066d

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a05f1

    .line 161
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v0, 0x7f0a01a1

    .line 165
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->callButton:Landroid/widget/ImageView;

    .line 166
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->callButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f0600f2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f08049a

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 170
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Sms Overlay Screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 174
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->screenLockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->registeredForScreenLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->o:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_1

    .line 180
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$4;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;)V

    mul-int/lit16 v2, v1, 0x3e8

    .line 185
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$4;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 202
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/OverlayManager;->a(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 208
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Sms Overlay Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onDestroy()V

    .line 212
    const-class v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    const-string v1, "onDestroy finished"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onHeightChanged(I)V
    .locals 1

    .line 269
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->pageHeight:I

    if-le p1, v0, :cond_0

    .line 270
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->pageHeight:I

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateHeightByCurrentPosition()V

    return-void
.end method

.method public onMessageSent(Lcom/callapp/contacts/model/objectbox/SingleSmsData;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 395
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    .line 396
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p2, v1}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    .line 402
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 403
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->finishViewContainer(Z)V

    return-void

    .line 405
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->sendSmsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 406
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 408
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 409
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 410
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 411
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateDataIndexes()V

    .line 412
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateIndicatorsVisibility()V

    .line 413
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->adapter:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter;->c()V

    .line 414
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateEditTextWithData()V

    .line 415
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateHeightByCurrentPosition()V

    .line 416
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateHeaderByPosition(I)V

    :cond_2
    return-void
.end method

.method public onOpenSmsClick(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 424
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->hasValidPhoneNumber(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    :cond_0
    const/4 p1, 0x1

    .line 428
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->finishViewContainer(Z)V

    :cond_1
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
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->responseSmsText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getLastText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateHeightByCurrentPosition()V

    .line 293
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateHeaderByPosition(I)V

    .line 294
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 295
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->hasValidPhoneNumber(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->updateRespondLayout(Z)V

    return-void
.end method

.method protected onProfilePictureClick()V
    .locals 13

    .line 480
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->dataArray:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 481
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->hasValidPhoneNumber(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 483
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getContactId()J

    move-result-wide v11

    .line 484
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->extractedInfo:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->SMS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-wide v3, v11

    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, v11, v1

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER"

    .line 485
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v1, "EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER"

    .line 486
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected shouldShowAd()Z
    .locals 13

    .line 502
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "SMSShowInterval"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 503
    sget-object v2, Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;->SMS:Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdUtils$AdsLimitForNewUsers;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 506
    :cond_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cy:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v4, 0x1

    .line 1039
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    move-result-object v2

    .line 506
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2

    int-to-long v5, v2

    .line 507
    rem-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_1

    goto :goto_0

    .line 513
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    long-to-double v9, v0

    new-array v11, v3, [Ljava/lang/String;

    const-string v6, "Incoming Sms Overlay"

    const-string v7, "shouldShowAd"

    const-string v8, "false"

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return v3

    .line 508
    :cond_2
    :goto_0
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cy:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 509
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    long-to-double v10, v0

    new-array v12, v3, [Ljava/lang/String;

    const-string v7, "Incoming Sms Overlay"

    const-string v8, "shouldShowAd"

    const-string v9, "true"

    invoke-virtual/range {v6 .. v12}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return v4
.end method
