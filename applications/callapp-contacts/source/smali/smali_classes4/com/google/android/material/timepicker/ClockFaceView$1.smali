.class final Lcom/google/android/material/timepicker/ClockFaceView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v2}, Lcom/google/android/material/timepicker/ClockFaceView;->a(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    move-result-object v2

    .line 1261
    iget v2, v2, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    sub-int/2addr v0, v2

    .line 136
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v2}, Lcom/google/android/material/timepicker/ClockFaceView;->b(Lcom/google/android/material/timepicker/ClockFaceView;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 137
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;->a(I)V

    return v1
.end method
