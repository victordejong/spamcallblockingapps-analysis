.class public final Ljv0$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ljv0;


# direct methods
.method public constructor <init>(Ljv0;)V
    .locals 0

    iput-object p1, p0, Ljv0$b;->a:Ljv0;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljv0;Ljv0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ljv0$b;-><init>(Ljv0;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    cmpl-float p1, p2, v4

    if-lez p1, :cond_0

    iget-object p1, p0, Ljv0$b;->a:Ljv0;

    invoke-virtual {p1}, Ljv0;->c()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljv0$b;->a:Ljv0;

    invoke-virtual {p1}, Ljv0;->b()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    cmpl-float p1, v1, v4

    if-lez p1, :cond_2

    iget-object p1, p0, Ljv0$b;->a:Ljv0;

    invoke-virtual {p1}, Ljv0;->a()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ljv0$b;->a:Ljv0;

    invoke-virtual {p1}, Ljv0;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return v0
.end method
