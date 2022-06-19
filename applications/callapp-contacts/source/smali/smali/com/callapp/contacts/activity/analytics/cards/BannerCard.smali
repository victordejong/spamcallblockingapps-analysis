.class public Lcom/callapp/contacts/activity/analytics/cards/BannerCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;,
        Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private type:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;)V
    .locals 1

    const v0, 0x7f0d004e

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 55
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->type:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    return-void
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->type:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->type:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    if-eqz v0, :cond_2

    .line 61
    sget-object v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->DEFAULT_DIALER:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->STATISTICS:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2c

    return v0

    :cond_1
    const/16 v0, 0x64

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 1

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->updateCardData(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->type:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    sget-object v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->PREMIUM:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1201b3

    const v1, 0x7f0804f5

    const v2, 0x7f1201b2

    goto :goto_0

    :cond_0
    const v0, 0x7f1201b5

    const v1, 0x7f0804f3

    const v2, 0x7f1201b4

    .line 112
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f1201b6

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080588

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 119
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f080099

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f060125

    .line 121
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 122
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 123
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;
    .locals 1

    .line 94
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/BannerCard;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateCardData(Ljava/lang/Object;Z)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne p1, p2, :cond_3

    .line 160
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->type:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    sget-object p2, Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;->DEFAULT_DIALER:Lcom/callapp/contacts/activity/analytics/cards/BannerCard$BannerType;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 161
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->showCard(Z)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->hideCard()V

    return-void

    .line 167
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 168
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->showCard(Z)V

    return-void

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/analytics/data/UpdateAfterPreimiumEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 171
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/BannerCard;->hideCard()V

    :cond_3
    return-void
.end method
