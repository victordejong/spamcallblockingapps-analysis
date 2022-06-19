.class public final Landroidx/core/graphics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)D
    .locals 19

    .line 1678
    sget-object v0, Landroidx/core/graphics/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v2, 0x3

    if-nez v1, :cond_0

    new-array v1, v2, [D

    .line 1681
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2421
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 2444
    array-length v5, v1

    if-ne v5, v2, :cond_4

    int-to-double v5, v0

    const-wide v7, 0x406fe00000000000L    # 255.0

    div-double/2addr v5, v7

    const-wide v9, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v11, 0x4003333333333333L    # 2.4

    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v15, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v17, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v0, v5, v17

    if-gez v0, :cond_1

    div-double/2addr v5, v9

    goto :goto_0

    :cond_1
    add-double/2addr v5, v15

    div-double/2addr v5, v13

    .line 2449
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    :goto_0
    int-to-double v2, v3

    div-double/2addr v2, v7

    cmpg-double v0, v2, v17

    if-gez v0, :cond_2

    div-double/2addr v2, v9

    goto :goto_1

    :cond_2
    add-double/2addr v2, v15

    div-double/2addr v2, v13

    .line 2451
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    :goto_1
    int-to-double v11, v4

    div-double/2addr v11, v7

    cmpg-double v0, v11, v17

    if-gez v0, :cond_3

    div-double/2addr v11, v9

    goto :goto_2

    :cond_3
    add-double/2addr v11, v15

    div-double/2addr v11, v13

    const-wide v7, 0x4003333333333333L    # 2.4

    .line 2453
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    :goto_2
    const/4 v0, 0x0

    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v7, v7, v5

    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v9, v9, v2

    add-double/2addr v7, v9

    const-wide v9, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v9

    .line 2455
    aput-wide v7, v1, v0

    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v7, v7, v5

    const-wide v13, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v13, v13, v2

    add-double/2addr v7, v13

    const-wide v13, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v13, v13, v11

    add-double/2addr v7, v13

    mul-double v7, v7, v9

    const/4 v0, 0x1

    .line 2456
    aput-wide v7, v1, v0

    const/4 v4, 0x2

    const-wide v7, 0x3f93c36113404ea5L    # 0.0193

    mul-double v5, v5, v7

    const-wide v7, 0x3fbe83e425aee632L    # 0.1192

    mul-double v2, v2, v7

    add-double/2addr v5, v2

    const-wide v2, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v11, v11, v2

    add-double/2addr v5, v11

    mul-double v5, v5, v9

    .line 2457
    aput-wide v5, v1, v4

    .line 148
    aget-wide v0, v1, v0

    div-double/2addr v0, v9

    return-wide v0

    .line 2445
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static a(II)I
    .locals 6

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int v2, v2, v3

    .line 1131
    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 57
    invoke-static {v3, v1, v4, v0, v2}, Landroidx/core/graphics/a;->a(IIIII)I

    move-result v3

    .line 59
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 59
    invoke-static {v4, v1, v5, v0, v2}, Landroidx/core/graphics/a;->a(IIIII)I

    move-result v4

    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 61
    invoke-static {p0, v1, p1, v0, v2}, Landroidx/core/graphics/a;->a(IIIII)I

    move-result p0

    .line 64
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static a(IIF)I
    .locals 8

    .line 187
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 193
    invoke-static {p0, v1}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    .line 194
    invoke-static {v0, p1}, Landroidx/core/graphics/a;->c(II)D

    move-result-wide v2

    float-to-double v4, p2

    cmpg-double p2, v2, v4

    if-gez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-gt p2, v2, :cond_2

    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    add-int v2, v0, v1

    .line 207
    div-int/lit8 v2, v2, 0x2

    .line 209
    invoke-static {p0, v2}, Landroidx/core/graphics/a;->b(II)I

    move-result v3

    .line 210
    invoke-static {v3, p1}, Landroidx/core/graphics/a;->c(II)D

    move-result-wide v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 188
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "background can not be translucent: #"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int p0, p0, p1

    mul-int p2, p2, p3

    rsub-int p1, p1, 0xff

    mul-int p2, p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    .line 136
    div-int/2addr p0, p4

    return p0
.end method

.method public static a([F)I
    .locals 6

    const/4 v0, 0x0

    .line 306
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 307
    aget v2, p0, v2

    const/4 v3, 0x2

    .line 308
    aget p0, p0, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, p0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 310
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float v4, v4, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v4

    sub-float/2addr p0, v2

    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v3

    sub-float/2addr v2, v5

    .line 312
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    mul-float v5, v5, v4

    float-to-int v1, v1

    .line 314
    div-int/lit8 v1, v1, 0x3c

    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_0
    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 346
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v1, p0, v2

    .line 347
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 348
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :pswitch_1
    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 340
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float v1, p0, v2

    .line 341
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 342
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :pswitch_2
    mul-float v0, p0, v2

    .line 335
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 336
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 337
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :pswitch_3
    mul-float v0, p0, v2

    .line 330
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 331
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 332
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :pswitch_4
    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 325
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 326
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float p0, p0, v2

    .line 327
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :pswitch_5
    add-float/2addr v4, p0

    mul-float v4, v4, v2

    .line 320
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v5, p0

    mul-float v5, v5, v2

    .line 321
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float p0, p0, v2

    .line 322
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 352
    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/a;->b(I)I

    move-result v0

    .line 353
    invoke-static {v1}, Landroidx/core/graphics/a;->b(I)I

    move-result v1

    .line 354
    invoke-static {p0}, Landroidx/core/graphics/a;->b(I)I

    move-result p0

    .line 356
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(III[F)V
    .locals 7

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 245
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 246
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v0, v1

    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    cmpl-float v1, v0, p0

    if-nez v1, :cond_1

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float p1, p2, v4

    goto :goto_0

    :cond_2
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p1, p0

    :goto_0
    mul-float v4, v4, v3

    sub-float/2addr v4, v6

    .line 264
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v6, p0

    div-float/2addr v2, p0

    :goto_1
    const/high16 p0, 0x42700000    # 60.0f

    mul-float p1, p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    cmpg-float p2, p1, v5

    if-gez p2, :cond_3

    add-float/2addr p1, p0

    :cond_3
    const/4 p2, 0x0

    .line 272
    invoke-static {p1, p0}, Landroidx/core/graphics/a;->a(FF)F

    move-result p0

    aput p0, p3, p2

    const/4 p0, 0x1

    .line 273
    invoke-static {v2, v6}, Landroidx/core/graphics/a;->a(FF)F

    move-result p1

    aput p1, p3, p0

    const/4 p0, 0x2

    .line 274
    invoke-static {v3, v6}, Landroidx/core/graphics/a;->a(FF)F

    move-result p1

    aput p1, p3, p0

    return-void
.end method

.method public static a(I[F)V
    .locals 2

    .line 289
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/a;->a(III[F)V

    return-void
.end method

.method private static b(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static b(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 366
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(II)D
    .locals 4

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 163
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 165
    invoke-static {p0, p1}, Landroidx/core/graphics/a;->a(II)I

    move-result p0

    .line 168
    :cond_0
    invoke-static {p0}, Landroidx/core/graphics/a;->a(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 169
    invoke-static {p1}, Landroidx/core/graphics/a;->a(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 172
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 160
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "background can not be translucent: #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
