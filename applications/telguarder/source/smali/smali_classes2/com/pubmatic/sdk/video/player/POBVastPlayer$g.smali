.class Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVastPlayer;->onProgressUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVastPlayer;I)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    iput p2, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->d(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->a:I

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)D

    move-result-wide v1

    int-to-double v3, v0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v1}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->e(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->b(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->c(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->f(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->b:Lcom/pubmatic/sdk/video/player/POBVastPlayer;

    invoke-static {v0}, Lcom/pubmatic/sdk/video/player/POBVastPlayer;->g(Lcom/pubmatic/sdk/video/player/POBVastPlayer;)Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;

    move-result-object v0

    iget v1, p0, Lcom/pubmatic/sdk/video/player/POBVastPlayer$g;->a:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/video/player/POBProgressiveEventHandler;->onProgress(I)V

    :cond_2
    return-void
.end method
