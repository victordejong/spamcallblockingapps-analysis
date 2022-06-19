.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;


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

.field public final synthetic val$mmWebView:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;->this$2:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->onNotifyClicked()V

    return-void
.end method
