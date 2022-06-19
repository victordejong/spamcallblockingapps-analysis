.class final Landroidx/media2/widget/MediaControlView$18;
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

    .line 1265
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1268
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-nez p1, :cond_0

    return-void

    .line 1269
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->af:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1270
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->ag:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1272
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x2

    iput v0, p1, Landroidx/media2/widget/MediaControlView;->f:I

    .line 1273
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->L:Ljava/util/List;

    .line 3048
    iput-object v0, p1, Landroidx/media2/widget/MediaControlView$d;->a:Ljava/util/List;

    .line 1274
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->g:I

    add-int/lit8 v0, v0, 0x1

    .line 3052
    iput v0, p1, Landroidx/media2/widget/MediaControlView$d;->b:I

    .line 1275
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$18;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->J:Landroidx/media2/widget/MediaControlView$d;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->a(Landroid/widget/BaseAdapter;)V

    return-void
.end method
