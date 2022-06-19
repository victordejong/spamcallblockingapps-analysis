.class final Lcom/explorestack/iab/vast/activity/VastView$19;
.super Lcom/explorestack/iab/vast/activity/VastView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$19;->b:Lcom/explorestack/iab/vast/activity/VastView;

    iput-object p5, p0, Lcom/explorestack/iab/vast/activity/VastView$19;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2, p3, p4}, Lcom/explorestack/iab/vast/activity/VastView$b;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$19;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 738
    new-instance p1, Lcom/explorestack/iab/vast/activity/VastView$19$1;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/vast/activity/VastView$19$1;-><init>(Lcom/explorestack/iab/vast/activity/VastView$19;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 746
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 747
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 748
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 749
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x64

    .line 750
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$19$2;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$19$2;-><init>(Lcom/explorestack/iab/vast/activity/VastView$19;)V

    .line 751
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 757
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 758
    new-instance p1, Lcom/explorestack/iab/vast/activity/VastView$19$3;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/vast/activity/VastView$19$3;-><init>(Lcom/explorestack/iab/vast/activity/VastView$19;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
