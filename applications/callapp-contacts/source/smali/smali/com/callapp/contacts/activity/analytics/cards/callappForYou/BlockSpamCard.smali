.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;",
        "Landroid/util/Pair<",
        "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;",
        "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private blockSpamListCurr:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

.field private blockSpamListPrev:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 1

    const v0, 0x7f0d0056

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    return-void
.end method

.method private refreshCardData()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 168
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->b(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->PREVIOUS:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->b(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->updateCardData(Landroid/util/Pair;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601f1

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

    .line 52
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 163
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)V
    .locals 17

    move-object/from16 v0, p0

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f08009e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v1, 0x7f06001f

    .line 79
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v2, 0x7f060022

    .line 82
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    .line 83
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12026c

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12026b

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f060112

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f12025f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f12025e

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListCurr:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->getSpamNumber()I

    move-result v1

    .line 95
    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListCurr:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->getBlockNumber()I

    move-result v3

    .line 96
    iget-object v4, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListPrev:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->getSpamNumber()I

    move-result v4

    .line 97
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListPrev:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;->getBlockNumber()I

    move-result v5

    .line 101
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0802e1

    const/4 v10, 0x1

    const-string v11, "%d%%"

    const/high16 v12, 0x42c80000    # 100.0f

    const/16 v13, 0x64

    const/16 v14, 0x8

    const/4 v15, 0x0

    if-nez v1, :cond_0

    .line 105
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x7f1201bb

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 109
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_1

    sub-int/2addr v1, v4

    int-to-float v1, v1

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float v1, v1, v12

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    if-eqz v1, :cond_5

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->k(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    invoke-static {v11, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_2

    const v4, 0x7f0802e2

    goto :goto_1

    :cond_2
    const v4, 0x7f0802e1

    :goto_1
    if-lez v1, :cond_3

    const v6, 0x7f080505

    goto :goto_2

    :cond_3
    const v6, 0x7f080504

    :goto_2
    if-lez v1, :cond_4

    const v1, 0x7f06010c

    goto :goto_3

    :cond_4
    const v1, 0x7f06001b

    .line 116
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->k(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 119
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->j(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 122
    :cond_5
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->j(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    if-nez v3, :cond_6

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1201b9

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 130
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_7

    sub-int/2addr v3, v5

    int-to-float v1, v3

    int-to-float v3, v5

    div-float/2addr v1, v3

    mul-float v1, v1, v12

    float-to-int v13, v1

    :cond_7
    if-eqz v13, :cond_a

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v13, :cond_8

    const v8, 0x7f0802e2

    goto :goto_6

    :cond_8
    const v8, 0x7f0802e1

    :goto_6
    if-lez v13, :cond_9

    const v6, 0x7f080505

    goto :goto_7

    :cond_9
    const v6, 0x7f080504

    .line 136
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->r(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 141
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;->r(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;)V

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

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;
    .locals 1

    .line 68
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Landroid/util/Pair;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;",
            "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;",
            ">;Z)V"
        }
    .end annotation

    .line 148
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListCurr:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListPrev:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 150
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListCurr:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    .line 151
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->blockSpamListPrev:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    .line 152
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->showCard(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 30
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard;->updateCardData(Landroid/util/Pair;Z)V

    return-void
.end method
