.class public Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;
.super Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;",
        "Ljava/util/Map<",
        "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private alreadyBounded:Z

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private incomingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private incomingGraphData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private incomingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

.field private outgoingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

.field private outgoingGraphData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private outgoingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private shouldShowIncomingAnimation:Z

.field private shouldShowOutgoingAnimation:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0054

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->shouldShowIncomingAnimation:Z

    .line 53
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->shouldShowOutgoingAnimation:Z

    .line 54
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->alreadyBounded:Z

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->shouldShowIncomingAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingGraphData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method static synthetic access$502(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->shouldShowOutgoingAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingGraphData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$802(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method private getNumberOfCallsProgressBarData(Ljava/util/Map;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;",
            ")",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 166
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 169
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    sget-object v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 172
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    goto :goto_1

    .line 173
    :cond_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    sget-object v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 174
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    goto :goto_1

    .line 175
    :cond_3
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    sget-object v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 176
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    goto :goto_1

    .line 177
    :cond_4
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    sget-object v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 178
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    goto :goto_1

    :cond_5
    add-float v1, v6, v7

    add-float v10, v8, v9

    .line 190
    sget-object v11, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v0, v11, :cond_6

    const v8, 0x7f120458

    .line 194
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f120581

    .line 195
    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 198
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_7

    move v6, v8

    move v7, v9

    move v1, v10

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const v8, 0x7f1207e8

    .line 207
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f1200a3

    .line 208
    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 212
    :goto_3
    new-instance v10, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    invoke-direct {v10}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;-><init>()V

    .line 213
    new-instance v11, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v12, 0x7f060110

    invoke-static {v12}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v13

    const/high16 v14, 0x41700000    # 15.0f

    invoke-direct {v11, v13, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v13, 0x42c80000    # 100.0f

    .line 214
    invoke-virtual {v11, v13}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 216
    new-instance v15, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v16, 0x7f06001b

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v13

    invoke-direct {v15, v13, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 217
    invoke-virtual {v15, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 218
    invoke-virtual {v15, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 219
    invoke-virtual {v15, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setUpdateProgress(Z)V

    const/4 v13, 0x2

    cmpl-float v17, v7, v5

    if-lez v17, :cond_8

    .line 224
    new-instance v5, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    new-array v14, v13, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v11, v14, v4

    aput-object v15, v14, v3

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    goto :goto_4

    .line 226
    :cond_8
    new-instance v5, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    new-array v14, v3, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v11, v14, v4

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    .line 228
    :goto_4
    invoke-virtual {v5, v8}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomText(Ljava/lang/String;)V

    const v8, 0x7f0601cc

    .line 229
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomTextColor(Ljava/lang/Integer;)V

    const v11, 0x7f0601ec

    .line 230
    invoke-static {v11}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextColor(Ljava/lang/Integer;)V

    const v14, 0x7f0a0234

    .line 231
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setResourceTextToUpdate(Ljava/lang/Integer;)V

    const v15, 0x7f1204ca

    if-nez v2, :cond_a

    if-nez v17, :cond_9

    goto :goto_5

    :cond_9
    float-to-int v14, v7

    .line 232
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_a
    :goto_5
    invoke-static {v15}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 234
    :goto_6
    invoke-virtual {v5, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterText(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07018f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextSize(Ljava/lang/Float;)V

    .line 236
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0701fd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomTextSize(Ljava/lang/Float;)V

    .line 240
    new-instance v14, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static {v12}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v15

    const/high16 v12, 0x41700000    # 15.0f

    invoke-direct {v14, v15, v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v15, 0x42c80000    # 100.0f

    .line 241
    invoke-virtual {v14, v15}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 244
    new-instance v15, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v18, 0x7f06010a

    invoke-static/range {v18 .. v18}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v11

    invoke-direct {v15, v11, v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 245
    invoke-virtual {v15, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 246
    invoke-virtual {v15, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSpinClockwise(Z)V

    .line 247
    invoke-virtual {v15, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 248
    invoke-virtual {v15, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setUpdateProgress(Z)V

    const/4 v11, 0x0

    cmpl-float v11, v6, v11

    if-lez v11, :cond_b

    .line 251
    new-instance v12, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    new-array v13, v13, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v14, v13, v4

    aput-object v15, v13, v3

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    goto :goto_7

    .line 253
    :cond_b
    new-instance v12, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    new-array v3, v3, [Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    aput-object v14, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    .line 256
    :goto_7
    invoke-virtual {v12, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomText(Ljava/lang/String;)V

    .line 257
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomTextColor(Ljava/lang/Integer;)V

    const v3, 0x7f0601ec

    .line 258
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextColor(Ljava/lang/Integer;)V

    .line 259
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f07018f

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextSize(Ljava/lang/Float;)V

    const v3, 0x7f0a0234

    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setResourceTextToUpdate(Ljava/lang/Integer;)V

    if-nez v2, :cond_d

    if-nez v11, :cond_c

    goto :goto_8

    :cond_c
    float-to-int v3, v6

    .line 261
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_d
    :goto_8
    const v3, 0x7f1204ca

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    :goto_9
    invoke-virtual {v12, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterText(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0701fd

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomTextSize(Ljava/lang/Float;)V

    .line 267
    new-instance v3, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    const v9, 0x7f060110

    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    const/high16 v13, 0x41700000    # 15.0f

    invoke-direct {v3, v9, v13}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    const/high16 v9, 0x42c80000    # 100.0f

    .line 268
    invoke-virtual {v3, v9}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setInitialRange(F)V

    .line 270
    new-instance v9, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-direct {v9, v14, v13}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 271
    invoke-virtual {v9, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 272
    invoke-virtual {v9, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 274
    new-instance v7, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    invoke-static/range {v18 .. v18}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-direct {v7, v14, v13}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;-><init>(IF)V

    .line 275
    invoke-virtual {v7, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setTargetRange(F)V

    .line 276
    invoke-virtual {v7, v4}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setSpinClockwise(Z)V

    .line 277
    invoke-virtual {v7, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->setMaxRange(F)V

    .line 280
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v17, :cond_e

    .line 283
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    if-lez v11, :cond_f

    .line 286
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_f
    new-instance v3, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    invoke-direct {v3, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;)V

    const v6, 0x7f120727

    .line 290
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomText(Ljava/lang/String;)V

    .line 291
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomTextColor(Ljava/lang/Integer;)V

    const v6, 0x7f060244

    .line 292
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextColor(Ljava/lang/Integer;)V

    .line 293
    sget-object v7, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v0, v7, :cond_10

    const v0, 0x7f06011f

    goto :goto_a

    :cond_10
    const v0, 0x7f0601a7

    .line 294
    :goto_a
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphBackground(Ljava/lang/Integer;)V

    const v0, 0x7f0a0234

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setResourceTextToUpdate(Ljava/lang/Integer;)V

    if-eqz v2, :cond_11

    const-string v0, ""

    goto :goto_b

    :cond_11
    float-to-int v0, v1

    .line 296
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_b
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07018f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterTextSize(Ljava/lang/Float;)V

    .line 298
    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCenterText(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setBottomTextSize(Ljava/lang/Float;)V

    if-eqz v2, :cond_12

    const v0, 0x7f0802a4

    .line 302
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphImage(Ljava/lang/Integer;)V

    .line 303
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphImageColorFilter(Landroid/graphics/PorterDuffColorFilter;)V

    .line 304
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070177

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphImageRadius(Ljava/lang/Float;)V

    .line 305
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$3;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)V

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V

    goto :goto_c

    :cond_12
    move-object/from16 v1, p0

    .line 313
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setCircleGraphImage(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 314
    invoke-virtual {v3, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V

    .line 317
    :goto_c
    invoke-virtual {v10, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder$Builder;->a()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201c9

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    .line 69
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    .line 339
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->refreshCardData()V

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)V
    .locals 4

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->alreadyBounded:Z

    .line 141
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1201c6

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f1201c5

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0601cc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f1201c8

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1201c7

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)Landroid/view/View;

    move-result-object p1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->shouldShowIncomingAnimation:Z

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingGraphData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    .line 154
    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->shouldShowOutgoingAnimation:Z

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingGraphData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;)V

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

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;
    .locals 8

    .line 85
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;Landroid/view/View;)V

    const v1, 0x7f0a050b

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 87
    new-instance v1, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0x14

    const/16 v7, 0x1f4

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 88
    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    const v1, 0x7f0a0671

    .line 101
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 103
    new-instance v1, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 104
    new-instance p1, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;)V

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 119
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a046a

    invoke-interface {p1, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    .line 120
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a046c

    invoke-interface {p1, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingFragment:Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 129
    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 133
    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 135
    :cond_1
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;->onDestroy()V

    return-void
.end method

.method public refreshCardData()V
    .locals 6

    .line 343
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_3

    .line 344
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;->a:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const-string v1, "datePeriod"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1094
    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    const-string v2, "getQuery(datePeriod).build().find()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    check-cast v0, Ljava/lang/Iterable;

    .line 1255
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 1256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1257
    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    const-string v5, "it"

    .line 1095
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v4

    .line 1259
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 1262
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 1266
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1097
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1099
    :cond_2
    check-cast v1, Ljava/util/Map;

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->updateCardData(Ljava/util/Map;Z)V

    :cond_3
    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 42
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->updateCardData(Ljava/util/Map;Z)V

    return-void
.end method

.method protected updateCardData(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 323
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->data:Ljava/util/Map;

    invoke-static {p2, p1}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 325
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->data:Ljava/util/Map;

    .line 326
    sget-object p2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->getNumberOfCallsProgressBarData(Ljava/util/Map;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;->getMultiCircleGraphData()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->incomingGraphData:Ljava/util/List;

    .line 327
    sget-object p2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->getNumberOfCallsProgressBarData(Ljava/util/Map;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;)Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphBuilder;->getMultiCircleGraphData()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->outgoingGraphData:Ljava/util/List;

    .line 328
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard;->showCard(Z)V

    :cond_0
    return-void
.end method
