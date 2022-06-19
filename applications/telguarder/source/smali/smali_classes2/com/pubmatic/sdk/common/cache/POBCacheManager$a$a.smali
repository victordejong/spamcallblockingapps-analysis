.class Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;

    iget-object v2, v2, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "omid.js"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;

    iget-object v1, v0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->b:Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/pubmatic/sdk/common/cache/POBCacheManager$a;->a:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->a(Lcom/pubmatic/sdk/common/cache/POBCacheManager;Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V

    return-void
.end method
