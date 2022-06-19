.class Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorOpenUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBVideoRenderer"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onInternalBrowserClose(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStopped()V

    :cond_0
    return-void
.end method

.method public onInternalBrowserOpen(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStarted()V

    :cond_0
    return-void
.end method

.method public onLeaveApp(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer$d;->a:Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;->b(Lcom/pubmatic/sdk/video/renderer/POBVideoRenderer;)Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onLeavingApplication()V

    :cond_0
    return-void
.end method
