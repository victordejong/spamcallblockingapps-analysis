.class public Lcom/millennialmedia/internal/video/VASTVideoView$6$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

.field public final synthetic val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$6;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->val$vastVideoWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v1, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    return-void
.end method
