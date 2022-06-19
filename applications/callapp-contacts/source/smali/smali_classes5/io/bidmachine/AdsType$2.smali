.class final Lio/bidmachine/AdsType$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdsType;->collectDisplayPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/AdsType;

.field final synthetic val$adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

.field final synthetic val$contextProvider:Lio/bidmachine/ContextProvider;

.field final synthetic val$networkConfigMap:Ljava/util/Map;

.field final synthetic val$outList:Ljava/util/ArrayList;

.field final synthetic val$placementBuilder:Lio/bidmachine/displays/PlacementBuilder;

.field final synthetic val$syncLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;Lio/bidmachine/displays/PlacementBuilder;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lio/bidmachine/AdsType$2;->this$0:Lio/bidmachine/AdsType;

    iput-object p2, p0, Lio/bidmachine/AdsType$2;->val$placementBuilder:Lio/bidmachine/displays/PlacementBuilder;

    iput-object p3, p0, Lio/bidmachine/AdsType$2;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iput-object p4, p0, Lio/bidmachine/AdsType$2;->val$adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iput-object p5, p0, Lio/bidmachine/AdsType$2;->val$networkConfigMap:Ljava/util/Map;

    iput-object p6, p0, Lio/bidmachine/AdsType$2;->val$outList:Ljava/util/ArrayList;

    iput-object p7, p0, Lio/bidmachine/AdsType$2;->val$syncLock:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 137
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdsType$2;->val$placementBuilder:Lio/bidmachine/displays/PlacementBuilder;

    iget-object v1, p0, Lio/bidmachine/AdsType$2;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/AdsType$2;->val$adRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iget-object v3, p0, Lio/bidmachine/AdsType$2;->this$0:Lio/bidmachine/AdsType;

    iget-object v4, p0, Lio/bidmachine/AdsType$2;->val$networkConfigMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 142
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v3}, Lio/bidmachine/AdsType;->access$000(Lio/bidmachine/AdsType;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    :goto_0
    new-instance v5, Lio/bidmachine/AdsType$2$1;

    invoke-direct {v5, p0}, Lio/bidmachine/AdsType$2$1;-><init>(Lio/bidmachine/AdsType$2;)V

    .line 137
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/displays/PlacementBuilder;->createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Lio/bidmachine/displays/PlacementBuilder$PlacementCreateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 157
    iget-object v0, p0, Lio/bidmachine/AdsType$2;->val$syncLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
