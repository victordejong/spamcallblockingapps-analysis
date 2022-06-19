.class public Lcarbon/widget/RangeSeekBar$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/RangeSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/RangeSeekBar;


# direct methods
.method public constructor <init>(Lcarbon/widget/RangeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar$c;->a:Lcarbon/widget/RangeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/RangeSeekBar$c;->a:Lcarbon/widget/RangeSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcarbon/widget/RangeSeekBar;->T:F

    iget-object p1, p0, Lcarbon/widget/RangeSeekBar$c;->a:Lcarbon/widget/RangeSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
