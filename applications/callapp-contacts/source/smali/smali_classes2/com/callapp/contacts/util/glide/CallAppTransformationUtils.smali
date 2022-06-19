.class public Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/glide/CallAppTransformationUtils$NoLock;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Paint;

.field private static final b:Landroid/graphics/Paint;

.field private static final c:Landroid/graphics/Paint;

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->b:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "XT1085"

    const-string v3, "XT1092"

    const-string v4, "XT1093"

    const-string v5, "XT1094"

    const-string v6, "XT1095"

    const-string v7, "XT1096"

    const-string v8, "XT1097"

    const-string v9, "XT1098"

    const-string v10, "XT1031"

    const-string v11, "XT1028"

    const-string v12, "XT937C"

    const-string v13, "XT1032"

    const-string v14, "XT1008"

    const-string v15, "XT1033"

    const-string v16, "XT1035"

    const-string v17, "XT1034"

    const-string v18, "XT939G"

    const-string v19, "XT1039"

    const-string v20, "XT1040"

    const-string v21, "XT1042"

    const-string v22, "XT1045"

    const-string v23, "XT1063"

    const-string v24, "XT1064"

    const-string v25, "XT1068"

    const-string v26, "XT1069"

    const-string v27, "XT1072"

    const-string v28, "XT1077"

    const-string v29, "XT1078"

    const-string v30, "XT1079"

    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 87
    sput-object v0, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->d:Ljava/util/Set;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 88
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils$NoLock;

    invoke-direct {v0}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils$NoLock;-><init>()V

    :goto_0
    sput-object v0, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->e:Ljava/util/concurrent/locks/Lock;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 93
    sput-object v0, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 2

    .line 546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 548
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 549
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 553
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private static a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 530
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 536
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-interface {p0, v1, v2, v0}, Lcom/bumptech/glide/load/engine/a/e;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 537
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;IILjava/lang/Integer;Landroid/graphics/ColorFilter;IIFZ)Landroid/graphics/Bitmap;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    .line 363
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v7, v7

    div-float v9, v4, v7

    int-to-float v8, v8

    div-float v10, v4, v8

    .line 372
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v7, v7, v9

    mul-float v9, v9, v8

    sub-float v8, v4, v7

    div-float/2addr v8, v5

    sub-float/2addr v4, v9

    div-float/2addr v4, v5

    .line 379
    new-instance v10, Landroid/graphics/RectF;

    add-float v11, v8, p8

    add-float v12, v4, p8

    add-float/2addr v8, v7

    sub-float v8, v8, p8

    add-float/2addr v4, v9

    sub-float v4, v4, p8

    invoke-direct {v10, v11, v12, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 382
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 384
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 385
    invoke-interface {p0, v3, v3, v7}, Lcom/bumptech/glide/load/engine/a/e;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v7, 0x1

    .line 386
    invoke-virtual {v3, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 388
    sget-object v8, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 390
    :try_start_0
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x7

    if-eqz p4, :cond_0

    .line 394
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 395
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0

    .line 398
    :cond_0
    sget-object v12, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->b:Landroid/graphics/Paint;

    .line 401
    :goto_0
    invoke-virtual {v9, v6, v6, v6, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    .line 406
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 407
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_1
    if-eqz p9, :cond_2

    .line 410
    sget-object v12, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->c:Landroid/graphics/Paint;

    goto :goto_1

    .line 412
    :cond_2
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 413
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1
    const/4 v1, 0x0

    .line 418
    invoke-virtual {v9, v4, v1, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-lez v2, :cond_3

    .line 422
    new-instance v10, Landroid/graphics/RectF;

    move/from16 v11, p2

    int-to-float v11, v11

    move/from16 v12, p3

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 423
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v11

    int-to-float v2, v2

    sub-float/2addr v11, v2

    div-float/2addr v11, v5

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v10, v2

    div-float/2addr v10, v5

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 425
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 426
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 427
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v7, p7

    .line 428
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 430
    invoke-virtual {v9, v6, v6, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1627
    :cond_3
    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, p1

    .line 439
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    invoke-interface {p0, v4}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    :cond_4
    return-object v3

    :catchall_0
    move-exception v0

    .line 436
    sget-object v1, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 437
    throw v0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;IILjava/lang/Integer;Landroid/graphics/ColorFilter;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 459
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v1, p2

    int-to-float p3, p3

    div-float v2, v1, p3

    int-to-float v0, v0

    div-float v3, v1, v0

    .line 467
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float p3, p3, v2

    mul-float v2, v2, v0

    sub-float v0, v1, p3

    sub-float/2addr v1, v2

    .line 474
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr p3, v0

    add-float/2addr v2, v1

    invoke-direct {v3, v0, v1, p3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 477
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 479
    invoke-static {p1}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 480
    invoke-interface {p0, p2, p2, v0}, Lcom/bumptech/glide/load/engine/a/e;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x1

    .line 481
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 483
    sget-object v1, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 485
    :try_start_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x7

    if-eqz p4, :cond_0

    .line 489
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 490
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0

    .line 493
    :cond_0
    sget-object v5, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->b:Landroid/graphics/Paint;

    .line 496
    :goto_0
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p5, :cond_1

    .line 501
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 502
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    .line 505
    sget-object p4, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->c:Landroid/graphics/Paint;

    goto :goto_1

    .line 507
    :cond_2
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 508
    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1
    const/4 p5, 0x0

    .line 513
    invoke-virtual {v2, p3, p5, v3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2627
    invoke-virtual {v2, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 520
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 521
    invoke-interface {p0, p3}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    return-object p2

    :catchall_0
    move-exception p0

    .line 517
    sget-object p1, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 518
    throw p0
.end method
