.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$2;->this$2:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$2;->this$2:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$500(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachSucceeded(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$2;->this$2:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$500(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
