.class final Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    .line 1330
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput p1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:I

    .line 1332
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/core/view/ac;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/core/view/ac;

    invoke-virtual {v0}, Landroidx/core/view/ac;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1334
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 1335
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v4, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1336
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 1337
    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a(Landroid/view/View;)Lcom/google/android/material/appbar/a;

    move-result-object v6

    .line 1339
    iget v7, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->a:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v4, 0x2

    if-eq v7, v4, :cond_1

    goto :goto_2

    :cond_1
    neg-int v4, p1

    int-to-float v4, v4

    .line 1345
    iget v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->b:F

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/android/material/appbar/a;->a(I)Z

    goto :goto_2

    :cond_2
    neg-int v5, p1

    .line 1341
    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1342
    invoke-virtual {v7, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Landroid/view/View;)I

    move-result v4

    invoke-static {v5, v1, v4}, Landroidx/core/b/a;->a(III)I

    move-result v4

    .line 1341
    invoke-virtual {v6, v4}, Lcom/google/android/material/appbar/a;->a(I)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1353
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a()V

    .line 1355
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 1356
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    .line 1360
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1361
    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v2}, Landroidx/core/view/v;->l(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1362
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lcom/google/android/material/internal/a;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->b(F)V

    return-void
.end method
