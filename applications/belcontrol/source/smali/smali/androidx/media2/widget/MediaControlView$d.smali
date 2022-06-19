.class public Landroidx/media2/widget/MediaControlView$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/MediaControlView;->l()V
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

    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$d;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$d;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->e0:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$d;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->d0:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$d;->a:Landroidx/media2/widget/MediaControlView;

    sget v1, Lzw;->ffwd:I

    invoke-virtual {p1, v1}, Landroidx/media2/widget/MediaControlView;->h(I)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$d;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->d:Luw;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Luw;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
