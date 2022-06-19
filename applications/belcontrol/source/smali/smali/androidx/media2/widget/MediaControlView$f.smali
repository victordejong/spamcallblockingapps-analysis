.class public Landroidx/media2/widget/MediaControlView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method public constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$f;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$f;->a:Landroidx/media2/widget/MediaControlView;

    iget v1, v0, Landroidx/media2/widget/MediaControlView;->r:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v2, v0, Landroidx/media2/widget/MediaControlView;->D:Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->B0:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->A0:Landroid/animation/AnimatorSet;

    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$f;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->d:Luw;

    invoke-virtual {v0}, Luw;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$f;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->H0:Ljava/lang/Runnable;

    iget-wide v2, v0, Landroidx/media2/widget/MediaControlView;->t:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/widget/MediaControlView;->r(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method
