.class final Landroidx/media2/widget/MediaControlView$30;
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

    .line 867
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$30;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 875
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$30;->a:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/media2/widget/MediaControlView;->k:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 870
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$30;->a:Landroidx/media2/widget/MediaControlView;

    const/4 v0, 0x3

    iput v0, p1, Landroidx/media2/widget/MediaControlView;->k:I

    return-void
.end method
