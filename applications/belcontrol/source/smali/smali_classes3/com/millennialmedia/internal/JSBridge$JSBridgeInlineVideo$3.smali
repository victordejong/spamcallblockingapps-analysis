.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->reposition(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

.field public final synthetic val$height:I

.field public final synthetic val$viewTag:Ljava/lang/String;

.field public final synthetic val$width:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Ljava/lang/String;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$viewTag:Ljava/lang/String;

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$x:I

    iput p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$y:I

    iput p5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$width:I

    iput p6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$viewTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$x:I

    int-to-float v3, v3

    invoke-static {v2, v1, v3}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$y:I

    int-to-float v4, v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v3

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$width:I

    int-to-float v5, v5

    invoke-static {v4, v1, v5}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v4

    iget-object v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$height:I

    int-to-float v6, v6

    invoke-static {v5, v1, v6}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->reposition(IIII)V

    :cond_0
    return-void
.end method
