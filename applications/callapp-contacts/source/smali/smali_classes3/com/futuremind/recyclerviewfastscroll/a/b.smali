.class public final Lcom/futuremind/recyclerviewfastscroll/a/b;
.super Lcom/futuremind/recyclerviewfastscroll/a/c;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/futuremind/recyclerviewfastscroll/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 8

    .line 23
    new-instance v0, Landroid/view/View;

    .line 1026
    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->b:Landroid/view/View;

    .line 1030
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 25
    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/hbb20/h$d;->fastscroll__handle_inset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v7, v0

    .line 2030
    :goto_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 26
    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 3026
    :cond_1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hbb20/h$d;->fastscroll__handle_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v6, v1

    .line 27
    :goto_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 4026
    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 27
    sget v2, Lcom/hbb20/h$e;->fastscroll__default_handle:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v0

    move v4, v6

    move v5, v7

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 28
    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->b:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/futuremind/recyclerviewfastscroll/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 5026
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5030
    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 30
    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/hbb20/h$d;->fastscroll__handle_clickable_width:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/hbb20/h$d;->fastscroll__handle_height:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6026
    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6030
    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 31
    invoke-virtual {v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/hbb20/h$d;->fastscroll__handle_height:I

    goto :goto_3

    :cond_3
    sget v2, Lcom/hbb20/h$d;->fastscroll__handle_clickable_width:I

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 32
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->b:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 7026
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/hbb20/h$g;->fastscroll__default_bubble:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->a:Landroid/view/View;

    return-object p1
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()I
    .locals 2

    .line 7030
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/c;->c:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 51
    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final d()Lcom/futuremind/recyclerviewfastscroll/a/d;
    .locals 3

    .line 61
    new-instance v0, Lcom/futuremind/recyclerviewfastscroll/a/a;

    new-instance v1, Lcom/futuremind/recyclerviewfastscroll/a/e$b;

    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/a/b;->a:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/futuremind/recyclerviewfastscroll/a/e$b;-><init>(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/a/e$b;->a()Lcom/futuremind/recyclerviewfastscroll/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->b()Lcom/futuremind/recyclerviewfastscroll/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuremind/recyclerviewfastscroll/a/e$a;->c()Lcom/futuremind/recyclerviewfastscroll/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/a/a;-><init>(Lcom/futuremind/recyclerviewfastscroll/a/e;)V

    return-object v0
.end method
