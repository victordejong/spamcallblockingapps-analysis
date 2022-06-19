.class public Lcom/millennialmedia/internal/video/LightboxView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$002(Lcom/millennialmedia/internal/video/LightboxView;Z)Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->restart()V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1f4

    invoke-static {p1, v0, v1, v2, v3}, Lcom/millennialmedia/internal/video/LightboxView;->access$500(Lcom/millennialmedia/internal/video/LightboxView;JJ)V

    :cond_1
    return-void
.end method
