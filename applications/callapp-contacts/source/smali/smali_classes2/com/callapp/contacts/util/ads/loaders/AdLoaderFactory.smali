.class public Lcom/callapp/contacts/util/ads/loaders/AdLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/util/Pair;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
            ")",
            "Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;"
        }
    .end annotation

    .line 32
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/ads/loaders/InterstitialAdLoader;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/callapp/contacts/util/ads/loaders/InterstitialAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Landroid/util/Pair;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;IZ",
            "Lcom/callapp/contacts/util/ads/NativeAdParamGetter;",
            "F)",
            "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 21
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;-><init>(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V

    return-object v1

    .line 24
    :cond_0
    new-instance v1, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    move-object v6, v1

    move-object v7, p0

    move-object v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v6 .. v13}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;-><init>(Landroid/content/Context;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Ljava/lang/String;IZLcom/callapp/contacts/util/ads/NativeAdParamGetter;F)V

    return-object v1
.end method
