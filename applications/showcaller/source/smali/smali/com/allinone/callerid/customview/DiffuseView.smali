.class public Lcom/allinone/callerid/customview/DiffuseView;
.super Landroid/view/View;
.source "DiffuseView.java"


# instance fields
.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:F

.field private h:I

.field private i:Ljava/lang/Integer;

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/customview/DiffuseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/allinone/callerid/customview/DiffuseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->e:I

    const/16 v0, 0x12c

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->i:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->k:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->l:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Lcom/allinone/callerid/customview/DiffuseView;->a()V

    .line 10
    sget-object v1, Lcom/allinone/callerid/R$styleable;->DiffuseView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    iget p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->d:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->d:I

    .line 12
    iget p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->e:I

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->e:I

    .line 13
    iget p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->g:F

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->g:F

    .line 14
    iget p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->h:I

    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->h:I

    .line 15
    iget-object p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->i:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->i:Ljava/lang/Integer;

    .line 16
    iget p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->j:I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/DiffuseView;->j:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->n:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->l:Ljava/util/List;

    const/16 v1, 0xdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/allinone/callerid/customview/DiffuseView;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/customview/DiffuseView;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/customview/DiffuseView;->n:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object v4, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/allinone/callerid/customview/DiffuseView;->g:F

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/allinone/callerid/customview/DiffuseView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/allinone/callerid/customview/DiffuseView;->i:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 8
    iget-object v5, p0, Lcom/allinone/callerid/customview/DiffuseView;->l:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/allinone/callerid/customview/DiffuseView;->j:I

    sub-int/2addr v6, v7

    if-lez v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/allinone/callerid/customview/DiffuseView;->j:I

    sub-int v3, v2, v3

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/allinone/callerid/customview/DiffuseView;->j:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/allinone/callerid/customview/DiffuseView;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/allinone/callerid/customview/DiffuseView;->h:I

    div-int/2addr v2, v3

    if-lt v1, v2, :cond_3

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->l:Ljava/util/List;

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_4

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/DiffuseView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/allinone/callerid/customview/DiffuseView;->g:F

    iget-object v3, p0, Lcom/allinone/callerid/customview/DiffuseView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/customview/DiffuseView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/allinone/callerid/customview/DiffuseView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/allinone/callerid/customview/DiffuseView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/allinone/callerid/customview/DiffuseView;->n:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 22
    :cond_5
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->k:Z

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/DiffuseView;->invalidate()V

    :cond_6
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/DiffuseView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->d:I

    return-void
.end method

.method public setCoreColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->e:I

    return-void
.end method

.method public setCoreImage(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCoreRadius(I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->g:F

    return-void
.end method

.method public setDiffuseSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->j:I

    return-void
.end method

.method public setDiffuseWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->h:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/customview/DiffuseView;->i:Ljava/lang/Integer;

    return-void
.end method
