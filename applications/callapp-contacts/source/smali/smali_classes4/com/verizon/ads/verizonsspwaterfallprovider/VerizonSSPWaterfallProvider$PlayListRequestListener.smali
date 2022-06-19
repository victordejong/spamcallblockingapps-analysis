.class Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayListRequestListener"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/BidRequestListener;

.field final b:Lcom/verizon/ads/WaterfallProvider$WaterfallListener;

.field final c:Lcom/verizon/ads/RequestMetadata;


# direct methods
.method constructor <init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/RequestMetadata;)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/WaterfallProvider$WaterfallListener;Lcom/verizon/ads/RequestMetadata;)V

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/WaterfallProvider$WaterfallListener;Lcom/verizon/ads/RequestMetadata;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a:Lcom/verizon/ads/BidRequestListener;

    .line 322
    iput-object p2, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->b:Lcom/verizon/ads/WaterfallProvider$WaterfallListener;

    .line 323
    iput-object p3, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->c:Lcom/verizon/ads/RequestMetadata;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/WaterfallProvider$WaterfallListener;Lcom/verizon/ads/RequestMetadata;)V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, v0, p1, p2}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;-><init>(Lcom/verizon/ads/BidRequestListener;Lcom/verizon/ads/WaterfallProvider$WaterfallListener;Lcom/verizon/ads/RequestMetadata;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/verizon/ads/ErrorInfo;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->b:Lcom/verizon/ads/WaterfallProvider$WaterfallListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0, v1, p1}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a:Lcom/verizon/ads/BidRequestListener;

    if-eqz v0, :cond_1

    .line 332
    invoke-interface {v0, v1, p1}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    :cond_1
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/Waterfall;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 339
    iget-object v1, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->b:Lcom/verizon/ads/WaterfallProvider$WaterfallListener;

    const-string v2, "request.requestMetadata"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/verizon/ads/Waterfall;

    .line 345
    new-instance v6, Lcom/verizon/ads/AdSession;

    invoke-direct {v6}, Lcom/verizon/ads/AdSession;-><init>()V

    .line 346
    iget-object v7, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->c:Lcom/verizon/ads/RequestMetadata;

    invoke-virtual {v6, v2, v7}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "response.waterfall"

    .line 347
    invoke-virtual {v6, v7, v5}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_0
    iget-object v2, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->b:Lcom/verizon/ads/WaterfallProvider$WaterfallListener;

    invoke-interface {v2, v1, v3}, Lcom/verizon/ads/WaterfallProvider$WaterfallListener;->onAdSessionsReceived(Ljava/util/List;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 352
    :cond_1
    iget-object v1, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a:Lcom/verizon/ads/BidRequestListener;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object/from16 v4, p1

    .line 354
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/Waterfall;

    .line 356
    invoke-interface {v4}, Lcom/verizon/ads/Waterfall;->getWaterfallItems()[Lcom/verizon/ads/Waterfall$WaterfallItem;

    move-result-object v5

    array-length v6, v5

    :goto_1
    const/4 v7, 0x7

    const-string v8, "Server response contained no bids."

    if-ge v1, v6, :cond_8

    aget-object v9, v5, v1

    .line 358
    instance-of v10, v9, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;

    if-eqz v10, :cond_7

    .line 359
    move-object v1, v9

    check-cast v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;

    .line 361
    new-instance v11, Lcom/verizon/ads/AdSession;

    invoke-direct {v11}, Lcom/verizon/ads/AdSession;-><init>()V

    .line 362
    iget-object v5, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->c:Lcom/verizon/ads/RequestMetadata;

    invoke-virtual {v11, v2, v5}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    iget-object v2, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->b:Lorg/json/JSONArray;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 1905
    :cond_2
    iget-object v2, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->d:Lorg/json/JSONObject;

    if-nez v2, :cond_3

    .line 1906
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Bid response is missing bidder item"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 1911
    :cond_3
    iget-object v2, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1912
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Bid response is missing a bid price"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 1917
    :cond_4
    new-instance v2, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;

    iget-object v12, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->a:Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;

    iget-object v13, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->b:Lorg/json/JSONArray;

    iget-object v14, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->d:Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->e:Ljava/lang/String;

    iget-object v5, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v6, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->g:Ljava/lang/String;

    iget-object v1, v1, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$SuperAuctionWaterfallItem;->l:Ljava/util/Map;

    move-object v10, v2

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v1

    invoke-direct/range {v10 .. v20}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPBid;-><init>(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$VerizonSSPWaterfall;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 1900
    :cond_5
    :goto_2
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->c()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Bid response is missing demand sources"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :goto_3
    move-object v2, v3

    :goto_4
    if-nez v2, :cond_6

    .line 366
    new-instance v1, Lcom/verizon/ads/WaterfallResult;

    invoke-direct {v1, v4, v3}, Lcom/verizon/ads/WaterfallResult;-><init>(Lcom/verizon/ads/Waterfall;Lcom/verizon/ads/Bid;)V

    .line 367
    invoke-virtual {v1, v9}, Lcom/verizon/ads/WaterfallResult;->startWaterfallItem(Lcom/verizon/ads/Waterfall$WaterfallItem;)Lcom/verizon/ads/WaterfallResult$WaterfallItemResult;

    .line 368
    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    .line 369
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x6e

    invoke-direct {v2, v4, v8, v5}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    invoke-virtual {v1, v2}, Lcom/verizon/ads/WaterfallResult;->setResult(Lcom/verizon/ads/ErrorInfo;)V

    .line 372
    iget-object v1, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a:Lcom/verizon/ads/BidRequestListener;

    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    .line 373
    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v8, v7}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 372
    invoke-interface {v1, v3, v2}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 376
    :cond_6
    iget-object v1, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a:Lcom/verizon/ads/BidRequestListener;

    invoke-interface {v1, v2, v3}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 383
    :cond_8
    iget-object v1, v0, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider$PlayListRequestListener;->a:Lcom/verizon/ads/BidRequestListener;

    new-instance v2, Lcom/verizon/ads/ErrorInfo;

    invoke-static {}, Lcom/verizon/ads/verizonsspwaterfallprovider/VerizonSSPWaterfallProvider;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v8, v7}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v3, v2}, Lcom/verizon/ads/BidRequestListener;->onComplete(Lcom/verizon/ads/Bid;Lcom/verizon/ads/ErrorInfo;)V

    :cond_9
    return-void
.end method
