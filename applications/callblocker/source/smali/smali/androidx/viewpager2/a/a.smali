.class final Landroidx/viewpager2/a/a;
.super Ljava/lang/Object;
.source "AnimateLayoutChangeDetector.java"


# static fields
.field private static final a:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field private b:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 46
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Landroidx/viewpager2/a/a;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    sget-object v0, Landroidx/viewpager2/a/a;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/viewpager2/a/a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 54
    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 128
    check-cast p0, Landroid/view/ViewGroup;

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v1

    .line 134
    :goto_1
    if-ge v2, v3, :cond_2

    .line 135
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/viewpager2/a/a;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method private b()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Landroidx/viewpager2/a/a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v7

    .line 67
    if-nez v7, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 71
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/a/a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    .line 72
    :goto_1
    const/4 v0, 0x2

    filled-new-array {v7, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v6, v4

    .line 73
    :goto_2
    if-ge v6, v7, :cond_7

    .line 74
    iget-object v1, p0, Landroidx/viewpager2/a/a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v8

    .line 75
    if-nez v8, :cond_3

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "null view contained in the view hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v4

    .line 71
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 80
    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    .line 81
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    :goto_3
    aget-object v9, v0, v6

    if-eqz v2, :cond_5

    .line 86
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v10

    .line 87
    :goto_4
    aput v5, v9, v4

    .line 88
    aget-object v5, v0, v6

    if-eqz v2, :cond_6

    .line 89
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v8

    .line 90
    :goto_5
    aput v1, v5, v3

    .line 73
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 83
    :cond_4
    sget-object v1, Landroidx/viewpager2/a/a;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    .line 87
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v10

    goto :goto_4

    .line 90
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v8

    goto :goto_5

    .line 94
    :cond_7
    new-instance v1, Landroidx/viewpager2/a/a$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/a/a$1;-><init>(Landroidx/viewpager2/a/a;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v1, v3

    .line 102
    :goto_6
    if-ge v1, v7, :cond_9

    .line 103
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    aget v2, v2, v3

    aget-object v5, v0, v1

    aget v5, v5, v4

    if-eq v2, v5, :cond_8

    move v3, v4

    .line 104
    goto :goto_0

    .line 102
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 109
    :cond_9
    aget-object v1, v0, v4

    aget v1, v1, v3

    aget-object v2, v0, v4

    aget v2, v2, v4

    sub-int/2addr v1, v2

    .line 110
    aget-object v2, v0, v4

    aget v2, v2, v4

    if-gtz v2, :cond_a

    add-int/lit8 v2, v7, -0x1

    aget-object v0, v0, v2

    aget v0, v0, v3

    if-ge v0, v1, :cond_0

    :cond_a
    move v3, v4

    .line 111
    goto/16 :goto_0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Landroidx/viewpager2/a/a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v2

    move v1, v0

    .line 118
    :goto_0
    if-ge v1, v2, :cond_0

    .line 119
    iget-object v3, p0, Landroidx/viewpager2/a/a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/viewpager2/a/a;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    const/4 v0, 0x1

    .line 123
    :cond_0
    return v0

    .line 118
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Landroidx/viewpager2/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/viewpager2/a/a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->y()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 61
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager2/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :goto_0
    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
