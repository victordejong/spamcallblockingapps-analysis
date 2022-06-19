.class public Lcom/google/android/material/h/a;
.super Ljava/lang/Object;
.source "InsetDialogOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Landroid/app/Dialog;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/material/h/a;->a:Landroid/app/Dialog;

    .line 47
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/google/android/material/h/a;->b:I

    .line 48
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/google/android/material/h/a;->c:I

    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/h/a;->d:I

    .line 50
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 54
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 56
    iget v2, p0, Lcom/google/android/material/h/a;->b:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 58
    iget v4, p0, Lcom/google/android/material/h/a;->c:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v4

    .line 61
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v4, v4

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-direct {v5, v2, v4, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 66
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    .line 70
    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 71
    iget v0, p0, Lcom/google/android/material/h/a;->d:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/material/h/a;->d:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 74
    iget-object v0, p0, Lcom/google/android/material/h/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
