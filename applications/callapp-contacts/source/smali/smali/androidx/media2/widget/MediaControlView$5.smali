.class final Landroidx/media2/widget/MediaControlView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 928
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$5;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 939
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$5;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->F:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 931
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$5;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->E:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 933
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$5;->a:Landroidx/media2/widget/MediaControlView;

    sget v1, Landroidx/media2/widget/l$e;->ffwd:I

    invoke-virtual {p1, v1}, Landroidx/media2/widget/MediaControlView;->a(I)Landroid/widget/ImageButton;

    move-result-object p1

    .line 934
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$5;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$5;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->d:Landroidx/media2/widget/k;

    invoke-virtual {v1}, Landroidx/media2/widget/k;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 933
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
