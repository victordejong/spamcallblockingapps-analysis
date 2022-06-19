.class public Lcom/unknownphone/callblocker/a/a/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "ContactHeaderDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/a/a/a/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/unknownphone/callblocker/a/a/a/d$a;

.field private final b:I

.field private final c:Z

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(IZLcom/unknownphone/callblocker/a/a/a/d$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 26
    iput-object p3, p0, Lcom/unknownphone/callblocker/a/a/a/d;->a:Lcom/unknownphone/callblocker/a/a/a/d$a;

    .line 27
    iput p1, p0, Lcom/unknownphone/callblocker/a/a/a/d;->b:I

    .line 28
    iput-boolean p2, p0, Lcom/unknownphone/callblocker/a/a/a/d;->c:Z

    .line 29
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->c:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    return-void

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 83
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 84
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 85
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 88
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$h;->a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 34
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/d;->a:Lcom/unknownphone/callblocker/a/a/a/d$a;

    invoke-interface {v1, v0}, Lcom/unknownphone/callblocker/a/a/a/d$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 37
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 6

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 43
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0, p2}, Lcom/unknownphone/callblocker/a/a/a/d;->a(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->e:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->e:Landroid/view/View;

    const v1, 0x7f0901c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->d:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->e:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/unknownphone/callblocker/a/a/a/d;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 49
    :cond_0
    const-string/jumbo v0, ""

    .line 50
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 51
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 52
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 53
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/d;->a:Lcom/unknownphone/callblocker/a/a/a/d$a;

    invoke-interface {v1, v4}, Lcom/unknownphone/callblocker/a/a/a/d$a;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 54
    iget-object v5, p0, Lcom/unknownphone/callblocker/a/a/a/d;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/unknownphone/callblocker/a/a/a/d;->a:Lcom/unknownphone/callblocker/a/a/a/d$a;

    invoke-interface {v5, v4}, Lcom/unknownphone/callblocker/a/a/a/d$a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/d;->e:Landroid/view/View;

    invoke-direct {p0, p1, v3, v0}, Lcom/unknownphone/callblocker/a/a/a/d;->a(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V

    move-object v0, v1

    .line 50
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method
