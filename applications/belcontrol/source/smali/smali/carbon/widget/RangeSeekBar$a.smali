.class public Lcarbon/widget/RangeSeekBar$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcarbon/widget/RangeSeekBar$a;->a:Lcarbon/widget/RangeSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcarbon/widget/RangeSeekBar$a;->a:Lcarbon/widget/RangeSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcarbon/widget/RangeSeekBar;->r(Lcarbon/widget/RangeSeekBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
