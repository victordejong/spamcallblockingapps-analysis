.class final Landroidx/media2/widget/MediaControlView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    .line 944
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$6;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 947
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 948
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$6;->a:Landroidx/media2/widget/MediaControlView;

    iget-boolean v1, v1, Landroidx/media2/widget/MediaControlView;->p:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    invoke-virtual {v0}, Landroidx/media2/widget/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$6;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->a()J

    move-result-wide v0

    .line 950
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$6;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v3, v2, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    rem-long/2addr v0, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroidx/media2/widget/MediaControlView;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
