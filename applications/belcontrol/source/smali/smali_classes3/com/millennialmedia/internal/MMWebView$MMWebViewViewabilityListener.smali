.class public Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMWebViewViewabilityListener"
.end annotation


# instance fields
.field public mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/JSBridge;->setViewable(Z)V

    :cond_1
    return-void
.end method
