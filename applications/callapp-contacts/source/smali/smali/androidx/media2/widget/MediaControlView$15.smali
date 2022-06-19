.class final Landroidx/media2/widget/MediaControlView$15;
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

    .line 1228
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1231
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-nez p1, :cond_0

    return-void

    .line 1232
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->d()V

    .line 1233
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1235
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->g()J

    move-result-wide v0

    .line 1236
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroidx/media2/widget/MediaControlView;->l:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroidx/media2/widget/MediaControlView;->a(JZ)V

    .line 1241
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    iget-wide v2, p1, Landroidx/media2/widget/MediaControlView;->l:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    invoke-virtual {p1}, Landroidx/media2/widget/k;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1242
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$15;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1, v4}, Landroidx/media2/widget/MediaControlView;->b(Z)V

    :cond_1
    return-void
.end method
