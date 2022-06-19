.class public Lcom/cocosw/bottomsheet/h;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocosw/bottomsheet/h$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public b:Lcom/cocosw/bottomsheet/l;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Landroid/widget/GridView;

.field public k:Lcom/cocosw/bottomsheet/j;

.field public l:Lcom/cocosw/bottomsheet/h$c;

.field public m:Landroid/widget/ImageView;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Lcom/cocosw/bottomsheet/a;

.field public r:Lcom/cocosw/bottomsheet/a;

.field public s:Lcom/cocosw/bottomsheet/a;

.field public t:Landroid/content/DialogInterface$OnDismissListener;

.field public u:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/cocosw/bottomsheet/h;->a:Landroid/util/SparseIntArray;

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lcom/cocosw/bottomsheet/h;->n:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/h;->o:Z

    .line 5
    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/h;->p:Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lj4/w0;->c:[I

    const/4 v2, 0x0

    const v3, 0x7f04007a

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xb

    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/h;->e:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/h;->d:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xc

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/h;->c:Ljava/lang/String;

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/h;->i:Z

    const/4 p2, 0x7

    const v1, 0x7f0c0025

    .line 12
    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/h;->f:I

    const/16 p2, 0x8

    const v1, 0x7f0c0027

    .line 13
    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/h;->g:I

    const/4 p2, 0x5

    const v1, 0x7f0c0024

    .line 14
    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/h;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    new-instance p2, Lcom/cocosw/bottomsheet/l;

    invoke-direct {p2, p0, p1}, Lcom/cocosw/bottomsheet/l;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cocosw/bottomsheet/h;->b:Lcom/cocosw/bottomsheet/l;

    return-void

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static a(Lcom/cocosw/bottomsheet/h;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 4
    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 5
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->q:Lcom/cocosw/bottomsheet/a;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 6
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/h;->d()V

    .line 7
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/cocosw/bottomsheet/g;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/g;-><init>(Lcom/cocosw/bottomsheet/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/h;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/j;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/cocosw/bottomsheet/h$a;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/h$a;-><init>(Lcom/cocosw/bottomsheet/h;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->r:Lcom/cocosw/bottomsheet/a;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 2
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/h;->d()V

    .line 3
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/h;->b()V

    .line 5
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 6
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h$c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 10
    iget-object v1, v1, Lcom/cocosw/bottomsheet/h$c;->f:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocosw/bottomsheet/b;

    .line 5
    invoke-virtual {v1}, Lcom/cocosw/bottomsheet/b;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/a;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 9
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/a;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 11
    :goto_1
    iget-object v4, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    invoke-virtual {v4}, Lcom/cocosw/bottomsheet/a;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 12
    iget-object v4, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    invoke-virtual {v4, v3}, Lcom/cocosw/bottomsheet/a;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    invoke-virtual {v0, v3}, Lcom/cocosw/bottomsheet/a;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 14
    new-instance v4, Lcom/cocosw/bottomsheet/j$b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/cocosw/bottomsheet/j$b;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cocosw/bottomsheet/j$b;

    .line 17
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    .line 19
    iput-object v0, v2, Lcom/cocosw/bottomsheet/j;->f:[Lcom/cocosw/bottomsheet/j$b;

    .line 20
    iget-object v0, v2, Lcom/cocosw/bottomsheet/j;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 21
    invoke-virtual {v2}, Lcom/cocosw/bottomsheet/j;->a()I

    .line 22
    iget-object v0, v2, Lcom/cocosw/bottomsheet/j;->f:[Lcom/cocosw/bottomsheet/j$b;

    new-instance v3, Lcom/cocosw/bottomsheet/k;

    invoke-direct {v3, v2}, Lcom/cocosw/bottomsheet/k;-><init>(Lcom/cocosw/bottomsheet/j;)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 23
    :goto_2
    iget-object v4, v2, Lcom/cocosw/bottomsheet/j;->f:[Lcom/cocosw/bottomsheet/j$b;

    array-length v5, v4

    if-ge v0, v5, :cond_6

    .line 24
    aget-object v4, v4, v0

    const/4 v5, 0x0

    .line 25
    :goto_3
    iget v6, v2, Lcom/cocosw/bottomsheet/j;->j:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    .line 26
    new-instance v6, Lcom/cocosw/bottomsheet/j$b;

    iget v7, v4, Lcom/cocosw/bottomsheet/j$b;->a:I

    iget-object v8, v4, Lcom/cocosw/bottomsheet/j$b;->c:Ljava/lang/CharSequence;

    invoke-direct {v6, v7, v8}, Lcom/cocosw/bottomsheet/j$b;-><init>(ILjava/lang/CharSequence;)V

    const/4 v8, 0x2

    .line 27
    iput v8, v6, Lcom/cocosw/bottomsheet/j$b;->d:I

    add-int/2addr v7, v3

    .line 28
    iput v7, v6, Lcom/cocosw/bottomsheet/j$b;->b:I

    .line 29
    iget-object v8, v2, Lcom/cocosw/bottomsheet/j;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30
    :cond_4
    new-instance v5, Lcom/cocosw/bottomsheet/j$b;

    iget v6, v4, Lcom/cocosw/bottomsheet/j$b;->a:I

    iget-object v8, v4, Lcom/cocosw/bottomsheet/j$b;->c:Ljava/lang/CharSequence;

    invoke-direct {v5, v6, v8}, Lcom/cocosw/bottomsheet/j$b;-><init>(ILjava/lang/CharSequence;)V

    .line 31
    iput v7, v5, Lcom/cocosw/bottomsheet/j$b;->d:I

    add-int/2addr v6, v3

    .line 32
    iput v6, v5, Lcom/cocosw/bottomsheet/j$b;->b:I

    .line 33
    iget-object v8, v2, Lcom/cocosw/bottomsheet/j;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 34
    iget-object v5, v2, Lcom/cocosw/bottomsheet/j;->f:[Lcom/cocosw/bottomsheet/j$b;

    array-length v6, v5

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_5

    add-int/lit8 v6, v0, 0x1

    .line 35
    aget-object v5, v5, v6

    iget v5, v5, Lcom/cocosw/bottomsheet/j$b;->a:I

    .line 36
    iget v6, v4, Lcom/cocosw/bottomsheet/j$b;->a:I

    sub-int v6, v5, v6

    .line 37
    iget v7, v2, Lcom/cocosw/bottomsheet/j;->j:I

    rem-int/2addr v6, v7

    sub-int v6, v7, v6

    if-eq v7, v6, :cond_5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_5

    .line 38
    new-instance v8, Lcom/cocosw/bottomsheet/j$b;

    iget v9, v4, Lcom/cocosw/bottomsheet/j$b;->a:I

    iget-object v10, v4, Lcom/cocosw/bottomsheet/j$b;->c:Ljava/lang/CharSequence;

    invoke-direct {v8, v9, v10}, Lcom/cocosw/bottomsheet/j$b;-><init>(ILjava/lang/CharSequence;)V

    .line 39
    iput v1, v8, Lcom/cocosw/bottomsheet/j$b;->d:I

    add-int v9, v5, v3

    .line 40
    iput v9, v8, Lcom/cocosw/bottomsheet/j$b;->b:I

    .line 41
    iget-object v10, v2, Lcom/cocosw/bottomsheet/j;->e:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    :cond_6
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/j;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_8
    :goto_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/h;->o:Z

    .line 4
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    iput-boolean v0, p0, Lcom/cocosw/bottomsheet/h;->o:Z

    const v0, 0x7f0c0021

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    const v0, 0x7f090087

    .line 7
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 8
    iget v2, p0, Lcom/cocosw/bottomsheet/h;->f:I

    invoke-static {p1, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 9
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/h;->p:Z

    if-nez v0, :cond_0

    .line 11
    iput-boolean v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->c:Z

    .line 12
    :cond_0
    new-instance v0, Lcom/cocosw/bottomsheet/c;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/c;-><init>(Lcom/cocosw/bottomsheet/h;)V

    .line 13
    iput-object v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->e:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$b;

    .line 14
    new-instance v0, Lcom/cocosw/bottomsheet/d;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/d;-><init>(Lcom/cocosw/bottomsheet/h;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 15
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 16
    aget v0, v0, v8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->b:Lcom/cocosw/bottomsheet/l;

    iget v0, v0, Lcom/cocosw/bottomsheet/l;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7, v8, v0, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 17
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->b:Lcom/cocosw/bottomsheet/l;

    iget-boolean v2, v1, Lcom/cocosw/bottomsheet/l;->b:Z

    const/4 v9, 0x1

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "config_showNavigationBar"

    const-string v10, "bool"

    .line 20
    invoke-virtual {v4, v6, v10, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 21
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 22
    iget-object v4, v1, Lcom/cocosw/bottomsheet/l;->e:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 23
    :cond_2
    iget-object v4, v1, Lcom/cocosw/bottomsheet/l;->e:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    .line 24
    :cond_3
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    xor-int/2addr v2, v9

    :cond_4
    :goto_1
    if-eqz v2, :cond_9

    .line 25
    iget-boolean v2, v1, Lcom/cocosw/bottomsheet/l;->d:Z

    if-eqz v2, :cond_5

    const-string v1, "navigation_bar_height"

    goto :goto_4

    .line 26
    :cond_5
    iget v1, v1, Lcom/cocosw/bottomsheet/l;->f:F

    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v1, v1, v4

    if-gez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    const-string v1, "navigation_bar_height_landscape"

    :goto_4
    const-string v2, "dimen"

    .line 27
    invoke-virtual {v3, v1, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 28
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, 0x0

    .line 29
    :goto_6
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v0, v8, v8, v8, v2}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f090077

    .line 30
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 32
    iget-object v1, v1, Lcom/cocosw/bottomsheet/h$c;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    .line 33
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v1, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 35
    iget-object v1, v1, Lcom/cocosw/bottomsheet/h$c;->d:Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const v0, 0x7f090078

    .line 37
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->m:Landroid/widget/ImageView;

    const v0, 0x7f090076

    .line 38
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    .line 39
    iput-object v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->b:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 43
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 47
    iput v0, p0, Lcom/cocosw/bottomsheet/h;->n:I

    .line 48
    iput-boolean v8, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->k:Z

    .line 49
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 50
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h$c;->b:Lcom/cocosw/bottomsheet/a;

    .line 51
    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 52
    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->r:Lcom/cocosw/bottomsheet/a;

    .line 53
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/a;->size()I

    move-result v0

    iget v1, p0, Lcom/cocosw/bottomsheet/h;->n:I

    const/4 v10, -0x1

    if-le v0, v1, :cond_c

    .line 54
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 55
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h$c;->b:Lcom/cocosw/bottomsheet/a;

    .line 56
    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->q:Lcom/cocosw/bottomsheet/a;

    sub-int/2addr v1, v9

    .line 57
    new-instance v2, Lcom/cocosw/bottomsheet/a;

    .line 58
    iget-object v3, v0, Lcom/cocosw/bottomsheet/a;->a:Landroid/content/Context;

    .line 59
    invoke-direct {v2, v3}, Lcom/cocosw/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v2, Lcom/cocosw/bottomsheet/a;->c:Ljava/util/ArrayList;

    .line 61
    iput-object v2, p0, Lcom/cocosw/bottomsheet/h;->r:Lcom/cocosw/bottomsheet/a;

    .line 62
    new-instance v12, Lcom/cocosw/bottomsheet/b;

    const/4 v2, 0x0

    const v3, 0x7f090088

    const/4 v4, 0x0

    iget v0, p0, Lcom/cocosw/bottomsheet/h;->n:I

    add-int/lit8 v13, v0, -0x1

    iget-object v6, p0, Lcom/cocosw/bottomsheet/h;->c:Ljava/lang/String;

    move-object v0, v12

    move-object v1, p1

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/cocosw/bottomsheet/b;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->e:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v0, v12, Lcom/cocosw/bottomsheet/b;->i:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-static {v13}, Lcom/cocosw/bottomsheet/a;->d(I)I

    move-result v0

    invoke-static {v11, v0}, Lcom/cocosw/bottomsheet/a;->a(Ljava/util/ArrayList;I)I

    move-result v0

    invoke-virtual {v11, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->r:Lcom/cocosw/bottomsheet/a;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/h;->s:Lcom/cocosw/bottomsheet/a;

    .line 67
    iput-boolean v9, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->k:Z

    .line 68
    :cond_c
    new-instance v2, Lcom/cocosw/bottomsheet/e;

    invoke-direct {v2, p0}, Lcom/cocosw/bottomsheet/e;-><init>(Lcom/cocosw/bottomsheet/h;)V

    .line 69
    new-instance v6, Lcom/cocosw/bottomsheet/j;

    const v3, 0x7f0c0026

    const v4, 0x7f09018c

    const v5, 0x7f090189

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cocosw/bottomsheet/j;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;III)V

    iput-object v6, p0, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    .line 70
    iget-object p1, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    invoke-virtual {p1, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object p1, p0, Lcom/cocosw/bottomsheet/h;->k:Lcom/cocosw/bottomsheet/j;

    iget-object v0, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    instance-of v1, v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    if-eqz v1, :cond_d

    .line 73
    iput-object v0, p1, Lcom/cocosw/bottomsheet/j;->q:Landroid/widget/GridView;

    .line 74
    invoke-virtual {v0}, Landroid/widget/GridView;->getStretchMode()I

    move-result v1

    iput v1, p1, Lcom/cocosw/bottomsheet/j;->n:I

    .line 75
    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/cocosw/bottomsheet/j;->q:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lcom/cocosw/bottomsheet/j;->q:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p1, Lcom/cocosw/bottomsheet/j;->k:I

    .line 76
    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getNumColumns()I

    move-result v1

    iput v1, p1, Lcom/cocosw/bottomsheet/j;->j:I

    .line 77
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getColumnWidth()I

    move-result v1

    iput v1, p1, Lcom/cocosw/bottomsheet/j;->o:I

    .line 78
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getHorizontalSpacing()I

    move-result v0

    iput v0, p1, Lcom/cocosw/bottomsheet/j;->p:I

    .line 79
    iget-object p1, p0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    new-instance v0, Lcom/cocosw/bottomsheet/f;

    invoke-direct {v0, p0, v7}, Lcom/cocosw/bottomsheet/f;-><init>(Lcom/cocosw/bottomsheet/h;Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/cocosw/bottomsheet/h;->l:Lcom/cocosw/bottomsheet/h$c;

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/h;->b()V

    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 84
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 85
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v9, [I

    const v2, 0x10100f4

    aput v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    new-instance v0, Lcom/cocosw/bottomsheet/h$b;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/h$b;-><init>(Lcom/cocosw/bottomsheet/h;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 92
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Does your grid view extends PinnedSectionGridView?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/h;->c()V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/h;->o:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/h;->t:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/h;->u:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method
