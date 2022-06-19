.class public Lcom/millennialmedia/internal/video/VASTVideoView$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->loadBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field public final synthetic val$background:Lcom/millennialmedia/internal/video/VASTParser$Background;

.field public final synthetic val$backgroundImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$Background;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->val$background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->val$backgroundImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->val$background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$11$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$11$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$11;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
