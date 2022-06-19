.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$b;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$d;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$a;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MaterialButtonToggleGroup"

.field private static final b:I


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/material/button/MaterialButtonToggleGroup$a;

.field private final e:Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

.field private final f:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/Integer;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    sput v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 180
    sget v0, Lcom/google/android/material/a$b;->materialButtonToggleGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 185
    sget v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Ljava/util/List;

    .line 145
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$a;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup$a;

    .line 146
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    .line 147
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    .line 149
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:Ljava/util/Comparator;

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    sget-object v2, Lcom/google/android/material/a$l;->MaterialButtonToggleGroup:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 189
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 192
    sget p3, Lcom/google/android/material/a$l;->MaterialButtonToggleGroup_singleSelection:I

    .line 193
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 192
    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 194
    sget p3, Lcom/google/android/material/a$l;->MaterialButtonToggleGroup_checkedButton:I

    const/4 v0, -0x1

    .line 195
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    .line 196
    sget p3, Lcom/google/android/material/a$l;->MaterialButtonToggleGroup_selectionRequired:I

    .line 197
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Z

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 199
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-static {p0, p1}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/button/MaterialButtonToggleGroup;I)I
    .locals 0

    .line 122
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I
    .locals 3

    .line 10641
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10645
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 10646
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    .line 10649
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 765
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 766
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 767
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    return-object p0

    .line 770
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private a(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    if-ne p2, p3, :cond_0

    return-object v0

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne p1, p2, :cond_3

    if-eqz v1, :cond_2

    .line 668
    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p1, p3, :cond_5

    if-eqz v1, :cond_4

    .line 672
    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 410
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(IZ)V
    .locals 1

    .line 503
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 504
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    .line 506
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 507
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/material/k/m$a;Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 681
    invoke-virtual {p0, p1}, Lcom/google/android/material/k/m$a;->a(F)Lcom/google/android/material/k/m$a;

    return-void

    .line 685
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a:Lcom/google/android/material/k/c;

    .line 9147
    iput-object v0, p0, Lcom/google/android/material/k/m$a;->e:Lcom/google/android/material/k/c;

    .line 686
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->d:Lcom/google/android/material/k/c;

    .line 9189
    iput-object v0, p0, Lcom/google/android/material/k/m$a;->h:Lcom/google/android/material/k/c;

    .line 687
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b:Lcom/google/android/material/k/c;

    .line 10161
    iput-object v0, p0, Lcom/google/android/material/k/m$a;->f:Lcom/google/android/material/k/c;

    .line 688
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->c:Lcom/google/android/material/k/c;

    .line 10175
    iput-object p1, p0, Lcom/google/android/material/k/m$a;->g:Lcom/google/android/material/k/c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)Z
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 7

    .line 529
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 534
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 536
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    .line 537
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    .line 541
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->c()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->c()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 543
    invoke-static {v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 544
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 545
    invoke-static {v4, v6}, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    neg-int v3, v3

    .line 546
    invoke-static {v4, v3}, Landroidx/core/view/h;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 547
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 549
    :cond_1
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    neg-int v3, v3

    .line 550
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 551
    invoke-static {v4, v6}, Landroidx/core/view/h;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 554
    :goto_1
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(I)V

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 512
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    const/4 v0, 0x1

    .line 514
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(IZ)V

    return-void
.end method

.method private b(IZ)Z
    .locals 4

    .line 706
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a()Ljava/util/List;

    move-result-object v0

    .line 707
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(IZ)V

    .line 710
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    return v3

    :cond_0
    if-eqz p2, :cond_1

    .line 715
    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    if-eqz p2, :cond_1

    .line 716
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 717
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 718
    invoke-direct {p0, p2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(IZ)V

    .line 719
    invoke-direct {p0, p2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(IZ)V

    goto :goto_0

    :cond_1
    return v2
.end method

.method static synthetic b(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    return p0
.end method

.method private c(I)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 561
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    return-object p1
.end method

.method private c()V
    .locals 7

    .line 586
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 587
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d()I

    move-result v1

    .line 588
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 590
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    .line 591
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 595
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->d()Lcom/google/android/material/k/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/k/m;->b()Lcom/google/android/material/k/m$a;

    move-result-object v5

    .line 596
    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object v6

    .line 597
    invoke-static {v5, v6}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(Lcom/google/android/material/k/m$a;Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)V

    .line 599
    invoke-virtual {v5}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(IZ)V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    .line 727
    invoke-interface {v1, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()I
    .locals 3

    .line 604
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 606
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private d(I)V
    .locals 3

    .line 565
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 571
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 572
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 573
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    .line 577
    :cond_1
    invoke-static {p1, v2}, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 578
    invoke-static {p1, v2}, Landroidx/core/view/h;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 579
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 580
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2
    :goto_0
    return-void
.end method

.method private e()I
    .locals 2

    .line 615
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 617
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private e(I)Z
    .locals 1

    .line 626
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f(I)V
    .locals 1

    const/4 v0, 0x1

    .line 732
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a(IZ)V

    .line 733
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)Z

    .line 734
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 330
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    if-ne p1, v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f(I)V

    return-void
.end method

.method public final a(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 226
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    .line 227
    sget-object p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a:Ljava/lang/String;

    const-string p2, "Child views must be of type MaterialButton."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 232
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 2739
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 2740
    invoke-static {}, Landroidx/core/view/v;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    :cond_1
    const/4 p2, 0x1

    .line 2752
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    .line 2753
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p3}, Lcom/google/android/material/button/MaterialButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2754
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 2756
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup$a;

    .line 3068
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButton;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2757
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    .line 3184
    iput-object p3, p1, Lcom/google/android/material/button/MaterialButton;->c:Lcom/google/android/material/button/MaterialButton$b;

    .line 3200
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3201
    iget-object p3, p1, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 4193
    iput-boolean p2, p3, Lcom/google/android/material/button/a;->o:Z

    .line 4194
    invoke-virtual {p3}, Lcom/google/android/material/button/a;->c()V

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 239
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p3

    invoke-direct {p0, p3, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)Z

    .line 240
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(I)V

    .line 244
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->d()Lcom/google/android/material/k/m;

    move-result-object p2

    .line 245
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    .line 4662
    iget-object v1, p2, Lcom/google/android/material/k/m;->f:Lcom/google/android/material/k/c;

    .line 4692
    iget-object v2, p2, Lcom/google/android/material/k/m;->i:Lcom/google/android/material/k/c;

    .line 5672
    iget-object v3, p2, Lcom/google/android/material/k/m;->g:Lcom/google/android/material/k/c;

    .line 5682
    iget-object p2, p2, Lcom/google/android/material/k/m;->h:Lcom/google/android/material/k/c;

    .line 250
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;-><init>(Lcom/google/android/material/k/c;Lcom/google/android/material/k/c;Lcom/google/android/material/k/c;Lcom/google/android/material/k/c;)V

    .line 245
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance p2, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    invoke-static {p1, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1788
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 1789
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1791
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1794
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:[Ljava/lang/Integer;

    .line 217
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 300
    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 779
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:[Ljava/lang/Integer;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 780
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a:Ljava/lang/String;

    const-string v0, "Child order wasn\'t updated"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 206
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 209
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 210
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 305
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 306
    invoke-static {p1}, Landroidx/core/view/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/a/c;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6632
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6633
    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7454
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    .line 308
    :goto_1
    invoke-static {v3, v2, v0, v1}, Landroidx/core/view/a/c$b;->a(IIZI)Landroidx/core/view/a/c$b;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b()V

    .line 294
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3

    .line 273
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 275
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 276
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup$a;

    .line 6078
    iget-object v2, v0, Lcom/google/android/material/button/MaterialButton;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 6184
    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->c:Lcom/google/android/material/button/MaterialButton$b;

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c()V

    .line 286
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b()V

    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Z

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 2

    .line 466
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    if-eq v0, p1, :cond_1

    .line 467
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    const/4 p1, 0x1

    .line 8363
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 8364
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8365
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 8366
    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 8368
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8370
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    const/4 p1, -0x1

    .line 8372
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(I)V

    :cond_1
    return-void
.end method
