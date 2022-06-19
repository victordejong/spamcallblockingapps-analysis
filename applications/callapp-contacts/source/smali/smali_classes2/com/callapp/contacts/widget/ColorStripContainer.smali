.class public Lcom/callapp/contacts/widget/ColorStripContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;
    }
.end annotation


# static fields
.field private static final e:I


# instance fields
.field private final a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/Paint;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 32
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/widget/ColorStripContainer;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/ColorStripContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/ColorStripContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    .line 29
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->c:Landroid/graphics/Path;

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->d:Landroid/graphics/Paint;

    .line 47
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    new-instance p1, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;-><init>(Lcom/callapp/contacts/widget/ColorStripContainer;Lcom/callapp/contacts/widget/ColorStripContainer$1;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    .line 50
    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/widget/ColorStripContainer;->a(Landroid/util/AttributeSet;Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/ColorStripContainer;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;
    .locals 7

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ColorStripContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ColorStripContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/R$styleable;->stripContainer:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown attribute for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "TAG"

    invoke-static {v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-static {p2, v3}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->a(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;F)F

    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v4, v4, [I

    invoke-static {p2, v4}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->a(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;[I)[I

    const/4 v4, 0x0

    .line 76
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 77
    invoke-static {p2}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->a(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    :goto_3
    return-object p2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 104
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    invoke-static {v0}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->a(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    invoke-static {v0}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->b(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->f:I

    neg-int v0, v0

    .line 118
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ColorStripContainer;->getHeight()I

    move-result v2

    .line 120
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ColorStripContainer;->getWidth()I

    move-result v3

    sget v4, Lcom/callapp/contacts/widget/ColorStripContainer;->e:I

    add-int/2addr v3, v4

    iget v5, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->f:I

    add-int/2addr v3, v5

    div-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 123
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->d:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    invoke-static {v7}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->a(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)[I

    move-result-object v7

    iget-object v8, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    invoke-static {v8}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->a(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)[I

    move-result-object v8

    array-length v8, v8

    rem-int v8, v4, v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 126
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    int-to-float v7, v0

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    int-to-float v7, v5

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    sget v7, Lcom/callapp/contacts/widget/ColorStripContainer;->e:I

    add-int v9, v5, v7

    int-to-float v9, v9

    invoke-virtual {v6, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    add-int v9, v0, v7

    int-to-float v9, v9

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 132
    iget-object v6, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->b:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/2addr v5, v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 96
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->f:I

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->c:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->c:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ColorStripContainer;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ColorStripContainer;->getHeight()I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p3, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    invoke-static {p3}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->b(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)F

    move-result p3

    iget-object p4, p0, Lcom/callapp/contacts/widget/ColorStripContainer;->a:Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;

    invoke-static {p4}, Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;->b(Lcom/callapp/contacts/widget/ColorStripContainer$Attributes;)F

    move-result p4

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
