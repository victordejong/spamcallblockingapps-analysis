.class public final synthetic Lqe0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqe0;->a:Lcarbon/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lqe0;->a:Lcarbon/widget/ImageView;

    invoke-static {v0, p1}, Lcarbon/widget/BottomBar;->w(Lcarbon/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
