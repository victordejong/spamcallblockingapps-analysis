.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


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
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/customview/a/c;

.field public b:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

.field public c:I

.field d:F

.field public e:F

.field public f:F

.field private g:Z

.field private h:F

.field private i:Z

.field private final j:Landroidx/customview/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    const/4 v1, 0x2

    .line 92
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 93
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    .line 94
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    .line 95
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    .line 231
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/customview/a/c$a;

    return-void
.end method

.method public static a(F)F
    .locals 1

    const/4 v0, 0x0

    .line 439
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static a(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method static a(III)I
    .locals 0

    .line 443
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    .line 179
    invoke-static {p2}, Landroidx/core/view/v;->e(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 181
    invoke-static {p2, p3}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    const/high16 p3, 0x100000

    .line 1409
    invoke-static {p2, p3}, Landroidx/core/view/v;->d(Landroid/view/View;I)V

    .line 1410
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1411
    sget-object p3, Landroidx/core/view/a/c$a;->u:Landroidx/core/view/a/c$a;

    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    invoke-static {p2, p3, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a/c$a;Landroidx/core/view/a/f;)V

    :cond_0
    return p1
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

    .line 190
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    .line 192
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    :goto_0
    if-eqz v0, :cond_4

    .line 2379
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/a/c;

    if-nez p2, :cond_3

    .line 2380
    iget-boolean p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/customview/a/c$a;

    .line 2382
    invoke-static {p1, p2, v0}, Landroidx/customview/a/c;->a(Landroid/view/ViewGroup;FLandroidx/customview/a/c$a;)Landroidx/customview/a/c;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:Landroidx/customview/a/c$a;

    .line 2383
    invoke-static {p1, p2}, Landroidx/customview/a/c;->a(Landroid/view/ViewGroup;Landroidx/customview/a/c$a;)Landroidx/customview/a/c;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/a/c;

    .line 207
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/a/c;

    invoke-virtual {p1, p3}, Landroidx/customview/a/c;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 214
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/a/c;

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1, p3}, Landroidx/customview/a/c;->b(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
