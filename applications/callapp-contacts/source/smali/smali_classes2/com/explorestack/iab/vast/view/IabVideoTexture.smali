.class public Lcom/explorestack/iab/vast/view/IabVideoTexture;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .line 24
    iget v0, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->a:I

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/view/IabVideoTexture;->getDefaultSize(II)I

    move-result v0

    .line 25
    iget v1, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->b:I

    invoke-static {v1, p2}, Lcom/explorestack/iab/vast/view/IabVideoTexture;->getDefaultSize(II)I

    move-result v1

    .line 26
    iget v2, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->a:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->b:I

    if-lez v2, :cond_8

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 30
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 31
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 39
    iget v0, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->a:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->b:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    .line 41
    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int v2, v2, p1

    .line 44
    div-int v1, v2, v0

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 49
    iget v0, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->b:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->a:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    .line 57
    iget v1, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->a:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->b:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_4

    .line 64
    :cond_6
    iget v2, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->a:I

    .line 65
    iget v4, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->b:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    .line 69
    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int v4, v4, p1

    .line 74
    div-int v1, v4, v2

    goto :goto_0

    .line 80
    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Size"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/vast/view/IabVideoTexture;->setMeasuredDimension(II)V

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->a:I

    .line 18
    iput p2, p0, Lcom/explorestack/iab/vast/view/IabVideoTexture;->b:I

    .line 19
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabVideoTexture;->requestLayout()V

    return-void
.end method
