.class Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/cache/POBCacheManager;->requestServiceScript(Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;

.field final synthetic b:Lcom/pubmatic/sdk/common/cache/POBCacheManager;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->a:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "PMCacheManager"

    const-string v2, "Service script downloaded: %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;-><init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PMCacheManager"

    const-string v1, "Service script download failed: %s"

    invoke-static {p1, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$b;

    invoke-direct {p1, p0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$b;-><init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;)V

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->a(Ljava/lang/String;)V

    return-void
.end method
