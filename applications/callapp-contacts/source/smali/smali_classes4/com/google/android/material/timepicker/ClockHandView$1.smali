.class final Lcom/google/android/material/timepicker/ClockHandView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockHandView;->a(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/timepicker/ClockHandView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockHandView;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView$1;->a:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 146
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView$1;->a:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-static {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(Lcom/google/android/material/timepicker/ClockHandView;F)V

    return-void
.end method
