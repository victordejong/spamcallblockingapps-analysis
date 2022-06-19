.class public Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;
    .locals 20

    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    sget-object v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CALL_SCREEN:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f120463

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120462

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0804f7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    sget-object v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CALL_REMINDER:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120461

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f120460

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08050d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    sget-object v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->NOTE:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;

    move-result-object v12

    const v1, 0x7f120466

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v1, 0x7f120465

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f080509

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 48
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 49
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "stickyBannerMissedCallConfig"

    invoke-static {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->getDataFromRemoteConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 50
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 51
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    .line 52
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getNeedBilling()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 54
    new-instance v4, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    sget-object v5, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CONFIG:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v5}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getSubTitle()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getImg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getActionText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getCta()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getId()Ljava/lang/String;

    move-result-object v13

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 56
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager;->b(Ljava/util/List;)V

    goto :goto_3

    .line 59
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager;->b(Ljava/util/List;)V

    :goto_3
    if-nez v1, :cond_5

    .line 62
    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    sget-object v2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->NOTE:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;

    move-result-object v15

    const v2, 0x7f120466

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v2, 0x7f120465

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f080509

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v22}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    if-ne v1, v3, :cond_6

    .line 64
    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    sget-object v2, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CALL_REMINDER:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f120461

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120460

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08050d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v9, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    sget-object v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CALL_SCREEN:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f120463

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f120462

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0804f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
