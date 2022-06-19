.class public Lio/supercharge/shimmerlayout/ShimmerLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/supercharge/shimmerlayout/ShimmerLayout;->getShimmerAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lio/supercharge/shimmerlayout/ShimmerLayout;


# direct methods
.method public constructor <init>(Lio/supercharge/shimmerlayout/ShimmerLayout;II)V
    .locals 0

    iput-object p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->c:Lio/supercharge/shimmerlayout/ShimmerLayout;

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->a:I

    iput p3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->c:Lio/supercharge/shimmerlayout/ShimmerLayout;

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->b(Lio/supercharge/shimmerlayout/ShimmerLayout;I)I

    iget-object p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->c:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-static {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->a(Lio/supercharge/shimmerlayout/ShimmerLayout;)I

    move-result p1

    iget v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->b:I

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$b;->c:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
