.class Lcom/pubmatic/sdk/common/cache/POBCacheManager$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$c;->a:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;

    iput-object p3, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$c;->a:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;->onMeasurementScriptReceived(Ljava/lang/String;)V

    return-void
.end method
