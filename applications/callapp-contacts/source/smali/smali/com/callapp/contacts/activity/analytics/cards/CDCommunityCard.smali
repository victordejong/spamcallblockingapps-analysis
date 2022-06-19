.class public Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;",
        "Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

.field private contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

.field private graphData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private graphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private headerTitle:Ljava/lang/String;

.field private multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

.field private priority:I

.field private userImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V
    .locals 1

    const v0, 0x7f0d0092

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->userImageUrl:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    .line 67
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->priority:I

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->userImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->headerTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->loadHeaderImage()V

    return-void
.end method

.method private getNumberOfCallsProgressBarData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;
    .locals 13

    .line 237
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getMissedCalls()I

    move-result v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingCalls()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getNotAnsweredCalls()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingCalls()I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    new-instance v1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v2, 0x7f060110

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 240
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 242
    new-instance v4, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v5, 0x7f06001b

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 243
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getMissedCalls()I

    move-result v5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getNotAnsweredCalls()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    int-to-float v5, v0

    .line 244
    invoke-virtual {v4, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 246
    new-instance v6, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v7, 0x7f06010a

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 247
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingCalls()I

    move-result v7

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingCalls()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    const/4 v7, 0x0

    .line 248
    invoke-virtual {v6, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSpinClockwise(Z)V

    .line 249
    invoke-virtual {v6, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getMissedCalls()I

    move-result v8

    if-lez v8, :cond_0

    .line 255
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingCalls()I

    move-result v4

    if-lez v4, :cond_1

    .line 258
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    new-instance v4, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    invoke-direct {v4, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    const v5, 0x7f060244

    .line 262
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextColor(Ljava/lang/Integer;)V

    const v6, 0x7f06011f

    .line 264
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphBackground(Ljava/lang/Integer;)V

    const v6, 0x7f0a0234

    .line 265
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setResourceTextToUpdate(Ljava/lang/Integer;)V

    .line 266
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07018f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextSize(Ljava/lang/Float;)V

    .line 268
    invoke-virtual {v4, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterText(Ljava/lang/String;)V

    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphImage(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 270
    invoke-virtual {v4, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V

    .line 274
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-direct {v0, v6, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 275
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 277
    new-instance v1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-direct {v1, v5, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 279
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalDuration()F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 280
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getLongestCall()F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    const/4 v5, 0x1

    .line 281
    invoke-virtual {v1, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setUpdateProgress(Z)V

    .line 282
    new-instance v6, Landroid/graphics/PointF;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {v6, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    .line 287
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalDuration()F

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x2

    cmpl-float v6, v6, v9

    if-lez v6, :cond_2

    .line 288
    new-instance v6, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    new-array v9, v10, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v0, v9, v7

    aput-object v1, v9, v5

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 290
    :cond_2
    new-instance v6, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    :goto_0
    const v0, 0x7f06004c

    .line 293
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphBackground(Ljava/lang/Integer;)V

    .line 294
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getLongestCall()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphProgressValue(I)V

    const v0, 0x7f080453

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphImage(Ljava/lang/Integer;)V

    .line 296
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphBackgroundRadius(Ljava/lang/Float;)V

    .line 299
    new-instance v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v9, 0x7f060234

    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v11

    const/high16 v12, 0x40800000    # 4.0f

    invoke-direct {v0, v11, v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 300
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 303
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    invoke-direct {v2, v9, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 304
    invoke-virtual {v2, v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 305
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isHasVideo()Z

    move-result v3

    int-to-float v9, v3

    .line 306
    invoke-virtual {v2, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 307
    invoke-virtual {v2, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setUpdateProgress(Z)V

    .line 308
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInset(Landroid/graphics/PointF;)V

    if-lez v3, :cond_3

    new-array v8, v10, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v2, v8, v7

    aput-object v0, v8, v5

    .line 315
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-array v2, v5, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v0, v2, v7

    .line 317
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 320
    :goto_1
    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    .line 321
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphProgressValue(I)V

    const v0, 0x7f080458

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphImage(Ljava/lang/Integer;)V

    .line 323
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphBackgroundRadius(Ljava/lang/Float;)V

    .line 324
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V

    .line 340
    new-instance p1, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;-><init>()V

    .line 341
    invoke-virtual {p1, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object p1

    return-object p1
.end method

.method private handleText()V
    .locals 10

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getLongestCall()F

    move-result v1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->j(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->k(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->handleDuration(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->g(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06004c

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->h(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->j(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->k(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->l(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->m(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->n(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120416

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->o(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f120582

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingCalls()I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingCalls()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->r(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getMissedCalls()I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getNotAnsweredCalls()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->q(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f06010a

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->r(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f06001b

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->s(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f12081a

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->t(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f120810

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->t(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->s(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isHasVideo()Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->u(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->u(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060234

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private loadHeaderImage()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private refreshCardData()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 80
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

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 94
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

    .line 347
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->priority:I

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->contactDetailsInsightData:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isShowData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroidx/fragment/app/FragmentContainerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/fragment/app/FragmentContainerView;->setVisibility(I)V

    .line 148
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->loadHeaderImage()V

    .line 152
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->handleText()V

    .line 153
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->graphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->graphData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    return-void

    .line 156
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroidx/fragment/app/FragmentContainerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentContainerView;->setVisibility(I)V

    .line 157
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0a0922

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0a08ab

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1201d1

    .line 162
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1201d0

    .line 163
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0601ec

    .line 164
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)V

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

    .line 353
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDCommunityCard onContactChange changedFields: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "liron"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 354
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

    .line 355
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->headerTitle:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$4;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 366
    :cond_1
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 367
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->userImageUrl:Ljava/lang/String;

    .line 368
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$5;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$5;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;
    .locals 1

    .line 137
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;Landroid/view/View;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v0, 0x7f0a0463

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->graphFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    .line 139
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

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

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->cdCommunityCardHolder:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    if-eqz v0, :cond_1

    .line 122
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;Z)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isShowData()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->getNumberOfCallsProgressBarData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;->getMultiCircleGraphData()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->graphData:Ljava/util/List;

    :cond_0
    const p2, 0x7f120881

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getContactName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->headerTitle:Ljava/lang/String;

    .line 228
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->updateHeaderTitle(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->showCard(Z)V

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 52
    check-cast p1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;Z)V

    return-void
.end method
