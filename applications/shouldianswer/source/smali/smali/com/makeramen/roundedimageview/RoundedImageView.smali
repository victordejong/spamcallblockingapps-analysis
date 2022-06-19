.class public Lcom/makeramen/roundedimageview/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field public static final a:Landroid/graphics/Shader$TileMode;

.field static final synthetic b:Z

.field private static final c:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final d:[F

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/content/res/ColorStateList;

.field private g:F

.field private h:Landroid/graphics/ColorFilter;

.field private i:Z

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:Landroid/widget/ImageView$ScaleType;

.field private q:Landroid/graphics/Shader$TileMode;

.field private r:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-class v0, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:Z

    .line 50
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->a:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    .line 51
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 62
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    const/high16 p1, -0x1000000

    .line 67
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    .line 72
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    .line 73
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Z

    .line 74
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Z

    .line 78
    sget-object p1, Lcom/makeramen/roundedimageview/RoundedImageView;->a:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/Shader$TileMode;

    .line 79
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 62
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    const/high16 v0, -0x1000000

    .line 67
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    const/4 v2, 0x0

    .line 69
    iput-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    .line 72
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    .line 73
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Z

    .line 74
    iput-boolean v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Z

    .line 78
    sget-object v3, Lcom/makeramen/roundedimageview/RoundedImageView;->a:Landroid/graphics/Shader$TileMode;

    iput-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/Shader$TileMode;

    .line 79
    iput-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    .line 92
    sget-object v3, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_android_scaleType:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 96
    sget-object v3, Lcom/makeramen/roundedimageview/RoundedImageView;->c:[Landroid/widget/ImageView$ScaleType;

    aget-object p2, v3, p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    :goto_0
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius:I

    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 105
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    sget v4, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_top_left:I

    .line 106
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v2

    .line 107
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    sget v4, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_top_right:I

    .line 108
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 109
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    const/4 v4, 0x2

    sget v6, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_bottom_right:I

    .line 110
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v4

    .line 111
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    const/4 v4, 0x3

    sget v6, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_corner_radius_bottom_left:I

    .line 112
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v4

    .line 115
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    array-length v3, v3

    move v4, v2

    move v6, v4

    :goto_1
    if-ge v4, v3, :cond_2

    .line 116
    iget-object v7, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    aget v8, v7, v4

    cmpg-float v8, v8, v1

    if-gez v8, :cond_1

    .line 117
    aput v1, v7, v4

    goto :goto_2

    :cond_1
    move v6, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_4

    cmpg-float v3, p2, v1

    if-gez v3, :cond_3

    move p2, v1

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    array-length v3, v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_4

    .line 128
    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    aput p2, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 132
    :cond_4
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_border_width:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    .line 133
    iget p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_5

    .line 134
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    .line 137
    :cond_5
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_border_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    .line 138
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_6

    .line 139
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    .line 142
    :cond_6
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_mutate_background:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Z

    .line 143
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_oval:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Z

    .line 145
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_tile_mode:I

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_7

    .line 147
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 148
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 151
    :cond_7
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_tile_mode_x:I

    .line 152
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_8

    .line 154
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 157
    :cond_8
    sget p2, Lcom/makeramen/roundedimageview/a$a;->RoundedImageView_riv_tile_mode_y:I

    .line 158
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_9

    .line 160
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 163
    :cond_9
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    .line 164
    invoke-direct {p0, v5}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 166
    iget-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Z

    if-eqz p2, :cond_a

    .line 172
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 183
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 181
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 262
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 267
    :cond_0
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:I

    if-eqz v2, :cond_1

    .line 269
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:I

    .line 276
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 358
    :cond_0
    instance-of v0, p1, Lcom/makeramen/roundedimageview/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 359
    check-cast p1, Lcom/makeramen/roundedimageview/b;

    .line 360
    invoke-virtual {p1, p2}, Lcom/makeramen/roundedimageview/b;->a(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/b;

    move-result-object p2

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    .line 361
    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/b;->a(F)Lcom/makeramen/roundedimageview/b;

    move-result-object p2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    .line 362
    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/b;->a(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/b;

    move-result-object p2

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Z

    .line 363
    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/b;->a(Z)Lcom/makeramen/roundedimageview/b;

    move-result-object p2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/Shader$TileMode;

    .line 364
    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/b;

    move-result-object p2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    .line 365
    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/b;->b(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/b;

    .line 367
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    if-eqz p2, :cond_1

    .line 368
    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/makeramen/roundedimageview/b;->a(FFFF)Lcom/makeramen/roundedimageview/b;

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    goto :goto_1

    .line 376
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 378
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 379
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 380
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 300
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 305
    :cond_0
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:I

    if-eqz v2, :cond_1

    .line 307
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:I

    .line 314
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    .line 346
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 6

    .line 478
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    aput p1, v0, v1

    .line 486
    aput p2, v0, v5

    .line 487
    aput p3, v0, v4

    .line 488
    aput p4, v0, v3

    .line 490
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    .line 491
    invoke-direct {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 492
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 193
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 194
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 496
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 407
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 295
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 296
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 389
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 391
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 286
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:I

    if-eq v0, p1, :cond_0

    .line 287
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:I

    .line 288
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 518
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 529
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/content/res/ColorStateList;

    .line 530
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    const/4 p1, 0x0

    .line 531
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 532
    iget p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 504
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:F

    .line 507
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    const/4 p1, 0x0

    .line 508
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 332
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    .line 334
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    .line 335
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 336
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 448
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 429
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(FFFF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:I

    .line 241
    invoke-static {p1}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/Bitmap;)Lcom/makeramen/roundedimageview/b;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    .line 243
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:I

    .line 233
    invoke-static {p1}, Lcom/makeramen/roundedimageview/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    .line 235
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 248
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:I

    if-eq v0, p1, :cond_0

    .line 249
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:I

    .line 250
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    .line 252
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 257
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 258
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 542
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Z

    .line 543
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    const/4 p1, 0x0

    .line 544
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 204
    sget-boolean v0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 206
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_2

    .line 207
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/widget/ImageView$ScaleType;

    .line 209
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 217
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 224
    :goto_1
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    const/4 p1, 0x0

    .line 225
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 555
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/Shader$TileMode;

    .line 556
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    const/4 p1, 0x0

    .line 557
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 558
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 568
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    .line 569
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()V

    const/4 p1, 0x0

    .line 570
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    return-void
.end method
