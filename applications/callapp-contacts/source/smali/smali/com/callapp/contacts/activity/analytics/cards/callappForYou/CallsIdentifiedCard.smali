.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;",
        "Landroid/util/Pair<",
        "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;",
        "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private alreadyBounded:Z

.field private callIdentificationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

.field private identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private multiCircleGraphData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private shouldShowCallIdentificationAnimation:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V
    .locals 1

    const v0, 0x7f0d0050

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->shouldShowCallIdentificationAnimation:Z

    .line 51
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->alreadyBounded:Z

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->shouldShowCallIdentificationAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->multiCircleGraphData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->callIdentificationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->callIdentificationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method private getTypePieCircle(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;
    .locals 8

    .line 253
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;-><init>()V

    .line 255
    new-instance v1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v2, 0x7f06003f

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v3, 0x42c80000    # 100.0f

    .line 256
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 258
    new-instance v3, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v5, 0x7f060244

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-direct {v3, v6, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 259
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getPercent()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    const/4 v4, 0x0

    .line 260
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 262
    new-instance v6, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-direct {v6, v2, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 263
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getPercent()F

    move-result p1

    invoke-virtual {v6, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 264
    invoke-virtual {v6, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    const/4 p1, 0x1

    .line 265
    invoke-virtual {v6, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setUpdateProgress(Z)V

    .line 266
    invoke-virtual {v6, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSetPercentageSign(Z)V

    .line 267
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v6, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 268
    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->STYLE_PIE:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    invoke-virtual {v6, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setChartStyle(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;)V

    .line 270
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    aput-object v3, v4, p1

    const/4 p1, 0x2

    aput-object v6, v4, p1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    .line 271
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextColor(Ljava/lang/Integer;)V

    const p1, 0x7f0a0234

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setResourceTextToUpdate(Ljava/lang/Integer;)V

    const-string p1, "0"

    .line 273
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterText(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070171

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextSize(Ljava/lang/Float;)V

    .line 275
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701e1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleRadius(Ljava/lang/Float;)V

    .line 277
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object p1

    return-object p1
.end method

.method private refreshCardData()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 205
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;->a:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->b(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;->a:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;

    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->PREVIOUS:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->b(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->updateCardData(Landroid/util/Pair;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 100
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

    .line 64
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 200
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->alreadyBounded:Z

    .line 106
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v2, 0x7f060231

    .line 107
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    .line 108
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12019f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12019e

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f1201a1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f1201a0

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12019b

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12019a

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12019d

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f12019c

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->j(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getTotalIdentifiedCalls()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->k(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getTotalIdentifiedContacts()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    const/16 v4, 0x8

    if-ne v2, v3, :cond_0

    .line 122
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 129
    :cond_0
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getPercent()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getPercent()F

    move-result v2

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getPercent()F

    move-result v5

    sub-float/2addr v2, v5

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getPercent()F

    move-result v5

    div-float/2addr v2, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v2, v2, v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 130
    :goto_0
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getTotalIdentifiedContacts()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getTotalIdentifiedContacts()I

    move-result v5

    iget-object v8, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getTotalIdentifiedContacts()I

    move-result v8

    sub-int/2addr v5, v8

    iget-object v8, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->getTotalIdentifiedContacts()I

    move-result v8

    div-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0x64

    int-to-long v8, v5

    goto :goto_1

    :cond_2
    move-wide v8, v6

    :goto_1
    const v5, 0x7f060244

    const v11, 0x7f080504

    const v12, 0x7f0802e2

    const v13, 0x7f0802e1

    const/4 v14, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_5

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v15

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v14

    const-string v2, "%.0f%%"

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_3

    const v2, 0x7f0802e2

    goto :goto_2

    :cond_3
    const v2, 0x7f0802e1

    :goto_2
    if-lez v3, :cond_4

    const v10, 0x7f080505

    goto :goto_3

    :cond_4
    const v10, 0x7f080504

    .line 136
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 144
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    cmp-long v2, v8, v6

    if-eqz v2, :cond_8

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v14

    const-string v6, "%d%%"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_6

    goto :goto_5

    :cond_6
    const v12, 0x7f0802e1

    :goto_5
    if-lez v3, :cond_7

    const v10, 0x7f080505

    goto :goto_6

    :cond_7
    const v10, 0x7f080504

    .line 153
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 161
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :goto_7
    iget-boolean v1, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->shouldShowCallIdentificationAnimation:Z

    if-eqz v1, :cond_9

    .line 167
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->multiCircleGraphData:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;)V

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

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a0466

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->circleGraphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    const v0, 0x7f0a096e

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 81
    new-instance v0, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    const/16 v5, 0x14

    const/16 v6, 0x1f4

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->callIdentificationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 82
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 96
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->callIdentificationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->callIdentificationVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

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
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;",
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;",
            ">;Z)V"
        }
    .end annotation

    .line 174
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

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

    .line 176
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    .line 177
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataPrev:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    .line 178
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->identifiedDataCurr:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->getTypePieCircle(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;->getMultiCircleGraphData()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->multiCircleGraphData:Ljava/util/List;

    .line 179
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->showCard(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 43
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard;->updateCardData(Landroid/util/Pair;Z)V

    return-void
.end method
