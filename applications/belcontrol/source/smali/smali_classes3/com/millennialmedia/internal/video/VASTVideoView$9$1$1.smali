.class public Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$9$1;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2200(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    return-void
.end method
