.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->expandToFullScreen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

.field public final synthetic val$viewTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->val$viewTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->val$viewTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandToFullScreen()V

    :cond_0
    return-void
.end method
