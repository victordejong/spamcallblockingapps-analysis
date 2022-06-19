.class final Landroidx/media2/widget/MediaControlView$16;
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

    .line 1247
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$16;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1250
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$16;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-nez p1, :cond_0

    return-void

    .line 1251
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$16;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1}, Landroidx/media2/widget/MediaControlView;->d()V

    .line 1252
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$16;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    .line 2236
    iget-object v0, p1, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_2

    .line 2237
    iget-object p1, p1, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    .line 3072
    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3073
    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media2/session/MediaController$c;->m()Lcom/google/common/util/concurrent/a;

    return-void

    .line 3075
    :cond_1
    invoke-static {}, Landroidx/media2/session/MediaController;->n()Lcom/google/common/util/concurrent/a;

    return-void

    .line 2238
    :cond_2
    iget-object v0, p1, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_3

    .line 2239
    iget-object p1, p1, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->m()Lcom/google/common/util/concurrent/a;

    :cond_3
    return-void
.end method
