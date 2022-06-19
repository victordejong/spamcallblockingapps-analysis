.class final Landroidx/media2/widget/MediaControlView$22;
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

    .line 1326
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1329
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-nez p1, :cond_0

    return-void

    .line 1330
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->af:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1331
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->ag:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1333
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x3

    iput v0, p1, Landroidx/media2/widget/MediaControlView;->f:I

    .line 1334
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->I:Landroidx/media2/widget/MediaControlView$c;

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->K:Ljava/util/List;

    .line 2995
    iput-object v0, p1, Landroidx/media2/widget/MediaControlView$c;->a:Ljava/util/List;

    .line 1335
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$22;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->I:Landroidx/media2/widget/MediaControlView$c;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->a(Landroid/widget/BaseAdapter;)V

    return-void
.end method
