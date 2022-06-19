.class Lcom/google/android/material/appbar/ViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
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
.field private a:Lcom/google/android/material/appbar/a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:I

    .line 31
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:I

    .line 31
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 45
    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/google/android/material/appbar/a;

    invoke-direct {p1, p2}, Lcom/google/android/material/appbar/a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/a;->a()V

    .line 49
    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/a;->b()V

    .line 51
    iget p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 52
    iget-object p3, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {p3, p1}, Lcom/google/android/material/appbar/a;->a(I)Z

    .line 53
    iput p2, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:I

    .line 55
    :cond_1
    iget p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    if-eqz p1, :cond_3

    .line 56
    iget-object p3, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    .line 1077
    iget-boolean v0, p3, Lcom/google/android/material/appbar/a;->d:Z

    if-eqz v0, :cond_2

    iget v0, p3, Lcom/google/android/material/appbar/a;->c:I

    if-eq v0, p1, :cond_2

    .line 1078
    iput p1, p3, Lcom/google/android/material/appbar/a;->c:I

    .line 1079
    invoke-virtual {p3}, Lcom/google/android/material/appbar/a;->b()V

    .line 57
    :cond_2
    iput p2, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/a;->a(I)Z

    move-result p1

    return p1

    .line 73
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:I

    const/4 p1, 0x0

    return p1
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->a:Lcom/google/android/material/appbar/a;

    if-eqz v0, :cond_0

    .line 1086
    iget v0, v0, Lcom/google/android/material/appbar/a;->b:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
