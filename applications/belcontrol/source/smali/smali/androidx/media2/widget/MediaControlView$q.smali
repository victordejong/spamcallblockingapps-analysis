.class public Landroidx/media2/widget/MediaControlView$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$q;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$q;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->H0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$q;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->I0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$q;->a:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x2

    iput v0, p1, Landroidx/media2/widget/MediaControlView;->m:I

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->p0:Ljava/util/List;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView$i0;->c(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$q;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    iget p1, p1, Landroidx/media2/widget/MediaControlView;->n:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView$i0;->b(I)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$q;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->l0:Landroidx/media2/widget/MediaControlView$i0;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->e(Landroid/widget/BaseAdapter;)V

    return-void
.end method
