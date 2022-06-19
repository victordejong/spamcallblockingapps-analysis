.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c$a;
    }
.end annotation


# static fields
.field private static volatile h:Lcom/bumptech/glide/c;

.field private static volatile i:Z


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/a/e;

.field public final b:Lcom/bumptech/glide/e;

.field public final c:Lcom/bumptech/glide/Registry;

.field public final d:Lcom/bumptech/glide/load/engine/a/b;

.field public final e:Lcom/bumptech/glide/manager/o;

.field final f:Lcom/bumptech/glide/manager/d;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/k;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/load/engine/k;

.field private final k:Lcom/bumptech/glide/load/engine/b/h;

.field private final l:Lcom/bumptech/glide/c$a;

.field private m:Lcom/bumptech/glide/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Lcom/bumptech/glide/load/engine/b/h;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            "Lcom/bumptech/glide/manager/o;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/l<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/bumptech/glide/f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    .line 388
    const-class v4, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    .line 134
    sget-object v5, Lcom/bumptech/glide/g;->NORMAL:Lcom/bumptech/glide/g;

    iput-object v5, v0, Lcom/bumptech/glide/c;->m:Lcom/bumptech/glide/g;

    move-object/from16 v9, p2

    .line 389
    iput-object v9, v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/load/engine/k;

    .line 390
    iput-object v1, v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/a/e;

    .line 391
    iput-object v3, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/b;

    move-object/from16 v5, p3

    .line 392
    iput-object v5, v0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/load/engine/b/h;

    move-object/from16 v5, p6

    .line 393
    iput-object v5, v0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/manager/o;

    move-object/from16 v5, p7

    .line 394
    iput-object v5, v0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/manager/d;

    move-object/from16 v6, p9

    .line 395
    iput-object v6, v0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/c$a;

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 399
    new-instance v7, Lcom/bumptech/glide/Registry;

    invoke-direct {v7}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v7, v0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/Registry;

    .line 400
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 403
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1b

    if-lt v8, v10, :cond_0

    .line 404
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/o;

    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/bitmap/o;-><init>()V

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    .line 407
    :cond_0
    invoke-virtual {v7}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v8

    .line 409
    new-instance v10, Lcom/bumptech/glide/load/resource/d/a;

    invoke-direct {v10, v2, v8, v1, v3}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V

    .line 412
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/aa;->b(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/j;

    move-result-object v11

    .line 415
    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 417
    invoke-virtual {v7}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-direct {v12, v13, v14, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V

    .line 421
    const-class v13, Lcom/bumptech/glide/d$a;

    move-object/from16 v14, p12

    invoke-virtual {v14, v13}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-lt v13, v15, :cond_1

    .line 423
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v13}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>()V

    .line 424
    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v15}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>()V

    goto :goto_0

    .line 426
    :cond_1
    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v15, v12}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>(Lcom/bumptech/glide/load/resource/bitmap/l;)V

    .line 427
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/x;

    invoke-direct {v13, v12, v3}, Lcom/bumptech/glide/load/resource/bitmap/x;-><init>(Lcom/bumptech/glide/load/resource/bitmap/l;Lcom/bumptech/glide/load/engine/a/b;)V

    .line 430
    :goto_0
    new-instance v6, Lcom/bumptech/glide/load/resource/b/e;

    invoke-direct {v6, v2}, Lcom/bumptech/glide/load/resource/b/e;-><init>(Landroid/content/Context;)V

    .line 431
    new-instance v9, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    invoke-direct {v9, v5}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 433
    new-instance v14, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    invoke-direct {v14, v5}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(Landroid/content/res/Resources;)V

    .line 434
    new-instance v0, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;

    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/model/ResourceLoader$FileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v16, v4

    .line 436
    new-instance v4, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;

    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 438
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Lcom/bumptech/glide/load/engine/a/b;)V

    move-object/from16 p3, v4

    .line 440
    new-instance v4, Lcom/bumptech/glide/load/resource/e/a;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/e/a;-><init>()V

    move-object/from16 p6, v4

    .line 441
    new-instance v4, Lcom/bumptech/glide/load/resource/e/d;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/e/d;-><init>()V

    move-object/from16 p7, v4

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v17, v4

    .line 445
    const-class v4, Ljava/nio/ByteBuffer;

    move-object/from16 v18, v14

    new-instance v14, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    invoke-direct {v14}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;-><init>()V

    .line 446
    invoke-virtual {v7, v4, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/Registry;

    move-result-object v4

    const-class v14, Ljava/io/InputStream;

    move-object/from16 v19, v0

    new-instance v0, Lcom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>(Lcom/bumptech/glide/load/engine/a/b;)V

    .line 447
    invoke-virtual {v4, v14, v0}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v14, Landroid/graphics/Bitmap;

    move-object/from16 v20, v9

    const-string v9, "Bitmap"

    .line 449
    invoke-virtual {v0, v9, v4, v14, v15}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/io/InputStream;

    const-class v14, Landroid/graphics/Bitmap;

    .line 450
    invoke-virtual {v0, v9, v4, v14, v13}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    .line 452
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v14, v12}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Lcom/bumptech/glide/load/resource/bitmap/l;)V

    invoke-virtual {v7, v9, v0, v4, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    .line 460
    :cond_2
    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    .line 461
    invoke-virtual {v7, v9, v0, v4, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    const-class v12, Landroid/graphics/Bitmap;

    .line 470
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/aa;->a(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/j;

    move-result-object v14

    .line 466
    invoke-virtual {v0, v9, v4, v12, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/Bitmap;

    const-class v12, Landroid/graphics/Bitmap;

    .line 471
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v14

    invoke-virtual {v0, v4, v12, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/Bitmap;

    const-class v12, Landroid/graphics/Bitmap;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/z;

    invoke-direct {v14}, Lcom/bumptech/glide/load/resource/bitmap/z;-><init>()V

    .line 472
    invoke-virtual {v0, v9, v4, v12, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/Bitmap;

    .line 473
    invoke-virtual {v0, v4, v2}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v12, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v14, v5, v15}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/j;)V

    const-string v15, "BitmapDrawable"

    .line 475
    invoke-virtual {v0, v15, v4, v12, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Ljava/io/InputStream;

    const-class v12, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v14, v5, v13}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/j;)V

    .line 480
    invoke-virtual {v0, v15, v4, v12, v14}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/os/ParcelFileDescriptor;

    const-class v12, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v13, v5, v11}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/j;)V

    .line 485
    invoke-virtual {v0, v15, v4, v12, v13}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v11, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/k;)V

    .line 490
    invoke-virtual {v0, v4, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v11, Lcom/bumptech/glide/load/resource/d/j;

    invoke-direct {v11, v8, v10, v3}, Lcom/bumptech/glide/load/resource/d/j;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/engine/a/b;)V

    const-string v8, "Gif"

    .line 492
    invoke-virtual {v0, v8, v2, v4, v11}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v4, Lcom/bumptech/glide/load/resource/d/c;

    .line 497
    invoke-virtual {v0, v8, v2, v4, v10}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v4, Lcom/bumptech/glide/load/resource/d/d;

    invoke-direct {v4}, Lcom/bumptech/glide/load/resource/d/d;-><init>()V

    .line 498
    invoke-virtual {v0, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/b/a;

    const-class v4, Lcom/bumptech/glide/b/a;

    .line 502
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v8

    .line 501
    invoke-virtual {v0, v2, v4, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/b/a;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/d/h;

    invoke-direct {v8, v1}, Lcom/bumptech/glide/load/resource/d/h;-><init>(Lcom/bumptech/glide/load/engine/a/e;)V

    .line 503
    invoke-virtual {v0, v9, v2, v4, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 509
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/w;

    invoke-direct {v8, v6, v1}, Lcom/bumptech/glide/load/resource/bitmap/w;-><init>(Lcom/bumptech/glide/load/resource/b/e;Lcom/bumptech/glide/load/engine/a/e;)V

    .line 510
    invoke-virtual {v0, v2, v4, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/resource/a/a$a;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/a/a$a;-><init>()V

    .line 513
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;-><init>()V

    .line 514
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 515
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/resource/c/a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/resource/c/a;-><init>()V

    .line 516
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 517
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/File;

    const-class v4, Ljava/io/File;

    .line 519
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/data/k$a;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/data/k$a;-><init>(Lcom/bumptech/glide/load/engine/a/b;)V

    .line 521
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    .line 523
    invoke-static {}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    new-instance v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;-><init>()V

    invoke-virtual {v7, v0}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/Registry;

    .line 527
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v4, v20

    .line 528
    invoke-virtual {v7, v0, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v8, v19

    .line 529
    invoke-virtual {v0, v2, v6, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    .line 530
    invoke-virtual {v0, v2, v6, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    .line 531
    invoke-virtual {v0, v2, v4, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v4, Landroid/net/Uri;

    move-object/from16 v6, v18

    .line 532
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v8, p3

    .line 533
    invoke-virtual {v0, v2, v4, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    .line 534
    invoke-virtual {v0, v2, v4, v8}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/net/Uri;

    .line 535
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 536
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 537
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;-><init>()V

    .line 538
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;-><init>()V

    .line 539
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;-><init>()V

    .line 540
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 543
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    move-object/from16 v8, p1

    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 547
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 548
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_4

    .line 550
    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;

    invoke-direct {v4, v8}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 552
    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;

    invoke-direct {v4, v8}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 557
    :cond_4
    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    move-object/from16 v6, v17

    invoke-direct {v4, v6}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 558
    invoke-virtual {v7, v0, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;

    invoke-direct {v9, v6}, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 559
    invoke-virtual {v0, v2, v4, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v9, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;

    invoke-direct {v9, v6}, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/ContentResolver;)V

    .line 563
    invoke-virtual {v0, v2, v4, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;-><init>()V

    .line 567
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/net/URL;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;-><init>()V

    .line 568
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Ljava/io/File;

    new-instance v6, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;

    invoke-direct {v6, v8}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 569
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    invoke-direct {v6}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 570
    invoke-virtual {v0, v2, v4, v6}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v4, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {v4}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;-><init>()V

    move-object/from16 v6, v16

    .line 571
    invoke-virtual {v0, v6, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;

    invoke-direct {v4}, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;-><init>()V

    .line 572
    invoke-virtual {v0, v6, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v4, Landroid/net/Uri;

    .line 573
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v9

    invoke-virtual {v0, v2, v4, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 574
    invoke-static {}, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->getInstance()Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    move-result-object v9

    invoke-virtual {v0, v2, v4, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v4, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/b/f;

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/b/f;-><init>()V

    .line 575
    invoke-virtual {v0, v2, v4, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/e/b;

    invoke-direct {v9, v5}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Landroid/content/res/Resources;)V

    .line 577
    invoke-virtual {v0, v2, v4, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/Bitmap;

    move-object/from16 v4, p6

    .line 578
    invoke-virtual {v0, v2, v6, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/bumptech/glide/load/resource/e/c;

    move-object/from16 v10, p7

    invoke-direct {v9, v1, v4, v10}, Lcom/bumptech/glide/load/resource/e/c;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/e/e;Lcom/bumptech/glide/load/resource/e/e;)V

    .line 579
    invoke-virtual {v0, v2, v6, v9}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Lcom/bumptech/glide/load/resource/d/c;

    .line 584
    invoke-virtual {v0, v2, v6, v10}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/e/e;)Lcom/bumptech/glide/Registry;

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_5

    .line 588
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/aa;->c(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/j;

    move-result-object v0

    .line 589
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1, v2, v0}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    .line 590
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v4, v5, v0}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/j;)V

    invoke-virtual {v7, v1, v2, v4}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/Registry;

    .line 596
    :cond_5
    new-instance v5, Lcom/bumptech/glide/e/a/g;

    invoke-direct {v5}, Lcom/bumptech/glide/e/a/g;-><init>()V

    .line 597
    new-instance v0, Lcom/bumptech/glide/e;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move-object/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/Registry;Lcom/bumptech/glide/e/a/g;Lcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/f;I)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 3

    .line 186
    sget-object v0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/c;

    if-nez v0, :cond_2

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    .line 189
    const-class v1, Lcom/bumptech/glide/c;

    monitor-enter v1

    .line 190
    :try_start_0
    sget-object v2, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/c;

    if-nez v2, :cond_1

    .line 1204
    sget-boolean v2, Lcom/bumptech/glide/c;->i:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 1209
    sput-boolean v2, Lcom/bumptech/glide/c;->i:Z

    .line 1266
    new-instance v2, Lcom/bumptech/glide/d;

    invoke-direct {v2}, Lcom/bumptech/glide/d;-><init>()V

    invoke-static {p0, v2, v0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    const/4 p0, 0x0

    .line 1211
    sput-boolean p0, Lcom/bumptech/glide/c;->i:Z

    goto :goto_0

    .line 1205
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 196
    :cond_2
    :goto_1
    sget-object p0, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/c;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/d;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual/range {p2 .. p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->isManifestParsingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    :cond_0
    new-instance v2, Lcom/bumptech/glide/c/e;

    invoke-direct {v2, v15}, Lcom/bumptech/glide/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/c/e;->a()Ljava/util/List;

    move-result-object v2

    :cond_1
    move-object/from16 v16, v2

    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual/range {p2 .. p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a()Ljava/util/Set;

    move-result-object v4

    .line 284
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 285
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 286
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/c/c;

    .line 287
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 290
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 297
    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/c/c;

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 305
    invoke-virtual/range {p2 .. p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->b()Lcom/bumptech/glide/manager/o$a;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 1489
    :goto_2
    iput-object v2, v0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/o$a;

    .line 308
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/c/c;

    .line 309
    invoke-interface {v3, v15, v0}, Lcom/bumptech/glide/c/c;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 312
    invoke-virtual {v1, v15, v0}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 1500
    :cond_8
    iget-object v2, v0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v2, :cond_9

    .line 1501
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->c()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    .line 1504
    :cond_9
    iget-object v2, v0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v2, :cond_a

    .line 1505
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->b()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/c/a;

    .line 1508
    :cond_a
    iget-object v2, v0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/c/a;

    if-nez v2, :cond_b

    .line 1509
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->e()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/c/a;

    .line 1512
    :cond_b
    iget-object v2, v0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/b/i;

    if-nez v2, :cond_c

    .line 1513
    new-instance v2, Lcom/bumptech/glide/load/engine/b/i$a;

    invoke-direct {v2, v15}, Lcom/bumptech/glide/load/engine/b/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/b/i$a;->b()Lcom/bumptech/glide/load/engine/b/i;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/b/i;

    .line 1516
    :cond_c
    iget-object v2, v0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    if-nez v2, :cond_d

    .line 1517
    new-instance v2, Lcom/bumptech/glide/manager/f;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v2, v0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    .line 1520
    :cond_d
    iget-object v2, v0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/e;

    if-nez v2, :cond_f

    .line 1521
    iget-object v2, v0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/b/i;

    .line 2092
    iget v2, v2, Lcom/bumptech/glide/load/engine/b/i;->a:I

    if-lez v2, :cond_e

    .line 1523
    new-instance v3, Lcom/bumptech/glide/load/engine/a/k;

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lcom/bumptech/glide/load/engine/a/k;-><init>(J)V

    iput-object v3, v0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/e;

    goto :goto_4

    .line 1525
    :cond_e
    new-instance v2, Lcom/bumptech/glide/load/engine/a/f;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/a/f;-><init>()V

    iput-object v2, v0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/e;

    .line 1529
    :cond_f
    :goto_4
    iget-object v2, v0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/a/b;

    if-nez v2, :cond_10

    .line 1530
    new-instance v2, Lcom/bumptech/glide/load/engine/a/j;

    iget-object v3, v0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/b/i;

    .line 2097
    iget v3, v3, Lcom/bumptech/glide/load/engine/b/i;->c:I

    .line 1530
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/a/j;-><init>(I)V

    iput-object v2, v0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/a/b;

    .line 1533
    :cond_10
    iget-object v2, v0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/b/h;

    if-nez v2, :cond_11

    .line 1534
    new-instance v2, Lcom/bumptech/glide/load/engine/b/g;

    iget-object v3, v0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/load/engine/b/i;

    .line 3087
    iget v3, v3, Lcom/bumptech/glide/load/engine/b/i;->b:I

    int-to-long v3, v3

    .line 1534
    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/b/g;-><init>(J)V

    iput-object v2, v0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/b/h;

    .line 1537
    :cond_11
    iget-object v2, v0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/a$a;

    if-nez v2, :cond_12

    .line 1538
    new-instance v2, Lcom/bumptech/glide/load/engine/b/f;

    invoke-direct {v2, v15}, Lcom/bumptech/glide/load/engine/b/f;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/a$a;

    .line 1541
    :cond_12
    iget-object v2, v0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    if-nez v2, :cond_13

    .line 1542
    new-instance v2, Lcom/bumptech/glide/load/engine/k;

    iget-object v4, v0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/b/h;

    iget-object v5, v0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/engine/b/a$a;

    iget-object v6, v0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/engine/c/a;

    iget-object v7, v0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/engine/c/a;

    .line 1548
    invoke-static {}, Lcom/bumptech/glide/load/engine/c/a;->d()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v8

    iget-object v9, v0, Lcom/bumptech/glide/d;->o:Lcom/bumptech/glide/load/engine/c/a;

    iget-boolean v10, v0, Lcom/bumptech/glide/d;->p:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/k;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Z)V

    iput-object v2, v0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    .line 1553
    :cond_13
    iget-object v2, v0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    if-nez v2, :cond_14

    .line 1554
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    goto :goto_5

    .line 1556
    :cond_14
    iget-object v2, v0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    .line 1559
    :goto_5
    iget-object v2, v0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f$a;

    .line 4063
    new-instance v14, Lcom/bumptech/glide/f;

    invoke-direct {v14, v2}, Lcom/bumptech/glide/f;-><init>(Lcom/bumptech/glide/f$a;)V

    .line 1560
    new-instance v8, Lcom/bumptech/glide/manager/o;

    iget-object v2, v0, Lcom/bumptech/glide/d;->n:Lcom/bumptech/glide/manager/o$a;

    invoke-direct {v8, v2, v14}, Lcom/bumptech/glide/manager/o;-><init>(Lcom/bumptech/glide/manager/o$a;Lcom/bumptech/glide/f;)V

    .line 1563
    new-instance v13, Lcom/bumptech/glide/c;

    iget-object v4, v0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/engine/k;

    iget-object v5, v0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/engine/b/h;

    iget-object v6, v0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/engine/a/e;

    iget-object v7, v0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/engine/a/b;

    iget-object v9, v0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/manager/d;

    iget v10, v0, Lcom/bumptech/glide/d;->l:I

    iget-object v11, v0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/c$a;

    iget-object v12, v0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/bumptech/glide/d;->q:Ljava/util/List;

    move-object v2, v13

    move-object v3, v15

    move-object v1, v13

    move-object v13, v0

    invoke-direct/range {v2 .. v14}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/manager/o;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/f;)V

    .line 315
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/c/c;

    .line 317
    :try_start_0
    iget-object v3, v1, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/Registry;

    invoke-interface {v2, v15, v1, v3}, Lcom/bumptech/glide/c/c;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    move-object/from16 v0, p2

    if-eqz v0, :cond_16

    .line 329
    iget-object v2, v1, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/Registry;

    invoke-virtual {v0, v15, v1, v2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V

    .line 331
    :cond_16
    invoke-virtual {v15, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 332
    sput-object v1, Lcom/bumptech/glide/c;->h:Lcom/bumptech/glide/c;

    return-void
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/k;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 4769
    invoke-static {p0, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4774
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 5737
    iget-object v0, v0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/manager/o;

    .line 801
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/o;->a(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 5

    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 342
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 343
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 362
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 360
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 358
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 356
    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    nop

    const/4 p0, 0x5

    const-string v0, "Glide"

    .line 346
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 347
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/e/a/j;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/j<",
            "*>;)Z"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    monitor-enter v0

    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/k;

    .line 896
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/k;->b(Lcom/bumptech/glide/e/a/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 897
    monitor-exit v0

    return p1

    .line 900
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 7694
    invoke-static {}, Lcom/bumptech/glide/g/k;->a()V

    .line 7696
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/h;->clearMemory()V

    .line 7697
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/e;->a()V

    .line 7698
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/b;->a()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 6708
    invoke-static {}, Lcom/bumptech/glide/g/k;->a()V

    .line 6711
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    monitor-enter v0

    .line 6712
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/k;

    .line 6713
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/k;->onTrimMemory(I)V

    goto :goto_0

    .line 6715
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6717
    iget-object v0, p0, Lcom/bumptech/glide/c;->k:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/h;->a(I)V

    .line 6718
    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/e;->a(I)V

    .line 6719
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/b;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 6715
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
