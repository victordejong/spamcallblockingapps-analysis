.class public Lcom/callapp/contacts/widget/RatingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:[Landroid/graphics/Bitmap;

.field private c:Ljava/lang/CharSequence;

.field private e:Landroid/text/TextPaint;

.field private f:Landroid/text/TextPaint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Ljava/lang/String;

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/RatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/RatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 31
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->a:F

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/graphics/Bitmap;

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->b:[Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->l:F

    const p1, 0x7f0601cc

    .line 1054
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    .line 1085
    new-instance p3, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    .line 1086
    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1087
    iget-object p3, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/RatingTextView;->getTextSize()F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1088
    iget-object p3, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setLinearText(Z)V

    const p3, 0x7f12034b

    .line 2063
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/widget/RatingTextView;->k:Ljava/lang/String;

    .line 2064
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcom/callapp/contacts/widget/RatingTextView;->f:Landroid/text/TextPaint;

    .line 2065
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2066
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/RatingTextView;->getTextSize()F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2067
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 2071
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/RatingTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0804a4

    .line 2072
    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/widget/RatingTextView;->h:Landroid/graphics/Bitmap;

    const p3, 0x7f0804a5

    .line 2073
    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/widget/RatingTextView;->i:Landroid/graphics/Bitmap;

    const p3, 0x7f0804a3

    .line 2074
    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->j:Landroid/graphics/Bitmap;

    .line 2076
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->g:Landroid/graphics/Paint;

    .line 2077
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2078
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/widget/RatingTextView;->getColorMatrix(I)[F

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 2079
    iget-object p2, p0, Lcom/callapp/contacts/widget/RatingTextView;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const-wide/16 p1, 0x0

    .line 2081
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/RatingTextView;->a(D)V

    const/4 p1, 0x0

    .line 1059
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/RatingTextView;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(D)V
    .locals 5

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lcom/callapp/contacts/widget/RatingTextView;->b:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/callapp/contacts/widget/RatingTextView;->h:Landroid/graphics/Bitmap;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-double v2, v0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_1

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->b:[Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/callapp/contacts/widget/RatingTextView;->i:Landroid/graphics/Bitmap;

    aput-object p2, p1, v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :cond_2
    :goto_1
    const/4 p1, 0x5

    if-ge v1, p1, :cond_3

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->b:[Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/callapp/contacts/widget/RatingTextView;->j:Landroid/graphics/Bitmap;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getColorMatrix(I)[F
    .locals 5

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    const v1, 0xffff

    .line 92
    div-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p1

    .line 93
    div-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    int-to-float v0, v0

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v0, 0x5

    aput v4, v2, v0

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    const/16 v0, 0x8

    aput v4, v2, v0

    int-to-float v0, v1

    const/16 v1, 0x9

    aput v0, v2, v1

    const/16 v0, 0xa

    aput v4, v2, v0

    const/16 v0, 0xb

    aput v4, v2, v0

    const/16 v0, 0xc

    aput v4, v2, v0

    const/16 v0, 0xd

    aput v4, v2, v0

    int-to-float p1, p1

    const/16 v0, 0xe

    aput p1, v2, v0

    const/16 p1, 0xf

    aput v4, v2, p1

    const/16 p1, 0x10

    aput v4, v2, p1

    const/16 p1, 0x11

    aput v4, v2, p1

    const/16 p1, 0x12

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, p1

    const/16 p1, 0x13

    aput v4, v2, p1

    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/widget/RatingTextView;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/callapp/contacts/widget/RatingTextView;->a:F

    add-float v8, v0, v1

    .line 144
    iget-object v4, p0, Lcom/callapp/contacts/widget/RatingTextView;->c:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/RatingTextView;->b:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 147
    iget-object v1, p0, Lcom/callapp/contacts/widget/RatingTextView;->b:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/callapp/contacts/widget/RatingTextView;->a:F

    add-float/2addr v1, v4

    .line 148
    iget v5, p0, Lcom/callapp/contacts/widget/RatingTextView;->l:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v4, v4, v6

    add-float/2addr v5, v4

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/callapp/contacts/widget/RatingTextView;->b:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    int-to-float v6, v3

    mul-float v6, v6, v1

    add-float/2addr v6, v5

    int-to-float v7, v0

    iget-object v8, p0, Lcom/callapp/contacts/widget/RatingTextView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/callapp/contacts/widget/RatingTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/widget/RatingTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget v2, p0, Lcom/callapp/contacts/widget/RatingTextView;->a:F

    add-float v11, v0, v2

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float v1, v1, v0

    add-float/2addr v5, v1

    const/high16 v0, 0x41200000    # 10.0f

    .line 154
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    add-float v10, v5, v1

    .line 155
    iget-object v1, p0, Lcom/callapp/contacts/widget/RatingTextView;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/widget/RatingTextView;->f:Landroid/text/TextPaint;

    sub-float v0, v10, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    .line 156
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v12, p0, Lcom/callapp/contacts/widget/RatingTextView;->f:Landroid/text/TextPaint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7

    const-string v0, "RatingTextView"

    .line 116
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 2182
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_1

    .line 2185
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_2

    .line 2189
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2183
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot initiate view with rating="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 124
    :goto_2
    iput-object v1, p0, Lcom/callapp/contacts/widget/RatingTextView;->c:Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    .line 125
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/widget/RatingTextView;->a(D)V

    goto :goto_3

    :cond_3
    const-string p1, ""

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->c:Ljava/lang/CharSequence;

    .line 132
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->c:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    const/16 p1, 0x8

    :goto_4
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/RatingTextView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->c:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    if-eqz v0, :cond_6

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->l:F

    .line 137
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingTextView;->c:Ljava/lang/CharSequence;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/widget/RatingTextView;->e:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
