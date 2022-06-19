.class Lcom/google/android/material/appbar/c;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "ViewOffsetBehavior.java"


# annotations
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
.field private a:Lcom/google/android/material/appbar/d;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    .line 30
    iput v0, p0, Lcom/google/android/material/appbar/c;->b:I

    .line 31
    iput v0, p0, Lcom/google/android/material/appbar/c;->c:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/google/android/material/appbar/c;->b:I

    .line 31
    iput v0, p0, Lcom/google/android/material/appbar/c;->c:I

    .line 37
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/d;->a(I)Z

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 73
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/c;->b:I

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/c;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 45
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/android/material/appbar/d;

    invoke-direct {v0, p2}, Lcom/google/android/material/appbar/d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/d;->a()V

    .line 49
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/d;->b()V

    .line 51
    iget v0, p0, Lcom/google/android/material/appbar/c;->b:I

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    iget v1, p0, Lcom/google/android/material/appbar/c;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/d;->a(I)Z

    .line 53
    iput v2, p0, Lcom/google/android/material/appbar/c;->b:I

    .line 55
    :cond_1
    iget v0, p0, Lcom/google/android/material/appbar/c;->c:I

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    iget v1, p0, Lcom/google/android/material/appbar/c;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/d;->b(I)Z

    .line 57
    iput v2, p0, Lcom/google/android/material/appbar/c;->c:I

    .line 60
    :cond_2
    const/4 v0, 0x1

    return v0
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

    .prologue
    .line 66
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    .line 67
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/d;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/d;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
