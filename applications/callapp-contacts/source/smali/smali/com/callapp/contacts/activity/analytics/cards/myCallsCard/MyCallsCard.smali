.class public Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;
.super Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;",
        "Landroid/util/Pair<",
        "Ljava/util/Map<",
        "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
        "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
        ">;",
        "Ljava/util/Map<",
        "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
        "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private adapterBySimId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private alreadyBounded:Z

.field private dataCurrent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private dataPrevious:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private graphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

.field private myCallsVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private numberOfCallsProgressBarData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;",
            ">;"
        }
    .end annotation
.end field

.field private shouldShowAnimation:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 1

    const v0, 0x7f0d0055

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->adapterBySimId:Ljava/util/Map;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->shouldShowAnimation:Z

    .line 44
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->alreadyBounded:Z

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0055

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->adapterBySimId:Ljava/util/Map;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->shouldShowAnimation:Z

    .line 44
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->alreadyBounded:Z

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->shouldShowAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->alreadyBounded:Z

    return p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->numberOfCallsProgressBarData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->graphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->myCallsVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$402(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->myCallsVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method private getNumberOfCallsProgressBarData(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 97
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 295
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;

    .line 296
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getTotalCalls()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v3, v9

    .line 297
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getIncomingCalls()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 298
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getOutgoingCalls()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    .line 299
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getMissedCalls()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 300
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getNotAnsweredCalls()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 304
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;

    .line 306
    invoke-virtual {v13}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getTotalCalls()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v8, v14

    .line 307
    invoke-virtual {v13}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getIncomingCalls()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v9, v14

    .line 308
    invoke-virtual {v13}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getOutgoingCalls()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v10, v14

    .line 309
    invoke-virtual {v13}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getMissedCalls()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    .line 310
    invoke-virtual {v13}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getNotAnsweredCalls()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_3
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v13, v8, v2

    if-eqz v13, :cond_4

    sub-float v14, v3, v8

    div-float/2addr v14, v8

    mul-float v14, v14, v1

    goto :goto_2

    :cond_4
    const/high16 v14, 0x42c80000    # 100.0f

    :goto_2
    cmpl-float v8, v9, v2

    if-eqz v8, :cond_5

    sub-float v8, v4, v9

    div-float/2addr v8, v9

    mul-float v8, v8, v1

    goto :goto_3

    :cond_5
    const/high16 v8, 0x42c80000    # 100.0f

    :goto_3
    cmpl-float v9, v10, v2

    if-eqz v9, :cond_6

    sub-float v9, v5, v10

    div-float/2addr v9, v10

    mul-float v9, v9, v1

    goto :goto_4

    :cond_6
    const/high16 v9, 0x42c80000    # 100.0f

    :goto_4
    cmpl-float v10, v11, v2

    if-eqz v10, :cond_7

    sub-float v10, v6, v11

    div-float/2addr v10, v11

    mul-float v10, v10, v1

    goto :goto_5

    :cond_7
    const/high16 v10, 0x42c80000    # 100.0f

    :goto_5
    cmpl-float v11, v12, v2

    if-eqz v11, :cond_8

    sub-float v11, v7, v12

    div-float/2addr v11, v12

    mul-float v11, v11, v1

    goto :goto_6

    :cond_8
    const/high16 v11, 0x42c80000    # 100.0f

    :goto_6
    const v12, 0x7f0802e2

    const v15, 0x7f0802e1

    cmpl-float v16, v14, v2

    if-lez v16, :cond_9

    const v17, 0x7f0802e2

    goto :goto_7

    :cond_9
    const v17, 0x7f0802e1

    :goto_7
    cmpl-float v18, v8, v2

    if-lez v18, :cond_a

    const v19, 0x7f0802e2

    goto :goto_8

    :cond_a
    const v19, 0x7f0802e1

    :goto_8
    cmpl-float v20, v9, v2

    if-lez v20, :cond_b

    const v21, 0x7f0802e2

    goto :goto_9

    :cond_b
    const v21, 0x7f0802e1

    :goto_9
    cmpl-float v22, v10, v2

    if-lez v22, :cond_c

    const v23, 0x7f0802e2

    goto :goto_a

    :cond_c
    const v23, 0x7f0802e1

    :goto_a
    cmpl-float v24, v11, v2

    if-lez v24, :cond_d

    goto :goto_b

    :cond_d
    const v12, 0x7f0802e1

    :goto_b
    cmpl-float v15, v3, v2

    if-lez v15, :cond_e

    const/high16 v25, 0x42c80000    # 100.0f

    goto :goto_c

    :cond_e
    const/16 v25, 0x0

    :goto_c
    if-lez v15, :cond_f

    div-float v26, v4, v3

    mul-float v26, v26, v1

    goto :goto_d

    :cond_f
    const/16 v26, 0x0

    :goto_d
    if-lez v15, :cond_10

    .line 328
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v27

    if-eqz v27, :cond_10

    div-float v27, v5, v3

    mul-float v27, v27, v1

    goto :goto_e

    :cond_10
    const/16 v27, 0x0

    :goto_e
    if-lez v15, :cond_11

    .line 329
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v28

    if-eqz v28, :cond_11

    div-float v28, v7, v3

    mul-float v28, v28, v1

    goto :goto_f

    :cond_11
    const/16 v28, 0x0

    :goto_f
    if-lez v15, :cond_12

    div-float v29, v6, v3

    mul-float v29, v29, v1

    goto :goto_10

    :cond_12
    const/16 v29, 0x0

    :goto_10
    const/4 v1, 0x1

    const/16 v30, 0x0

    if-lez v15, :cond_13

    const/16 v43, 0x1

    goto :goto_11

    :cond_13
    const/16 v43, 0x0

    :goto_11
    cmpl-float v31, v4, v2

    if-lez v31, :cond_14

    const/16 v56, 0x1

    goto :goto_12

    :cond_14
    const/16 v56, 0x0

    :goto_12
    cmpl-float v31, v5, v2

    if-lez v31, :cond_15

    .line 334
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v31

    if-eqz v31, :cond_15

    const/16 v69, 0x1

    goto :goto_13

    :cond_15
    const/16 v69, 0x0

    :goto_13
    cmpl-float v31, v6, v2

    if-lez v31, :cond_16

    const/16 v82, 0x1

    goto :goto_14

    :cond_16
    const/16 v82, 0x0

    :goto_14
    cmpl-float v2, v7, v2

    if-lez v2, :cond_17

    .line 336
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v95, 0x1

    goto :goto_15

    :cond_17
    const/16 v95, 0x0

    :goto_15
    if-nez v13, :cond_18

    if-nez v15, :cond_18

    const/16 v96, 0x1

    goto :goto_16

    :cond_18
    const/16 v96, 0x0

    :goto_16
    if-eqz v16, :cond_19

    if-nez v96, :cond_19

    .line 340
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v2, v13, :cond_19

    const/16 v42, 0x1

    goto :goto_17

    :cond_19
    const/16 v42, 0x0

    :goto_17
    if-eqz v18, :cond_1a

    if-nez v96, :cond_1a

    .line 341
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v2, v13, :cond_1a

    const/16 v55, 0x1

    goto :goto_18

    :cond_1a
    const/16 v55, 0x0

    :goto_18
    if-eqz v20, :cond_1b

    if-nez v96, :cond_1b

    .line 342
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v2, v13, :cond_1b

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v68, 0x1

    goto :goto_19

    :cond_1b
    const/16 v68, 0x0

    :goto_19
    if-eqz v22, :cond_1c

    if-nez v96, :cond_1c

    .line 343
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v2, v13, :cond_1c

    const/16 v81, 0x1

    goto :goto_1a

    :cond_1c
    const/16 v81, 0x0

    :goto_1a
    if-eqz v24, :cond_1d

    if-nez v96, :cond_1d

    .line 344
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v13, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v2, v13, :cond_1d

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v94, 0x1

    goto :goto_1b

    :cond_1d
    const/16 v94, 0x0

    .line 347
    :goto_1b
    new-instance v1, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;

    const v2, 0x7f120728

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    float-to-int v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    const/high16 v37, 0x42c80000    # 100.0f

    const/16 v38, 0x0

    const v2, 0x7f060192

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v39

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v31, v1

    move/from16 v44, v96

    invoke-direct/range {v31 .. v44}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v1, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;

    const v2, 0x7f1203c6

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    float-to-int v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v47

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v48

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v49

    const/high16 v50, 0x42c80000    # 100.0f

    const/16 v51, 0x0

    const v2, 0x7f0601a7

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v52

    const/16 v53, 0x0

    const/16 v54, 0x1

    move-object/from16 v44, v1

    move/from16 v57, v96

    invoke-direct/range {v44 .. v57}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v1, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;

    const v2, 0x7f12050b

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    float-to-int v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v60

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v61

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v62

    const/high16 v63, 0x42c80000    # 100.0f

    const/16 v64, 0x0

    const v2, 0x7f06011f

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v65

    const/16 v66, 0x0

    const/16 v67, 0x1

    move-object/from16 v57, v1

    move/from16 v70, v96

    invoke-direct/range {v57 .. v70}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v1, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;

    const v2, 0x7f12046c

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    float-to-int v2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v73

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v74

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v75

    const/high16 v76, 0x42c80000    # 100.0f

    const/16 v77, 0x0

    const v2, 0x7f06001b

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v78

    const/16 v79, 0x0

    const/16 v80, 0x1

    move-object/from16 v70, v1

    move/from16 v83, v96

    invoke-direct/range {v70 .. v83}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v1, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;

    const v2, 0x7f1207f0

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v84

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v85

    float-to-int v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v86

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v87

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v88

    const/high16 v89, 0x42c80000    # 100.0f

    const/16 v90, 0x0

    const v2, 0x7f06019a

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v91

    const/16 v92, 0x0

    const/16 v93, 0x1

    move-object/from16 v83, v1

    invoke-direct/range {v83 .. v96}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setAdapters(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;",
            ">;>;)V"
        }
    .end annotation

    .line 133
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->adapterBySimId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    .line 1269
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->a(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    const/16 v8, 0x8

    :goto_1
    invoke-virtual {v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 2261
    iget-object v5, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    const/16 v8, 0x8

    .line 1270
    :goto_2
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2265
    iget-object v5, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->b:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const/16 v6, 0x8

    .line 1271
    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v1, :cond_3

    .line 140
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$2;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)V

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;)V

    .line 146
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->adapterBySimId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->a(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;Ljava/util/List;)V

    invoke-interface {v0, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;)V
    .locals 33

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->alreadyBounded:Z

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataCurrent:Ljava/util/Map;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v2

    const v3, 0x7f1204a1

    const v4, 0x7f1204a2

    const v5, 0x7f1204a3

    if-eqz v2, :cond_5

    .line 81
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataCurrent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v8, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataPrevious:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;

    .line 88
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;

    const/high16 v10, 0x42c80000    # 100.0f

    if-eqz v8, :cond_3

    .line 90
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getTotalDuration()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_0

    .line 91
    invoke-virtual {v9}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getTotalDuration()F

    move-result v11

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getTotalDuration()F

    move-result v13

    sub-float/2addr v11, v13

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getTotalDuration()F

    move-result v13

    div-float/2addr v11, v13

    mul-float v11, v11, v10

    goto :goto_1

    :cond_0
    const/high16 v11, 0x42c80000    # 100.0f

    .line 94
    :goto_1
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getOutgoingDuration()F

    move-result v13

    cmpl-float v13, v13, v12

    if-eqz v13, :cond_1

    .line 95
    invoke-virtual {v9}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getOutgoingDuration()F

    move-result v13

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getOutgoingDuration()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getOutgoingDuration()F

    move-result v14

    div-float/2addr v13, v14

    mul-float v13, v13, v10

    goto :goto_2

    :cond_1
    const/high16 v13, 0x42c80000    # 100.0f

    .line 98
    :goto_2
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getIncomingDuration()F

    move-result v14

    cmpl-float v12, v14, v12

    if-eqz v12, :cond_2

    .line 99
    invoke-virtual {v9}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getIncomingDuration()F

    move-result v12

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getIncomingDuration()F

    move-result v14

    sub-float/2addr v12, v14

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getIncomingDuration()F

    move-result v8

    div-float/2addr v12, v8

    mul-float v10, v10, v12

    move v8, v10

    move v10, v11

    goto :goto_3

    :cond_2
    move v10, v11

    const/high16 v8, 0x42c80000    # 100.0f

    goto :goto_3

    :cond_3
    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v13, 0x42c80000    # 100.0f

    .line 103
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->REGULAR:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    goto :goto_4

    :cond_4
    sget-object v11, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->BLOCK:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    :goto_4
    move-object/from16 v22, v11

    .line 104
    new-instance v11, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;

    const v24, 0x7f08029d

    const v25, 0x7f060192

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getTotalDuration()F

    move-result v12

    float-to-long v14, v12

    move-object/from16 v32, v6

    float-to-long v5, v10

    sget-object v31, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->REGULAR:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    move-object/from16 v23, v11

    move-wide/from16 v27, v14

    move-wide/from16 v29, v5

    invoke-direct/range {v23 .. v31}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;-><init>(IILjava/lang/String;JJLcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v5, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;

    const v15, 0x7f0802a8

    const v16, 0x7f0601a7

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getOutgoingDuration()F

    move-result v6

    float-to-long v10, v6

    float-to-long v13, v13

    move-wide/from16 v20, v13

    move-object v14, v5

    move-wide/from16 v18, v10

    invoke-direct/range {v14 .. v22}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;-><init>(IILjava/lang/String;JJLcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v5, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;

    const v24, 0x7f0802a3

    const v25, 0x7f06011f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v9}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->getIncomingDuration()F

    move-result v6

    float-to-long v9, v6

    float-to-long v13, v8

    sget-object v31, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->REGULAR:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    move-object/from16 v23, v5

    move-wide/from16 v27, v9

    move-wide/from16 v29, v13

    invoke-direct/range {v23 .. v31}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;-><init>(IILjava/lang/String;JJLcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7f1204a3

    goto/16 :goto_0

    .line 112
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->EMPTY:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    goto :goto_5

    :cond_6
    sget-object v5, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->BLOCK:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    :goto_5
    move-object/from16 v21, v5

    .line 115
    new-instance v5, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;

    const v23, 0x7f08029d

    const v24, 0x7f060192

    const v6, 0x7f1204a3

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    sget-object v30, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->EMPTY:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    move-object/from16 v22, v5

    invoke-direct/range {v22 .. v30}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;-><init>(IILjava/lang/String;JJLcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v5, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;

    const v14, 0x7f0802a8

    const v15, 0x7f0601a7

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v21}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;-><init>(IILjava/lang/String;JJLcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v4, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;

    const v23, 0x7f0802a3

    const v24, 0x7f06011f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v25

    sget-object v30, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->EMPTY:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v30}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;-><init>(IILjava/lang/String;JJLcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f120364

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f120363

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-boolean v2, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->shouldShowAnimation:Z

    if-eqz v2, :cond_8

    .line 126
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->graphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->numberOfCallsProgressBarData:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;->a(Ljava/util/List;)V

    :cond_8
    move-object/from16 v2, p1

    .line 129
    invoke-direct {v0, v2, v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->setAdapters(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a046b

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->graphFragment:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/GraphFragment;

    .line 59
    new-instance v0, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    const/16 v5, 0x1f4

    const/16 v6, 0x1f4

    move-object v1, v0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->myCallsVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 60
    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 73
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->myCallsVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->myCallsVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;->onDestroy()V

    return-void
.end method

.method public refreshCardData()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->mode:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 187
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/Map;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->PREVIOUS:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/Map;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->updateCardData(Landroid/util/Pair;Z)V

    :cond_0
    return-void
.end method

.method protected updateCardData(Landroid/util/Pair;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
            ">;>;Z)V"
        }
    .end annotation

    .line 164
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataCurrent:Ljava/util/Map;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataPrevious:Ljava/util/Map;

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

    .line 166
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataCurrent:Ljava/util/Map;

    .line 167
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataPrevious:Ljava/util/Map;

    .line 168
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->dataCurrent:Ljava/util/Map;

    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->getNumberOfCallsProgressBarData(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->numberOfCallsProgressBarData:Ljava/util/List;

    .line 169
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->showCard(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 35
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->updateCardData(Landroid/util/Pair;Z)V

    return-void
.end method
