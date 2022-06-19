.class public Le2/a;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/a$a;,
        Le2/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Le2/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le2/g;

.field public final d:I

.field public final e:Le2/d;

.field public f:Le2/a$b;


# direct methods
.method public constructor <init>(Le2/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    iput-object p1, p0, Le2/a;->c:Le2/g;

    .line 3
    iput p2, p0, Le2/a;->d:I

    .line 4
    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->f:Le2/d;

    iput-object p1, p0, Le2/a;->e:Le2/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le2/a;->c:Le2/g;

    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 12

    .line 1
    check-cast p1, Le2/a$a;

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    .line 3
    iget-object v0, p0, Le2/a;->c:Le2/g;

    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le2/a;->c:Le2/g;

    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    iget v0, v0, Le2/g$a;->K:I

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Le2/a;->c:Le2/g;

    iget v0, v0, Le2/g;->p:I

    invoke-static {v0}, Lt/g;->c(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p1, Le2/a$a;->t:Landroid/widget/CompoundButton;

    check-cast p1, Landroid/widget/CheckBox;

    .line 8
    iget-object p1, p0, Le2/a;->c:Le2/g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 9
    :cond_1
    iget-object p1, p1, Le2/a$a;->t:Landroid/widget/CompoundButton;

    check-cast p1, Landroid/widget/RadioButton;

    .line 10
    iget-object v0, p0, Le2/a;->c:Le2/g;

    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    iget v4, v0, Le2/g$a;->A:I

    const/4 v5, 0x0

    if-ne v4, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 11
    :goto_0
    iget v0, v0, Le2/g$a;->p:I

    .line 12
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lh2/b;->c(Landroid/content/Context;)I

    move-result v4

    .line 13
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x4

    new-array v8, v7, [[I

    new-array v9, v3, [I

    fill-array-data v9, :array_0

    aput-object v9, v8, v5

    new-array v9, v3, [I

    fill-array-data v9, :array_1

    aput-object v9, v8, v1

    new-array v9, v3, [I

    fill-array-data v9, :array_2

    aput-object v9, v8, v3

    new-array v9, v3, [I

    fill-array-data v9, :array_3

    const/4 v10, 0x3

    aput-object v9, v8, v10

    new-array v7, v7, [I

    .line 14
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f0400f5

    invoke-static {v9, v11}, Lh2/b;->g(Landroid/content/Context;I)I

    move-result v9

    aput v9, v7, v5

    aput v0, v7, v1

    aput v4, v7, v3

    aput v4, v7, v10

    invoke-direct {v6, v8, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 15
    invoke-static {p1, v6}, Lg2/b;->d(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 18
    :goto_1
    iget-object p1, p0, Le2/a;->c:Le2/g;

    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    nop

    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data
.end method

.method public e(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Le2/a;->d:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le2/a;->c:Le2/g;

    .line 3
    iget-object v0, p2, Le2/g;->c:Le2/g$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p2, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->a:Landroid/content/Context;

    const v1, 0x7f0402f9

    invoke-static {v0, v1}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lh2/b;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    new-instance p2, Le2/a$a;

    invoke-direct {p2, p1, p0}, Le2/a$a;-><init>(Landroid/view/View;Le2/a;)V

    return-object p2
.end method
