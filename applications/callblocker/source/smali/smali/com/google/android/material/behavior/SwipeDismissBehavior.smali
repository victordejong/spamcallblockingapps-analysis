.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$b;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/d/b/c;

.field b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

.field c:I

.field d:F

.field e:F

.field f:F

.field private g:Z

.field private h:F

.field private i:Z

.field private final j:Landroidx/d/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    .line 84
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    .line 88
    iput v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    .line 89
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    .line 90
    iput v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    .line 208
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/d/b/c$a;

    return-void
.end method

.method static a(FFF)F
    .locals 1

    .prologue
    .line 386
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static a(III)I
    .locals 1

    .prologue
    .line 390
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/d/b/c;

    if-nez v0, :cond_0

    .line 357
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/d/b/c$a;

    .line 359
    invoke-static {p1, v0, v1}, Landroidx/d/b/c;->a(Landroid/view/ViewGroup;FLandroidx/d/b/c$a;)Landroidx/d/b/c;

    move-result-object v0

    .line 360
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/d/b/c;

    .line 362
    :cond_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/d/b/c$a;

    .line 360
    invoke-static {p1, v0}, Landroidx/d/b/c;->a(Landroid/view/ViewGroup;Landroidx/d/b/c$a;)Landroidx/d/b/c;

    move-result-object v0

    goto :goto_0
.end method

.method static b(FFF)F
    .locals 2

    .prologue
    .line 405
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    .line 141
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    .line 123
    return-void
.end method

.method public a(Lcom/google/android/material/behavior/SwipeDismissBehavior$a;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    .line 113
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-boolean v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    .line 169
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 182
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Landroid/view/ViewGroup;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/d/b/c;

    invoke-virtual {v0, p3}, Landroidx/d/b/c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 186
    :cond_0
    return v0

    .line 172
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    .line 173
    iget-boolean v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    goto :goto_0

    .line 178
    :pswitch_2
    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    .line 150
    return-void
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/d/b/c;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/d/b/c;

    invoke-virtual {v0, p3}, Landroidx/d/b/c;->b(Landroid/view/MotionEvent;)V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
