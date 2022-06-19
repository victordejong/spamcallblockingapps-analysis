.class Lcom/pubmatic/sdk/webrendering/mraid/p$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/p$a;->onSuccess(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/pubmatic/sdk/webrendering/mraid/p$a;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/p$a;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$a$a;->b:Lcom/pubmatic/sdk/webrendering/mraid/p$a;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$a$a;->b:Lcom/pubmatic/sdk/webrendering/mraid/p$a;

    iget-object v1, v1, Lcom/pubmatic/sdk/webrendering/mraid/p$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/p;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$a$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POBMraidController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "image successfully saved to device!"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Error saving picture to device through MRAID ad."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
