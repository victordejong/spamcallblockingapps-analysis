.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final a:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Z

.field public f:Z

.field public g:Le2/h;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:Le2/d;

.field public p:I

.field public q:Landroid/graphics/Paint;

.field public r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 2
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    .line 4
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    .line 5
    sget-object v1, Le2/h;->b:Le2/h;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Le2/h;

    .line 6
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    .line 8
    sget-object v2, Le2/d;->a:Le2/d;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 10
    sget-object v3, Lg6/b;->c:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0701a7

    .line 13
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    const p2, 0x7f07018a

    .line 14
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    const p2, 0x7f07018f

    .line 15
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    const p2, 0x7f07018b

    .line 16
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:I

    .line 17
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    const p2, 0x7f07019d

    .line 18
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    .line 19
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    const v1, 0x7f0402f2

    .line 20
    invoke-static {p1, v1, v0}, Lh2/b;->h(Landroid/content/Context;II)I

    move-result p1

    .line 21
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method

.method public static a(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    if-le v2, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_1
    if-eqz p3, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3

    if-eqz p4, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p3, p2

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    :cond_3
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 2
    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_2

    .line 3
    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    :cond_2
    return v2
.end method


# virtual methods
.method public final b(Landroid/view/ViewGroup;ZZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_4

    .line 2
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$b;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$b;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$c;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    if-nez p3, :cond_3

    .line 7
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0

    .line 9
    :cond_3
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 11
    :goto_0
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$c;->onScrollChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final d(Landroid/view/View;ZZ)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Landroid/widget/ScrollView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/ViewGroup;ZZ)V

    goto/16 :goto_c

    :cond_3
    if-eqz p2, :cond_4

    .line 7
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_4
    if-eqz p3, :cond_1a

    .line 8
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    goto/16 :goto_c

    .line 9
    :cond_5
    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v3, -0x1

    if-eqz v0, :cond_e

    .line 10
    check-cast p1, Landroid/widget/AdapterView;

    .line 11
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    if-ne v0, v3, :cond_6

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 13
    :goto_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    .line 14
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 15
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v1, 0x0

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/ViewGroup;ZZ)V

    goto/16 :goto_c

    :cond_c
    if-eqz p2, :cond_d

    .line 19
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_d
    if-eqz p3, :cond_1a

    .line 20
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    goto/16 :goto_c

    .line 21
    :cond_e
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_f

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$a;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_c

    .line 24
    :cond_f
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_13

    .line 25
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    :goto_6
    if-eqz p2, :cond_11

    .line 28
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    :cond_11
    if-eqz p3, :cond_12

    .line 29
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    :cond_12
    if-eqz v1, :cond_1a

    .line 30
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b(Landroid/view/ViewGroup;ZZ)V

    goto :goto_c

    .line 31
    :cond_13
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_14

    goto :goto_8

    .line 34
    :cond_14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr v0, v3

    :goto_7
    if-ltz v0, :cond_16

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-nez v6, :cond_15

    goto :goto_9

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_16
    :goto_8
    move-object v5, v4

    .line 37
    :goto_9
    invoke-virtual {p0, v5, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d(Landroid/view/View;ZZ)V

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_17

    goto :goto_b

    .line 39
    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    add-int/2addr p2, v3

    :goto_a
    if-ltz p2, :cond_19

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 42
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    if-ne v0, v3, :cond_18

    move-object v4, p3

    goto :goto_b

    :cond_18
    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_19
    :goto_b
    if-eq v4, v5, :cond_1a

    .line 43
    invoke-virtual {p0, v4, v2, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d(Landroid/view/View;ZZ)V

    :cond_1a
    :goto_c
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->e:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x0

    .line 5
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->f:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v2, 0x0

    int-to-float v3, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->t:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f09021f

    if-ne v3, v4, :cond_0

    .line 5
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090201

    if-ne v3, v4, :cond_1

    .line 7
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v0

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090200

    if-ne v3, v4, :cond_2

    .line 9
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090202

    if-ne v3, v4, :cond_3

    .line 11
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x2

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v4

    goto :goto_1

    .line 12
    :cond_3
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 10

    .line 1
    sget-object p1, Le2/d;->a:Le2/d;

    sget-object v0, Le2/d;->c:Le2/d;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    add-int/2addr v1, p3

    invoke-virtual {v2, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    move p3, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    if-eqz v1, :cond_1

    .line 5
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    add-int/2addr p3, v1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 8
    :cond_2
    iget-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 9
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    sub-int/2addr p5, p1

    .line 10
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length p3, p1

    :goto_1
    if-ge v2, p3, :cond_10

    aget-object v0, p1, v2

    .line 11
    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {v0, p2, v3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p5, v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    if-eqz p3, :cond_5

    .line 15
    iget p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    sub-int/2addr p5, p3

    .line 16
    :cond_5
    iget p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:I

    sub-int p3, p5, p3

    .line 17
    iget v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    .line 18
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v4

    const/4 v6, -0x1

    if-eqz v4, :cond_7

    .line 19
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    if-ne v4, v0, :cond_6

    add-int v4, p2, v3

    .line 20
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v4

    move v8, v7

    const/4 v7, -0x1

    goto :goto_2

    :cond_6
    sub-int v7, p4, v3

    .line 21
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v7, v4

    move v8, v7

    move v7, v4

    .line 22
    :goto_2
    iget-object v9, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v9, v9, v5

    invoke-virtual {v9, v4, p3, v8, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 23
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    :cond_7
    const/4 v7, -0x1

    .line 24
    :goto_3
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 25
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    if-ne v4, v0, :cond_8

    add-int/2addr v3, p2

    .line 26
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    :goto_4
    const/4 v8, -0x1

    goto :goto_5

    :cond_8
    if-ne v4, p1, :cond_9

    sub-int v4, p4, v3

    .line 27
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v4, v3

    goto :goto_4

    .line 28
    :cond_9
    iget v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    add-int/2addr v3, p2

    .line 29
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    move v8, v4

    .line 30
    :goto_5
    iget-object v9, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v9, v9, v1

    invoke-virtual {v9, v3, p3, v4, p5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_6

    :cond_a
    const/4 v8, -0x1

    .line 31
    :goto_6
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 32
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    if-ne v3, v0, :cond_b

    .line 33
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    sub-int/2addr p4, p1

    .line 34
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    sub-int p1, p4, p1

    goto :goto_9

    :cond_b
    if-ne v3, p1, :cond_c

    .line 35
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->p:I

    add-int/2addr p1, p2

    .line 36
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    add-int p4, p2, p1

    goto :goto_9

    :cond_c
    if-ne v8, v6, :cond_d

    if-eq v7, v6, :cond_d

    .line 37
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    sub-int v8, v7, p1

    goto :goto_8

    :cond_d
    if-ne v7, v6, :cond_e

    if-eq v8, v6, :cond_e

    .line 38
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    goto :goto_7

    :cond_e
    if-ne v7, v6, :cond_f

    sub-int/2addr p4, p2

    .line 39
    div-int/2addr p4, v5

    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v5

    sub-int v8, p4, p1

    .line 40
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    :goto_7
    add-int v7, p1, v8

    :cond_f
    :goto_8
    move p4, v7

    move p1, v8

    .line 41
    :goto_9
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v2

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 42
    :cond_10
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v1, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:I

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    .line 5
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Le2/h;

    sget-object v4, Le2/h;->a:Le2/h;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v8, 0x0

    goto :goto_2

    .line 6
    :cond_1
    sget-object v4, Le2/h;->c:Le2/h;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v9, v3, v6

    if-eqz v9, :cond_3

    .line 8
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 9
    invoke-virtual {v9, v5, v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    .line 10
    invoke-virtual {p0, v9, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 11
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    if-le v7, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 13
    :goto_2
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    if-eqz v3, :cond_7

    .line 14
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v6, v4, :cond_8

    aget-object v9, v3, v6

    if-eqz v9, :cond_6

    .line 15
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 16
    invoke-virtual {v9, v2, v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->a(ZZ)V

    .line 17
    invoke-virtual {p0, v9, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 18
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :cond_8
    if-eqz v8, :cond_a

    .line 19
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->h:Z

    if-eqz p1, :cond_9

    sub-int p1, v1, v7

    .line 20
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v5

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v5

    goto :goto_5

    .line 21
    :cond_9
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->n:I

    sub-int p1, v1, p1

    .line 22
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v3, p2, 0x0

    goto :goto_4

    .line 23
    :cond_a
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->m:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v3, p1, 0x0

    move p1, v1

    :goto_4
    const/4 p2, 0x0

    .line 24
    :goto_5
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_b

    .line 25
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    .line 26
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 27
    invoke-virtual {v4, v7, v5}, Landroid/view/View;->measure(II)V

    .line 28
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_6

    .line 29
    :cond_b
    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->k:Z

    if-nez v4, :cond_c

    .line 30
    iget v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->l:I

    add-int/2addr v3, v4

    .line 31
    :cond_c
    :goto_6
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 32
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    .line 33
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    sub-int v7, p1, p2

    const/high16 v9, -0x80000000

    .line 34
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 35
    invoke-virtual {v4, v6, v7}, Landroid/view/View;->measure(II)V

    .line 36
    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v6, p1, v3

    if-gt v4, v6, :cond_f

    .line 37
    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->j:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->c(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v8, :cond_d

    goto :goto_7

    .line 38
    :cond_d
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    .line 39
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v5, p1, v2

    goto :goto_8

    .line 40
    :cond_e
    :goto_7
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    .line 41
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v3

    sub-int v5, p1, p2

    goto :goto_8

    .line 42
    :cond_f
    iput-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->i:Z

    goto :goto_8

    :cond_10
    move v5, p1

    :goto_8
    sub-int/2addr v1, v5

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setButtonGravity(Le2/d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Le2/d;->a:Le2/d;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Le2/d;->c:Le2/d;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->o:Le2/d;

    :cond_2
    :goto_0
    return-void
.end method

.method public setButtonStackedGravity(Le2/d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->a:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Le2/d;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->b:I

    return-void
.end method

.method public setStackingBehavior(Le2/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->g:Le2/h;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
