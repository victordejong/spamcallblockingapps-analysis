.class public final synthetic Ljg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/RangeSeekBar;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/RangeSeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg0;->a:Lcarbon/widget/RangeSeekBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Ljg0;->a:Lcarbon/widget/RangeSeekBar;

    invoke-virtual {v0, p1}, Lcarbon/widget/RangeSeekBar;->C(Landroid/animation/ValueAnimator;)V

    return-void
.end method
