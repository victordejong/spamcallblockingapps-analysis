.class public Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;
.super Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;",
        "Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private cdHoursCardCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

.field private contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

.field private headerTitle:Ljava/lang/String;

.field private multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

.field private priority:I

.field private userImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V
    .locals 1

    const v0, 0x7f0d0093

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/BaseHourdCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->userImageUrl:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    .line 45
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->priority:I

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->headerTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->cdHoursCardCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->userImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->loadHeaderImage()V

    return-void
.end method

.method private loadHeaderImage()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->cdHoursCardCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060084

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderBackgroundColor()I
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 127
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060084

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

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
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->priority:I

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isShowData()Z

    move-result v3

    const v4, 0x7f0601ec

    if-eqz v3, :cond_1

    .line 143
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroidx/fragment/app/FragmentContainerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentContainerView;->setVisibility(I)V

    .line 144
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->callDayNightTimeGraphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->setHeaderVisibility(I)V

    .line 148
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 149
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1200ec

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTimeSlotData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->loadHeaderImage()V

    .line 153
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->animateGraph()V

    return-void

    .line 155
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroidx/fragment/app/FragmentContainerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentContainerView;->setVisibility(I)V

    .line 156
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0a0922

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 160
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0a08ab

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1201d1

    .line 161
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1201d0

    .line 162
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)V

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

    .line 84
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f120881

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->headerTitle:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 96
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->userImageUrl:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a01a5

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->callDayNightTimeGraphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    .line 134
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;Landroid/view/View;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->cdHoursCardCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onMultiCardExpended(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->cdHoursCardCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public refreshCardData()V
    .locals 9

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    .line 59
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    .line 60
    new-instance v8, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingDay()I

    move-result v2

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingNight()I

    move-result v3

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingDay()I

    move-result v4

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingNight()I

    move-result v5

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalIncoming()I

    move-result v6

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalOutgoing()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;-><init>(IIIIII)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v8, v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;Z)V

    :cond_0
    return-void
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;Z)V
    .locals 2

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->dataCurrent:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getContactName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f120881

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->headerTitle:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0, p2}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->updateHeaderTitle(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->showCard(Z)V

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 33
    check-cast p1, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;Z)V

    return-void
.end method
