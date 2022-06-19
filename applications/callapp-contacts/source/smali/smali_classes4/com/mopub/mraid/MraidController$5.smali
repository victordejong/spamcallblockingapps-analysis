.class final Lcom/mopub/mraid/MraidController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->c()V

    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public final onExpand(Ljava/net/URI;Z)V
    .locals 0

    return-void
.end method

.method public final onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onOpen(Ljava/net/URI;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPageFailedToLoad()V
    .locals 0

    return-void
.end method

.method public final onPageLoaded()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    .line 1412
    new-instance v1, Lcom/mopub/mraid/MraidController$6;

    invoke-direct {v1, v0}, Lcom/mopub/mraid/MraidController$6;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 296
    new-instance p1, Lcom/mopub/mraid/a;

    const-string p2, "Not allowed to resize from an expanded state"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onSetOrientationProperties(ZLcom/mopub/mraid/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->a(ZLcom/mopub/mraid/b;)V

    return-void
.end method

.method public final onUseCustomClose(Z)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->a(Z)V

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->i(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Z)V

    .line 279
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$5;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Z)V

    return-void
.end method
