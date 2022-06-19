.class final Landroidx/media2/widget/MediaControlView$13;
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

    .line 1201
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$13;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1204
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$13;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-nez p1, :cond_0

    return-void

    .line 1205
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$13;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->d()V

    .line 1206
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$13;->a:Landroidx/media2/widget/MediaControlView;

    .line 2034
    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->h()V

    .line 2036
    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    invoke-virtual {v0}, Landroidx/media2/widget/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2037
    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    invoke-virtual {v0}, Landroidx/media2/widget/k;->h()V

    const/4 v0, 0x1

    .line 2038
    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->b(I)V

    return-void

    .line 2040
    :cond_1
    iget-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->r:Z

    if-eqz v0, :cond_2

    .line 2041
    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/k;->a(J)V

    .line 2043
    :cond_2
    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    invoke-virtual {v0}, Landroidx/media2/widget/k;->i()V

    const/4 v0, 0x0

    .line 2044
    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->b(I)V

    return-void
.end method
