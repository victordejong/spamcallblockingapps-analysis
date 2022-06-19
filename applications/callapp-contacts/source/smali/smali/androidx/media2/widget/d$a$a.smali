.class final Landroidx/media2/widget/d$a$a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/widget/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:[Landroidx/media2/widget/d$a$b;

.field final synthetic b:Landroidx/media2/widget/d$a;


# direct methods
.method constructor <init>(Landroidx/media2/widget/d$a;Landroid/content/Context;)V
    .locals 4

    .line 306
    iput-object p1, p0, Landroidx/media2/widget/d$a$a;->b:Landroidx/media2/widget/d$a;

    .line 307
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p2, 0xf

    new-array v0, p2, [Landroidx/media2/widget/d$a$b;

    .line 304
    iput-object v0, p0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    const v0, 0x800003

    .line 308
    invoke-virtual {p0, v0}, Landroidx/media2/widget/d$a$a;->setGravity(I)V

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Landroidx/media2/widget/d$a$a;->setOrientation(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 311
    iget-object v1, p0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    new-instance v2, Landroidx/media2/widget/d$a$b;

    invoke-virtual {p0}, Landroidx/media2/widget/d$a$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroidx/media2/widget/d$a$b;-><init>(Landroidx/media2/widget/d$a;Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 312
    iget-object v1, p0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    aget-object v1, v1, v0

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2, v2}, Landroidx/media2/widget/d$a$a;->addView(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/media2/widget/b;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 319
    iget-object v2, p0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    aget-object v2, v2, v1

    .line 1172
    iget v3, p1, Landroidx/media2/widget/b;->b:I

    iput v3, v2, Landroidx/media2/widget/d$a$b;->c:I

    .line 1173
    iget v3, p1, Landroidx/media2/widget/b;->c:I

    iput v3, v2, Landroidx/media2/widget/d$a$b;->e:I

    .line 1174
    iget v3, p1, Landroidx/media2/widget/b;->d:I

    iput v3, v2, Landroidx/media2/widget/d$a$b;->f:I

    .line 1175
    iget v3, p1, Landroidx/media2/widget/b;->e:I

    iput v3, v2, Landroidx/media2/widget/d$a$b;->g:I

    .line 1177
    iget v3, v2, Landroidx/media2/widget/d$a$b;->c:I

    invoke-virtual {v2, v3}, Landroidx/media2/widget/d$a$b;->setTextColor(I)V

    .line 1178
    iget v3, v2, Landroidx/media2/widget/d$a$b;->f:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1179
    iget v3, v2, Landroidx/media2/widget/d$a$b;->a:F

    iget v4, v2, Landroidx/media2/widget/d$a$b;->b:F

    iget v5, v2, Landroidx/media2/widget/d$a$b;->b:F

    iget v6, v2, Landroidx/media2/widget/d$a$b;->g:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/media2/widget/d$a$b;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 1181
    invoke-virtual {v2, v3, v3, v3, v0}, Landroidx/media2/widget/d$a$b;->setShadowLayer(FFFI)V

    .line 1183
    :goto_1
    invoke-virtual {v2}, Landroidx/media2/widget/d$a$b;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    mul-int/lit8 p1, p4, 0x3

    mul-int/lit8 p2, p5, 0x4

    if-lt p1, p2, :cond_0

    .line 374
    div-int/lit8 p2, p2, 0x3

    move p1, p5

    goto :goto_0

    .line 378
    :cond_0
    div-int/lit8 p1, p1, 0x4

    move p2, p4

    :goto_0
    int-to-float p2, p2

    const p3, 0x3f666666    # 0.9f

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    sub-int/2addr p4, p2

    .line 382
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p1

    .line 383
    div-int/lit8 p5, p5, 0x2

    const/4 p3, 0x0

    :goto_1
    const/16 v0, 0xf

    if-ge p3, v0, :cond_1

    .line 386
    iget-object v1, p0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    aget-object v1, v1, p3

    mul-int v2, p1, p3

    div-int/2addr v2, v0

    add-int/2addr v2, p5

    add-int v3, p4, p2

    add-int/lit8 p3, p3, 0x1

    mul-int v4, p1, p3

    div-int/2addr v4, v0

    add-int/2addr v4, p5

    invoke-virtual {v1, p4, v2, v3, v4}, Landroidx/media2/widget/d$a$b;->layout(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .line 341
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 343
    invoke-virtual {p0}, Landroidx/media2/widget/d$a$a;->getMeasuredWidth()I

    move-result p1

    .line 344
    invoke-virtual {p0}, Landroidx/media2/widget/d$a$a;->getMeasuredHeight()I

    move-result p2

    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, p2, 0x4

    if-lt v0, v1, :cond_0

    .line 348
    div-int/lit8 p1, v1, 0x3

    goto :goto_0

    .line 350
    :cond_0
    div-int/lit8 p2, v0, 0x4

    :goto_0
    int-to-float p1, p1

    const v0, 0x3f666666    # 0.9f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/16 v0, 0xf

    .line 355
    div-int/2addr p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 356
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 358
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 362
    iget-object v2, p0, Landroidx/media2/widget/d$a$a;->a:[Landroidx/media2/widget/d$a$b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Landroidx/media2/widget/d$a$b;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
