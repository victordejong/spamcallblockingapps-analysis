.class final Lcom/explorestack/iab/vast/activity/VastView$19$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView$19;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView$19;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView$19;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$19$2;->a:Lcom/explorestack/iab/vast/activity/VastView$19;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 754
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 755
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$19$2;->a:Lcom/explorestack/iab/vast/activity/VastView$19;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView$19;->b:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
