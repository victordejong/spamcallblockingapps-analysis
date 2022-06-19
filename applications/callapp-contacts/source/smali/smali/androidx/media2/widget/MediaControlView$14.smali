.class final Landroidx/media2/widget/MediaControlView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1210
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1213
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-nez p1, :cond_0

    return-void

    .line 1214
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->d()V

    .line 1215
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1218
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->r:Z

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v4, p1, Landroidx/media2/widget/MediaControlView;->l:J

    cmp-long p1, v4, v1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1219
    :goto_0
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    if-eqz p1, :cond_2

    iget-wide v4, v4, Landroidx/media2/widget/MediaControlView;->l:J

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroidx/media2/widget/MediaControlView;->g()J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, 0x2710

    sub-long/2addr v4, v6

    .line 1220
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1221
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v4, v1, v2, v0}, Landroidx/media2/widget/MediaControlView;->a(JZ)V

    if-eqz p1, :cond_3

    .line 1223
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$14;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1, v3}, Landroidx/media2/widget/MediaControlView;->b(Z)V

    :cond_3
    return-void
.end method
