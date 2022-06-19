.class public final Lcom/facebook/ads/redexgen/X/7E;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static volatile A05:Lcom/facebook/ads/redexgen/X/7E;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wl;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/7A;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 16323
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7E;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7E;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7E;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7E;->A04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 1

    .line 16324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16326
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:Ljava/util/Map;

    .line 16327
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 16328
    return-void
.end method

.method private A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 11
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16329
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    if-nez p2, :cond_0

    .line 16330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V

    .line 16331
    return v10

    .line 16332
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/redexgen/X/8D;)Ljava/io/File;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16333
    .local p2, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 16334
    .local v2, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 16335
    .local v1, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v0

    .line 16336
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p2, v1, v0, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 16337
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 16338
    .local v0, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0D(Landroid/content/Context;)I

    move-result v0

    if-lt v1, v0, :cond_1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16339
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16340
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16341
    return v10

    .line 16342
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 16343
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 16344
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16345
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16346
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16347
    return v1

    .line 16348
    :catch_0
    move-exception v4

    .line 16349
    .local p0, "oome":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V

    .line 16350
    sget-object v3, Lcom/facebook/ads/redexgen/X/7E;->A04:Ljava/lang/String;

    const/16 v2, 0x8e

    const/16 v1, 0x27

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16351
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16352
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16353
    return v10

    .line 16354
    .end local p0    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v5

    .line 16355
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V

    .line 16356
    sget-object v4, Lcom/facebook/ads/redexgen/X/7E;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6a

    const/16 v1, 0x24

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16357
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16358
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16359
    return v10

    .line 16360
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 16361
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v4, Lcom/facebook/ads/redexgen/X/7E;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const/16 v1, 0x1d

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16362
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16363
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16364
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16365
    return v10

    .line 16366
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v0

    .end local v0
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16367
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16368
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16369
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7G;->A07(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    move-object/from16 v9, p5

    if-eqz v0, :cond_0

    .line 16370
    const/16 v2, 0xca

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:Ljava/util/Map;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/7A;->A07:Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16372
    :cond_0
    iget-object v10, p2, Lcom/facebook/ads/redexgen/X/7A;->A07:Ljava/lang/String;

    .line 16373
    .local p0, "url":Ljava/lang/String;
    new-instance v5, Lcom/facebook/ads/redexgen/X/7F;

    iget-object v6, p2, Lcom/facebook/ads/redexgen/X/7A;->A05:Ljava/lang/String;

    iget-object v7, p2, Lcom/facebook/ads/redexgen/X/7A;->A06:Ljava/lang/String;

    const/16 v2, 0xc5

    const/4 v1, 0x5

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/7F;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16374
    .local p1, "adCacheDebugData":Lcom/facebook/ads/redexgen/X/7F;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/redexgen/X/8D;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16375
    .local p2, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16376
    const/4 v0, 0x0

    invoke-static {p1, v5, v0}, Lcom/facebook/ads/redexgen/X/7G;->A05(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7F;Z)V

    .line 16377
    const/16 v2, 0xbe

    const/4 v1, 0x7

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16378
    invoke-direct {p0, v10, p4, p3}, Lcom/facebook/ads/redexgen/X/7E;->A04(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16379
    :goto_0
    return-object v0

    .line 16380
    :cond_1
    invoke-direct {p0, p1, p2, v9}, Lcom/facebook/ads/redexgen/X/7E;->A02(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 16381
    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v5, v0}, Lcom/facebook/ads/redexgen/X/7G;->A05(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7F;Z)V

    .line 16382
    :try_start_0
    invoke-direct {p0, p4, p3}, Lcom/facebook/ads/redexgen/X/7E;->A0D(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16383
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v1, p4, p3, v0}, Lcom/facebook/ads/redexgen/X/7H;->A02(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/8D;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 16384
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16385
    :goto_1
    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16386
    :catch_0
    move-exception v0

    .line 16387
    .local p3, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V

    .line 16388
    const/4 v0, 0x0

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16389
    move-object/from16 v4, p0

    move-object/from16 v11, p2

    iget-object v6, v11, Lcom/facebook/ads/redexgen/X/7A;->A07:Ljava/lang/String;

    .line 16390
    .local v1, "url":Ljava/lang/String;
    iget v7, v11, Lcom/facebook/ads/redexgen/X/7A;->A03:I

    .line 16391
    .local v2, "height":I
    iget v5, v11, Lcom/facebook/ads/redexgen/X/7A;->A04:I

    .line 16392
    .local v3, "width":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 16393
    .local v1, "requestTime":J
    const/4 v0, 0x0

    .line 16394
    .local v11, "storedThrowable":Ljava/lang/Throwable;
    const/16 v3, 0xb5

    const/16 v2, 0x9

    const/16 v1, 0x50

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    .line 16395
    const/4 v2, 0x0

    .line 16396
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Wl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 16397
    invoke-direct {v4, v7, v5}, Lcom/facebook/ads/redexgen/X/7E;->A0D(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16398
    invoke-static {v2, v7, v5}, Lcom/facebook/ads/redexgen/X/7H;->A01(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 16399
    :cond_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16400
    :catch_0
    move-exception v0

    .line 16401
    .local p0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V

    .line 16402
    if-eqz v2, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16403
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16404
    :cond_1
    return-object v14

    .line 16405
    .end local p0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 16406
    .local p0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V

    .line 16407
    if-eqz v2, :cond_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16408
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16409
    :cond_2
    return-object v14

    .line 16410
    .end local p0    # "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    .end local p0
    if-eqz v2, :cond_3

    .line 16411
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16412
    :cond_3
    throw v0

    .line 16413
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_4
    invoke-direct {v4, v7, v5}, Lcom/facebook/ads/redexgen/X/7E;->A0D(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16414
    :try_start_3
    invoke-direct {v4, v6, v7, v5}, Lcom/facebook/ads/redexgen/X/7E;->A05(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 16415
    .end local p0
    :catch_2
    move-exception v0

    .line 16416
    .local p0, "e":Ljava/io/IOException;
    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/7E;->A0C(Ljava/lang/Throwable;)V

    .line 16417
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/7E;->A03(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local p0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 16418
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/7E;->A03(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 16419
    .local p0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_6

    .line 16420
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16421
    .end local v11    # "storedThrowable":Ljava/lang/Throwable;
    .local p0, "storedThrowable":Ljava/lang/Throwable;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 16422
    .local v6, "failureReason":Ljava/lang/String;
    :cond_7
    move-object/from16 v12, p3

    move-object/from16 v10, p1

    if-eqz v3, :cond_a

    .line 16423
    invoke-direct {v4, v6, v3}, Lcom/facebook/ads/redexgen/X/7E;->A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v2

    .line 16424
    .local v2, "storedSize":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 16425
    .local v1, "loadTime":J
    if-lez v2, :cond_8

    .line 16426
    sget v13, Lcom/facebook/ads/redexgen/X/7G;->A02:I

    .line 16427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 16428
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 16429
    invoke-static/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/7G;->A04(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 16430
    :goto_2
    return-object v3

    .line 16431
    :cond_8
    sget v13, Lcom/facebook/ads/redexgen/X/7G;->A01:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A03:[Ljava/lang/String;

    const-string v1, "sJwgk7Ux8tNRcNo7Zfaw40WQcCG9GauR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "width":I
    .local v11, "width":I
    .end local v2    # "storedSize":I
    .local v11, "height":I
    invoke-static/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/7G;->A04(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    goto :goto_2

    .line 16432
    .end local v11    # "height":I
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "width":I
    .restart local v2    # "storedSize":I
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "width":I
    .end local v2    # "storedSize":I
    .restart local v11    # "height":I
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "height":I
    :cond_a
    sget v13, Lcom/facebook/ads/redexgen/X/7G;->A03:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/7G;->A04(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    goto :goto_2
.end method

.method private A03(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QX;->A00(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v1

    .line 16434
    .local p0, "client":Lcom/facebook/ads/redexgen/X/QF;
    new-instance v0, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 16435
    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACP(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    .line 16436
    .local p1, "response":Lcom/facebook/ads/redexgen/X/QE;
    if-eqz v0, :cond_1

    .line 16437
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QE;->A5h()[B

    move-result-object v5

    .line 16438
    .local v0, "bytes":[B
    if-eqz v5, :cond_1

    .line 16439
    const/4 v4, 0x0

    array-length v3, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7E;->A03:[Ljava/lang/String;

    const-string v1, "99IwdndnBnCK07hgvsXqxjXsnHcettbD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 16440
    .end local v0    # "bytes":[B
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private A04(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16441
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/7E;->A0D(II)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xbe

    const/4 v1, 0x7

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 16442
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 16443
    invoke-static {v0, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 16444
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 16445
    invoke-static {v1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/7H;->A02(Ljava/lang/String;IILcom/facebook/ads/redexgen/X/8D;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16446
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A00(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    .line 16447
    return-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16448
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 16449
    .local p1, "ioe":Ljava/io/IOException;
    sget-object v4, Lcom/facebook/ads/redexgen/X/7E;->A04:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16450
    .end local p1    # "ioe":Ljava/io/IOException;
    return-object v5
.end method

.method private A05(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16451
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16452
    .local p0, "urlObj":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 16453
    .local p1, "connection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 16454
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 16455
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 16456
    .local p2, "input":Ljava/io/InputStream;
    invoke-static {v1, p2, p3}, Lcom/facebook/ads/redexgen/X/7H;->A01(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16457
    .local p3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/7E;->A0B(Ljava/io/Closeable;)V

    .line 16458
    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/7E;
    .locals 2

    .line 16459
    sget-object v0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7E;

    if-nez v0, :cond_1

    .line 16460
    const-class v1, Lcom/facebook/ads/redexgen/X/7E;

    monitor-enter v1

    .line 16461
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7E;

    if-nez v0, :cond_0

    .line 16462
    new-instance v0, Lcom/facebook/ads/redexgen/X/7E;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7E;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7E;

    .line 16463
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16464
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/7E;->A05:Lcom/facebook/ads/redexgen/X/7E;

    return-object v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/8D;)Ljava/io/File;
    .locals 0

    .line 16465
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7E;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xd5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7E;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x4t
        0x77t
        0x29t
        0x37t
        0x3et
        0x3at
        0x19t
        0x1ct
        0x58t
        0x17t
        0xdt
        0xct
        0x8t
        0xdt
        0xct
        0x58t
        0x1ct
        0x1dt
        0xbt
        0xct
        0x11t
        0x16t
        0x19t
        0xct
        0x11t
        0x17t
        0x16t
        0x58t
        0x50t
        0x1et
        0x11t
        0x14t
        0x1dt
        0x45t
        0x7bt
        0x59t
        0x5bt
        0x50t
        0x5dt
        0x18t
        0x5dt
        0x4at
        0x4at
        0x57t
        0x4at
        0x16t
        0x18t
        0x7at
        0x51t
        0x4ct
        0x55t
        0x59t
        0x48t
        0x18t
        0x51t
        0x4bt
        0x18t
        0x56t
        0x4dt
        0x54t
        0x54t
        0x16t
        0x17t
        0x30t
        0x38t
        0x3dt
        0x34t
        0x35t
        0x71t
        0x25t
        0x3et
        0x71t
        0x32t
        0x3et
        0x21t
        0x28t
        0x71t
        0x3dt
        0x3et
        0x32t
        0x30t
        0x3dt
        0x71t
        0x38t
        0x3ct
        0x30t
        0x36t
        0x34t
        0x71t
        0x38t
        0x3ft
        0x25t
        0x3et
        0x71t
        0x32t
        0x30t
        0x32t
        0x39t
        0x34t
        0x71t
        0x79t
        0x24t
        0x23t
        0x3dt
        0x6ct
        0x6et
        0x55t
        0x5at
        0x59t
        0x57t
        0x5et
        0x1bt
        0x4ft
        0x54t
        0x1bt
        0x4ct
        0x49t
        0x52t
        0x4ft
        0x5et
        0x1bt
        0x59t
        0x52t
        0x4ft
        0x56t
        0x5at
        0x4bt
        0x1bt
        0x4ft
        0x54t
        0x1bt
        0x5dt
        0x52t
        0x57t
        0x5et
        0x1bt
        0x13t
        0x4et
        0x49t
        0x57t
        0x6t
        0x26t
        0x1dt
        0x12t
        0x11t
        0x1ft
        0x16t
        0x53t
        0x7t
        0x1ct
        0x53t
        0x4t
        0x1t
        0x1at
        0x7t
        0x16t
        0x53t
        0x11t
        0x1at
        0x7t
        0x1et
        0x12t
        0x3t
        0x53t
        0x7t
        0x1ct
        0x53t
        0x1ct
        0x6t
        0x7t
        0x3t
        0x6t
        0x7t
        0x53t
        0x0t
        0x7t
        0x1t
        0x16t
        0x12t
        0x1et
        0x72t
        0x60t
        0x60t
        0x76t
        0x67t
        0x29t
        0x3ct
        0x3ct
        0x3ct
        0x61t
        0x6et
        0x6bt
        0x62t
        0x3dt
        0x28t
        0x28t
        0x5at
        0x5et
        0x52t
        0x54t
        0x56t
        0x58t
        0x5bt
        0x55t
        0x50t
        0x6ft
        0x74t
        0x71t
        0x74t
        0x75t
        0x6dt
        0x74t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hUOGynEtmSUNsKdJkghkOGNAWtryygzy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wzPRxUupX2XKUl6NSNI9kT750batbohw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Jhw1FAiFO5yEDnp58HFyVFkAnHcYvwe5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TOMeOtqGrF4uQ0cY9hasq1ESWlFY5vR9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yYpnUvpVzVqKhRvrciBHRtLUwNGFzaUs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hHaB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "31TBXmQRr4tlfWcucEg5Ko3P35yO7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7E;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A0B(Ljava/io/Closeable;)V
    .locals 0
    .param p0    # Ljava/io/Closeable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16466
    if-nez p0, :cond_0

    .line 16467
    return-void

    .line 16468
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16469
    :catch_0
    return-void
.end method

.method private A0C(Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16470
    const/16 v2, 0xc5

    const/4 v1, 0x5

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 16471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A1O:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 16472
    :goto_0
    return-void

    .line 16473
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 16474
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A1O:I

    const/16 v2, 0x23

    const/16 v1, 0x1c

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 16475
    invoke-interface {v4, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
.end method

.method private A0D(II)Z
    .locals 1

    .line 16476
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0E(Lcom/facebook/ads/redexgen/X/7A;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    move-object v2, p1

    iget v3, v2, Lcom/facebook/ads/redexgen/X/7A;->A04:I

    iget v4, v2, Lcom/facebook/ads/redexgen/X/7A;->A03:I

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/7A;->A01:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A01:Ljava/util/Map;

    move-object/from16 v9, p2

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/7A;

    .line 16479
    .local p0, "imageData":Lcom/facebook/ads/redexgen/X/7A;
    move-object v3, p1

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7G;->A07(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    move-object/from16 v7, p5

    move/from16 v5, p4

    move/from16 v6, p3

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 16480
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 16481
    :cond_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/7A;

    const/16 v2, 0xce

    const/4 v1, 0x7

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0xce

    const/4 v1, 0x7

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v13

    move v10, v6

    move v11, v5

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/7E;->A01(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/7A;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/redexgen/X/8D;)Ljava/io/File;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16483
    .local p0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 16484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7E;->A07(Lcom/facebook/ads/redexgen/X/8D;)Ljava/io/File;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7E;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16485
    .local p0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
