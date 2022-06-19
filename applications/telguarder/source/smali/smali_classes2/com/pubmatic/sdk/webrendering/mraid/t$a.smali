.class Lcom/pubmatic/sdk/webrendering/mraid/t$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/webrendering/mraid/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/t;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/t;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->a(Lcom/pubmatic/sdk/webrendering/mraid/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentOrientation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v2}, Lcom/pubmatic/sdk/webrendering/mraid/t;->b(Lcom/pubmatic/sdk/webrendering/mraid/t;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", changedOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PMResizeView"

    invoke-static {v3, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->b(Lcom/pubmatic/sdk/webrendering/mraid/t;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->c(Lcom/pubmatic/sdk/webrendering/mraid/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->b()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->d(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->d(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->e(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/t$d;->a(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method
