.class Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->onFailure(Lcom/pubmatic/sdk/common/POBError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$b;->a:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$b;->a:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "omsdk-v1.js"

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->loadMraid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$b;->a:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;

    iget-object v2, v1, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    iget-object v1, v1, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->a:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V

    return-void
.end method
