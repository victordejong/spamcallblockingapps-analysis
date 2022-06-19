.class public Lcom/androidplot/ui/BoxModel;
.super Ljava/lang/Object;
.source "BoxModel.java"

# interfaces
.implements Lcom/androidplot/ui/BoxModelable;


# instance fields
.field private marginBottom:F

.field private marginLeft:F

.field private marginRight:F

.field private marginTop:F

.field private paddingBottom:F

.field private paddingLeft:F

.field private paddingRight:F

.field private paddingTop:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->marginLeft:F

    .line 48
    iput p2, p0, Lcom/androidplot/ui/BoxModel;->marginTop:F

    .line 49
    iput p3, p0, Lcom/androidplot/ui/BoxModel;->marginRight:F

    .line 50
    iput p4, p0, Lcom/androidplot/ui/BoxModel;->marginBottom:F

    .line 52
    iput p5, p0, Lcom/androidplot/ui/BoxModel;->paddingLeft:F

    .line 53
    iput p6, p0, Lcom/androidplot/ui/BoxModel;->paddingTop:F

    .line 54
    iput p7, p0, Lcom/androidplot/ui/BoxModel;->paddingRight:F

    .line 55
    iput p8, p0, Lcom/androidplot/ui/BoxModel;->paddingBottom:F

    return-void
.end method


# virtual methods
.method public getMarginBottom()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->marginBottom:F

    return v0
.end method

.method public getMarginLeft()F
    .locals 1

    .line 100
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->marginLeft:F

    return v0
.end method

.method public getMarginRight()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->marginRight:F

    return v0
.end method

.method public getMarginTop()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->marginTop:F

    return v0
.end method

.method public getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 65
    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 66
    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 67
    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v4

    sub-float/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 77
    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 78
    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 79
    invoke-virtual {p0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v4

    sub-float/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPaddingBottom()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->paddingBottom:F

    return v0
.end method

.method public getPaddingLeft()F
    .locals 1

    .line 132
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->paddingLeft:F

    return v0
.end method

.method public getPaddingRight()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->paddingRight:F

    return v0
.end method

.method public getPaddingTop()F
    .locals 1

    .line 140
    iget v0, p0, Lcom/androidplot/ui/BoxModel;->paddingTop:F

    return v0
.end method

.method public setMarginBottom(F)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->marginBottom:F

    return-void
.end method

.method public setMarginLeft(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->marginLeft:F

    return-void
.end method

.method public setMarginRight(F)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->marginRight:F

    return-void
.end method

.method public setMarginTop(F)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->marginTop:F

    return-void
.end method

.method public setMargins(FFFF)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    .line 86
    invoke-virtual {p0, p3}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    .line 87
    invoke-virtual {p0, p4}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    return-void
.end method

.method public setPadding(FFFF)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    .line 94
    invoke-virtual {p0, p3}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    .line 95
    invoke-virtual {p0, p4}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    return-void
.end method

.method public setPaddingBottom(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->paddingBottom:F

    return-void
.end method

.method public setPaddingLeft(F)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->paddingLeft:F

    return-void
.end method

.method public setPaddingRight(F)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->paddingRight:F

    return-void
.end method

.method public setPaddingTop(F)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/androidplot/ui/BoxModel;->paddingTop:F

    return-void
.end method
