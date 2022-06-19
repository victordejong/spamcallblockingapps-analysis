.class public Lcom/millennialmedia/internal/video/VASTVideoView$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->registerVideoClicks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field public final synthetic val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

.field public final synthetic val$wrappersVideoClicks:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$wrappersVideoClicks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2700(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$wrappersVideoClicks:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2800(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Z)V

    return-void
.end method
