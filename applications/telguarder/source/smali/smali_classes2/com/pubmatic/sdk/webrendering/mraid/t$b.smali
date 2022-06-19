.class Lcom/pubmatic/sdk/webrendering/mraid/t$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;


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

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPress()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->b()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->d(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/t;->d(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->e(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/t$d;->a(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method
