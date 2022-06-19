.class Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorOpenUrl(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PMMraidRenderer"

    const-string v1, "Error opening url %s"

    invoke-static {p1, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onInternalBrowserClose(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->onAdInteractionStopped()V

    return-void
.end method

.method public onInternalBrowserOpen(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->onAdInteractionStarted()V

    return-void
.end method

.method public onLeaveApp(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->onLeavingApplication()V

    return-void
.end method
