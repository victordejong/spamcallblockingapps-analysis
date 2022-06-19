.class public abstract Landroidx/recyclerview/widget/RecyclerView$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$i$b;,
        Landroidx/recyclerview/widget/RecyclerView$i$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/p$b;

.field private final b:Landroidx/recyclerview/widget/p$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field p:Landroidx/recyclerview/widget/b;

.field q:Landroidx/recyclerview/widget/RecyclerView;

.field r:Landroidx/recyclerview/widget/p;

.field s:Landroidx/recyclerview/widget/p;

.field t:Landroidx/recyclerview/widget/RecyclerView$r;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7900
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->a:Landroidx/recyclerview/widget/p$b;

    .line 7936
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$i$2;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$i$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->b:Landroidx/recyclerview/widget/p$b;

    .line 7977
    new-instance v2, Landroidx/recyclerview/widget/p;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/p$b;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->r:Landroidx/recyclerview/widget/p;

    .line 7978
    new-instance v0, Landroidx/recyclerview/widget/p;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/p$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->s:Landroidx/recyclerview/widget/p;

    const/4 v0, 0x0

    .line 7983
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->u:Z

    .line 7985
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 7991
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->w:Z

    const/4 v0, 0x1

    .line 7997
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    .line 7999
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->d:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    .line 8185
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8186
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 8194
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 8191
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 9741
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_2

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    if-eq p1, v2, :cond_4

    if-eq p1, v3, :cond_4

    goto :goto_4

    :cond_1
    if-ne p3, v0, :cond_8

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    if-ltz p3, :cond_3

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_5

    :cond_3
    if-ne p3, v1, :cond_5

    :cond_4
    :goto_1
    move p3, p0

    goto :goto_5

    :cond_5
    if-ne p3, v0, :cond_8

    if-eq p1, v2, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_3

    :cond_6
    move p3, p0

    :goto_2
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_3
    const/high16 p1, -0x80000000

    goto :goto_1

    :cond_8
    :goto_4
    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 9782
    :goto_5
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;
    .locals 2

    .line 10905
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$i$b;-><init>()V

    .line 10906
    sget-object v1, Landroidx/recyclerview/a$c;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 10908
    sget p1, Landroidx/recyclerview/a$c;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    .line 10910
    sget p1, Landroidx/recyclerview/a$c;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    .line 10911
    sget p1, Landroidx/recyclerview/a$c;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    .line 10912
    sget p1, Landroidx/recyclerview/a$c;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->d:Z

    .line 10913
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 8938
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8940
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    .line 14160
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->a(I)I

    move-result p1

    .line 14161
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/b$b;->b(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14165
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14166
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)Z

    .line 14168
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/b$b;->a(I)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 3

    .line 9876
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9877
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 9878
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 4

    .line 8864
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-nez p3, :cond_1

    .line 8865
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 8874
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView$v;)V

    goto :goto_1

    .line 8867
    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 8876
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8877
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 8887
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v3, :cond_5

    .line 8889
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8891
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/b;->a()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    .line 8899
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-direct {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->e(II)V

    goto :goto_4

    .line 8894
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 8896
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8902
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1, p1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 8903
    iput-boolean p2, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->e:Z

    .line 8904
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 8905
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a(Landroid/view/View;)V

    goto :goto_4

    .line 8878
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8879
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->d()V

    goto :goto_3

    .line 8881
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->f()V

    .line 8883
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8908
    :cond_8
    :goto_4
    iget-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->f:Z

    if-eqz p1, :cond_9

    .line 8912
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8913
    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->f:Z

    :cond_9
    return-void
.end method

.method private static b(III)Z
    .locals 3

    .line 9637
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9638
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static c(Landroid/view/View;)I
    .locals 0

    .line 8974
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 15060
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result p0

    return p0
.end method

.method private c(I)V
    .locals 1

    .line 9083
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    .line 16090
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->d(I)V

    return-void
.end method

.method private c(Landroid/view/View;I)V
    .locals 3

    .line 9124
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 16103
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v1

    .line 16104
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16105
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/q;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView$v;)V

    goto :goto_0

    .line 16107
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/q;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 16109
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v1

    invoke-virtual {v2, p1, p2, v0, v1}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 2

    .line 9794
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 9795
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    return p0
.end method

.method private e(II)V
    .locals 2

    .line 9155
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9160
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(I)V

    .line 9161
    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;I)V

    return-void

    .line 9157
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 9158
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static f(Landroid/view/View;)I
    .locals 2

    .line 9807
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 9808
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .line 9941
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->m(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    .line 9953
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->k(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    .line 9965
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->n(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 1

    .line 9977
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->l(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 0

    .line 10018
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public static l(Landroid/view/View;)I
    .locals 0

    .line 10033
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public static m(Landroid/view/View;)I
    .locals 0

    .line 10048
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public static n(Landroid/view/View;)I
    .locals 0

    .line 10063
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method private o(Landroid/view/View;)V
    .locals 3

    .line 8926
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    .line 14140
    iget-object v1, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/b$b;->a(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 14144
    iget-object v2, v0, Landroidx/recyclerview/widget/b;->b:Landroidx/recyclerview/widget/b$a;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b$a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14145
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)Z

    .line 14147
    :cond_0
    iget-object p1, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/b$b;

    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/b$b;->a(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 8670
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 8646
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 8647
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 8648
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8649
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8651
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public final a(ILandroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    .line 9210
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9211
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(I)V

    .line 9212
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 2

    .line 8146
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 8147
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    .line 8148
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(III)I

    move-result p2

    .line 8149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(III)I

    move-result p1

    .line 8150
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->setMeasuredDimension(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 13837
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 8837
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 9897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 9898
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 9899
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    .line 9898
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9904
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9905
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9906
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9907
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroid/graphics/RectF;

    .line 9908
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9909
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9910
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 9911
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 9912
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    .line 9913
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 9914
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 9910
    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9918
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 2

    .line 10711
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10713
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10714
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Landroid/view/View;Landroidx/core/view/a/c;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 0

    .line 9199
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->o(Landroid/view/View;)V

    .line 9200
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 20696
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 20699
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    .line 20700
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 20701
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 20702
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 20699
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 20704
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_3

    .line 20705
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 4

    .line 9490
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 9492
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 17498
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v2

    .line 17499
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 17505
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 17506
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_0

    .line 17507
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(I)V

    .line 17508
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    goto :goto_1

    .line 17510
    :cond_0
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->c(I)V

    .line 17511
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->c(Landroid/view/View;)V

    .line 17512
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Landroidx/recyclerview/widget/q;

    .line 18277
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/q;->d(Landroidx/recyclerview/widget/RecyclerView$v;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/core/view/a/c;)V
    .locals 3

    .line 10661
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 10662
    invoke-virtual {p3, v0}, Landroidx/core/view/a/c;->a(I)V

    .line 10663
    invoke-virtual {p3, v2}, Landroidx/core/view/a/c;->j(Z)V

    .line 10665
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 10666
    invoke-virtual {p3, v0}, Landroidx/core/view/a/c;->a(I)V

    .line 10667
    invoke-virtual {p3, v2}, Landroidx/core/view/a/c;->j(Z)V

    .line 10671
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result v0

    .line 10672
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I

    move-result p1

    const/4 p2, 0x0

    .line 10671
    invoke-static {v0, p1, p2, p2}, Landroidx/core/view/a/c$b;->a(IIZI)Landroidx/core/view/a/c$b;

    move-result-object p1

    .line 10675
    invoke-virtual {p3, p1}, Landroidx/core/view/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 3

    .line 8766
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 8767
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8768
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->b()V

    .line 8770
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 8771
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 13192
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->b()V

    .line 13194
    iget-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$r;->m:Z

    if-eqz v1, :cond_1

    .line 13195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    .line 13195
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13201
    :cond_1
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 13202
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$r;->i:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 13203
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$r;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 13206
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$r;->g:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$s;->a:I

    const/4 v0, 0x1

    .line 13207
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$r;->k:Z

    .line 13208
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$r;->j:Z

    .line 13209
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->getTargetPosition()I

    move-result v1

    .line 13368
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$r;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(I)Landroid/view/View;

    move-result-object v1

    .line 13209
    iput-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$r;->l:Landroid/view/View;

    .line 13211
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$r;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->F:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->a()V

    .line 13213
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$r;->m:Z

    return-void

    .line 13204
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    .line 8752
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 8206
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8207
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .line 9591
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_1

    .line 9592
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9593
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;ILandroid/os/Bundle;)Z
    .locals 7

    .line 10836
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_3

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    const/4 p3, -0x1

    .line 10842
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10843
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10845
    :goto_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10846
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    .line 10850
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10851
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 10853
    :goto_1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 10854
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_2
    move v3, p1

    move v2, p3

    goto :goto_3

    :cond_5
    move v3, p1

    const/4 v2, 0x0

    :goto_3
    if-nez v3, :cond_6

    if-nez v2, :cond_6

    return p2

    .line 10861
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->a(IILandroid/view/animation/Interpolator;IZ)V

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 19127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    .line 19128
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v2

    .line 19129
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 19130
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 19131
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 19132
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v6, p2

    .line 19133
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v5

    .line 19134
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    .line 19136
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    .line 19137
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    .line 19138
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p3, v4

    .line 19139
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 19145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getLayoutDirection()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 19147
    :cond_0
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    .line 19150
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 19156
    :cond_3
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    .line 10202
    aget p2, v0, v1

    .line 10203
    aget p3, v0, v8

    if-eqz p5, :cond_7

    .line 19265
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_5

    :cond_4
    :goto_3
    const/4 p5, 0x0

    goto :goto_4

    .line 19269
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v0

    .line 19270
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v2

    .line 19271
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 19272
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 19273
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    .line 19929
    invoke-static {p5, v5}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 19276
    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p2

    if-ge p5, v3, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p2

    if-le p5, v0, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    if-ge p5, v4, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p3

    if-gt p5, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 p5, 0x1

    :goto_4
    if-eqz p5, :cond_8

    :cond_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_5

    :cond_8
    return v1

    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    .line 10207
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    .line 10209
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a_(II)V

    :goto_6
    return v8
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 8465
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8466
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Landroid/view/View;
    .locals 5

    .line 9030
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 9032
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9033
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9037
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->I:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 15898
    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$s;->g:Z

    if-nez v4, :cond_0

    .line 9038
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract b()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 13860
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 0

    const/4 p2, 0x0

    .line 8860
    invoke-direct {p0, p1, p2, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 9998
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 9999
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 10002
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 10003
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method final b(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 6

    .line 18786
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 18790
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$v;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 9530
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v3

    .line 9531
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 9539
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$v;->setIsRecyclable(Z)V

    .line 9540
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$v;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9541
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9543
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz v4, :cond_1

    .line 9544
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->E:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$v;)V

    :cond_1
    const/4 v4, 0x1

    .line 9546
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$v;->setIsRecyclable(Z)V

    .line 9547
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 18794
    :cond_3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 18795
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 18796
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    .line 9551
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void
.end method

.method final b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    const/4 v0, 0x0

    .line 8422
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 8423
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void
.end method

.method final b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .line 9606
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_1

    .line 9608
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9609
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(II)V
    .locals 0

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 2

    .line 10621
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 10622
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10623
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$v;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10624
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(ILandroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 8584
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 9002
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 9005
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 9009
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(I)V
    .locals 4

    .line 9421
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 16252
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 16254
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(II)V
    .locals 1

    .line 10529
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->d(II)V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$s;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(I)V
    .locals 4

    .line 9433
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 17214
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 17216
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/b;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 9233
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 9222
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 8529
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .line 9387
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 9390
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9391
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/b;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 9297
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    .line 9265
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 9410
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 9411
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 8790
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 10556
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/v;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 10548
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/v;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 9337
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 9307
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 9327
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 9317
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 9281
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    .line 9249
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    return v0
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 8434
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    .line 8297
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->w:Z

    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .locals 1

    .line 8362
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->d:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .line 8778
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()V
    .locals 1

    .line 8157
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8158
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method final m()V
    .locals 1

    .line 10589
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v0, :cond_0

    .line 10590
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->b()V

    :cond_0
    return-void
.end method

.method setExactMeasureSpecsFrom(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 10919
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10920
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10918
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->setMeasureSpecs(II)V

    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 1

    .line 8068
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 8069
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 8070
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->b:Z

    if-nez p1, :cond_0

    .line 8071
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 8074
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    .line 8075
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    if-nez p1, :cond_1

    .line 8076
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->b:Z

    if-nez p1, :cond_1

    .line 8077
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    :cond_1
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1

    .line 10540
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 8

    .line 8095
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 8097
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->d(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    :goto_0
    if-ge v1, v0, :cond_5

    .line 8106
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8107
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    .line 12929
    invoke-static {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8109
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_1

    .line 8110
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 8112
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_2

    .line 8113
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 8115
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v5, :cond_3

    .line 8116
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 8118
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4

    .line 8119
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8122
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 8123
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/graphics/Rect;II)V

    return-void
.end method

.method setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8053
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 8054
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    const/4 p1, 0x0

    .line 8055
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 8056
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    goto :goto_0

    .line 8058
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 8059
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->h:Landroidx/recyclerview/widget/b;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    .line 8060
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 8061
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 8063
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    .line 8064
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    return-void
.end method
