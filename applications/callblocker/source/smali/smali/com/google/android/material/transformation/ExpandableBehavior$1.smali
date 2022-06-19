.class Lcom/google/android/material/transformation/ExpandableBehavior$1;
.super Ljava/lang/Object;
.source "ExpandableBehavior.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/ExpandableBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/k/b;

.field final synthetic d:Lcom/google/android/material/transformation/ExpandableBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/k/b;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->d:Lcom/google/android/material/transformation/ExpandableBehavior;

    iput-object p2, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->b:I

    iput-object p4, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->c:Lcom/google/android/material/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->d:Lcom/google/android/material/transformation/ExpandableBehavior;

    invoke-static {v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Lcom/google/android/material/transformation/ExpandableBehavior;)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->b:I

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->d:Lcom/google/android/material/transformation/ExpandableBehavior;

    iget-object v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->c:Lcom/google/android/material/k/b;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/material/transformation/ExpandableBehavior$1;->c:Lcom/google/android/material/k/b;

    invoke-interface {v3}, Lcom/google/android/material/k/b;->a()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z

    .line 106
    :cond_0
    return v4
.end method
