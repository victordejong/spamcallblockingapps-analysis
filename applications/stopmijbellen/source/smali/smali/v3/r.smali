.class public final Lv3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m;


# instance fields
.field public final synthetic a:Lv3/t$a;

.field public final synthetic b:Lv3/t$b;


# direct methods
.method public constructor <init>(Lv3/t$a;Lv3/t$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/r;->a:Lv3/t$a;

    iput-object p2, p0, Lv3/r;->b:Lv3/t$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lm0/b0;)Lm0/b0;
    .locals 10

    .line 1
    iget-object v0, p0, Lv3/r;->a:Lv3/t$a;

    iget-object v1, p0, Lv3/r;->b:Lv3/t$b;

    .line 2
    iget v2, v1, Lv3/t$b;->a:I

    .line 3
    iget v3, v1, Lv3/t$b;->c:I

    .line 4
    iget v1, v1, Lv3/t$b;->d:I

    .line 5
    check-cast v0, Lj3/b;

    .line 6
    iget-object v4, v0, Lj3/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Lm0/b0;->e()I

    move-result v5

    .line 7
    iput v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:I

    .line 8
    invoke-static {p1}, Lv3/t;->a(Landroid/view/View;)Z

    move-result v4

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 12
    iget-object v8, v0, Lj3/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 13
    iget-boolean v9, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-eqz v9, :cond_0

    .line 14
    invoke-virtual {p2}, Lm0/b0;->b()I

    move-result v5

    .line 15
    iput v5, v8, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    .line 16
    iget-object v5, v0, Lj3/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 17
    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    add-int/2addr v5, v1

    .line 18
    :cond_0
    iget-object v1, v0, Lj3/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 19
    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-eqz v1, :cond_2

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 20
    :goto_0
    invoke-virtual {p2}, Lm0/b0;->c()I

    move-result v6

    add-int/2addr v6, v1

    .line 21
    :cond_2
    iget-object v1, v0, Lj3/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 22
    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    if-eqz v1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 23
    :goto_1
    invoke-virtual {p2}, Lm0/b0;->d()I

    move-result v1

    add-int v7, v1, v2

    .line 24
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v6, v1, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    iget-boolean p1, v0, Lj3/b;->a:Z

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, v0, Lj3/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 27
    iget-object v1, p2, Lm0/b0;->a:Lm0/b0$k;

    invoke-virtual {v1}, Lm0/b0$k;->f()Lf0/b;

    move-result-object v1

    .line 28
    iget v1, v1, Lf0/b;->d:I

    .line 29
    iput v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:I

    .line 30
    :cond_5
    iget-object p1, v0, Lj3/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 31
    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-nez v1, :cond_6

    .line 32
    iget-boolean v0, v0, Lj3/b;->a:Z

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K(Z)V

    :cond_7
    return-object p2
.end method
