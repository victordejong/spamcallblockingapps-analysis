.class public Lx/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:I

.field public d:I

.field public final synthetic e:Lx/d;


# direct methods
.method public constructor <init>(Lx/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx/d$b;->e:Lx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 2
    iput p1, p0, Lx/d$b;->a:F

    .line 3
    iput p1, p0, Lx/d$b;->b:F

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lx/d$b;->c:I

    .line 5
    iput p1, p0, Lx/d$b;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    sget-object v0, Lx/d$d;->a:Lx/d$d;

    iget v1, p0, Lx/d$b;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v3, p0, Lx/d$b;->d:I

    if-eq v3, v2, :cond_e

    :cond_0
    if-ne v1, v2, :cond_1

    .line 2
    iget-object v1, p0, Lx/d$b;->e:Lx/d;

    iget v3, p0, Lx/d$b;->d:I

    invoke-virtual {v1, v3}, Lx/d;->x(I)V

    goto/16 :goto_5

    .line 3
    :cond_1
    iget v3, p0, Lx/d$b;->d:I

    if-ne v3, v2, :cond_c

    .line 4
    iget-object v3, p0, Lx/d$b;->e:Lx/d;

    .line 5
    invoke-virtual {v3, v0}, Lx/d;->setState(Lx/d$d;)V

    .line 6
    iput v1, v3, Lx/d;->u:I

    .line 7
    iput v2, v3, Lx/d;->t:I

    .line 8
    iput v2, v3, Lx/d;->v:I

    .line 9
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ly/b;

    if-eqz v3, :cond_d

    int-to-float v4, v2

    .line 10
    iget v5, v3, Ly/b;->b:I

    if-ne v5, v1, :cond_8

    if-ne v1, v2, :cond_2

    .line 11
    iget-object v1, v3, Ly/b;->d:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/b$a;

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v3, Ly/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/b$a;

    .line 13
    :goto_0
    iget v5, v3, Ly/b;->c:I

    if-eq v5, v2, :cond_3

    .line 14
    iget-object v6, v1, Ly/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly/b$b;

    invoke-virtual {v5, v4, v4}, Ly/b$b;->a(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_5

    .line 15
    :cond_3
    invoke-virtual {v1, v4, v4}, Ly/b$a;->a(FF)I

    move-result v4

    .line 16
    iget v5, v3, Ly/b;->c:I

    if-ne v5, v4, :cond_4

    goto :goto_5

    :cond_4
    if-ne v4, v2, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    .line 17
    :cond_5
    iget-object v5, v1, Ly/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly/b$b;

    iget-object v5, v5, Ly/b$b;->f:Landroidx/constraintlayout/widget/b;

    :goto_1
    if-ne v4, v2, :cond_6

    goto :goto_2

    .line 18
    :cond_6
    iget-object v1, v1, Ly/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/b$b;

    iget v1, v1, Ly/b$b;->e:I

    :goto_2
    if-nez v5, :cond_7

    goto :goto_5

    .line 19
    :cond_7
    iput v4, v3, Ly/b;->c:I

    .line 20
    iget-object v1, v3, Ly/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_5

    .line 21
    :cond_8
    iput v1, v3, Ly/b;->b:I

    .line 22
    iget-object v5, v3, Ly/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/b$a;

    .line 23
    invoke-virtual {v1, v4, v4}, Ly/b$a;->a(FF)I

    move-result v4

    if-ne v4, v2, :cond_9

    .line 24
    iget-object v5, v1, Ly/b$a;->d:Landroidx/constraintlayout/widget/b;

    goto :goto_3

    .line 25
    :cond_9
    iget-object v5, v1, Ly/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly/b$b;

    iget-object v5, v5, Ly/b$b;->f:Landroidx/constraintlayout/widget/b;

    :goto_3
    if-ne v4, v2, :cond_a

    goto :goto_4

    .line 26
    :cond_a
    iget-object v1, v1, Ly/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly/b$b;

    iget v1, v1, Ly/b$b;->e:I

    :goto_4
    if-nez v5, :cond_b

    goto :goto_5

    .line 27
    :cond_b
    iput v4, v3, Ly/b;->c:I

    .line 28
    iget-object v1, v3, Ly/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_5

    .line 29
    :cond_c
    iget-object v4, p0, Lx/d$b;->e:Lx/d;

    invoke-virtual {v4, v1, v3}, Lx/d;->w(II)V

    .line 30
    :cond_d
    :goto_5
    iget-object v1, p0, Lx/d$b;->e:Lx/d;

    invoke-virtual {v1, v0}, Lx/d;->setState(Lx/d$d;)V

    .line 31
    :cond_e
    iget v0, p0, Lx/d$b;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 32
    iget v0, p0, Lx/d$b;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 33
    :cond_f
    iget-object v0, p0, Lx/d$b;->e:Lx/d;

    iget v1, p0, Lx/d$b;->a:F

    invoke-virtual {v0, v1}, Lx/d;->setProgress(F)V

    return-void

    .line 34
    :cond_10
    iget-object v0, p0, Lx/d$b;->e:Lx/d;

    iget v1, p0, Lx/d$b;->a:F

    iget v3, p0, Lx/d$b;->b:F

    invoke-virtual {v0, v1, v3}, Lx/d;->v(FF)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 35
    iput v0, p0, Lx/d$b;->a:F

    .line 36
    iput v0, p0, Lx/d$b;->b:F

    .line 37
    iput v2, p0, Lx/d$b;->c:I

    .line 38
    iput v2, p0, Lx/d$b;->d:I

    return-void
.end method
