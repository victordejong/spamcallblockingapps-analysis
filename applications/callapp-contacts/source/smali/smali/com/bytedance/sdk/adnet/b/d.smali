.class public Lcom/bytedance/sdk/adnet/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/b/d$a;,
        Lcom/bytedance/sdk/adnet/b/d$c;,
        Lcom/bytedance/sdk/adnet/b/d$d;,
        Lcom/bytedance/sdk/adnet/b/d$e;,
        Lcom/bytedance/sdk/adnet/b/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/bytedance/sdk/adnet/core/l;

.field private c:I

.field private final d:Lcom/bytedance/sdk/adnet/b/d$b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/l;Lcom/bytedance/sdk/adnet/b/d$b;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    const/16 v0, 0x32

    .line 58
    iput v0, p0, Lcom/bytedance/sdk/adnet/b/d;->c:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d;->b:Lcom/bytedance/sdk/adnet/core/l;

    if-nez p2, :cond_0

    .line 113
    new-instance p2, Lcom/bytedance/sdk/adnet/b/a;

    invoke-direct {p2}, Lcom/bytedance/sdk/adnet/b/a;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    return-void
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 673
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#H"

    .line 676
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#S"

    .line 678
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {p4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/adnet/b/d;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance p2, Lcom/bytedance/sdk/adnet/b/d$6;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/adnet/b/d$6;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V

    .line 656
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/sdk/adnet/b/d;->c:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v7, p2

    .line 284
    iget-object v0, v8, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/adnet/b/d$2;

    invoke-direct {v1, p0, v7}, Lcom/bytedance/sdk/adnet/b/d$2;-><init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v9, p1

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 291
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v13

    .line 294
    iget-object v0, v8, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    invoke-interface {v0, v13}, Lcom/bytedance/sdk/adnet/b/d$b;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 295
    iget-object v0, v8, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    invoke-interface {v0, v13}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v3, :cond_3

    .line 296
    array-length v0, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    new-instance v14, Lcom/bytedance/sdk/adnet/b/d$c;

    const/4 v0, 0x0

    new-array v2, v0, [B

    const/4 v3, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v4, p1

    move-object v5, v13

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/d$c;-><init>(Lcom/bytedance/sdk/adnet/b/d;[BLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V

    .line 318
    iget-object v0, v8, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    if-nez v0, :cond_1

    .line 320
    iget-object v0, v8, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    :cond_1
    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0, v14}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$c;)V

    return-void

    :cond_2
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v13

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    .line 331
    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;Lcom/bytedance/sdk/adnet/b/d$e;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 333
    iget-object v1, v8, Lcom/bytedance/sdk/adnet/b/d;->b:Lcom/bytedance/sdk/adnet/core/l;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 334
    iget-object v1, v8, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    new-instance v2, Lcom/bytedance/sdk/adnet/b/d$a;

    invoke-direct {v2, v0, v14}, Lcom/bytedance/sdk/adnet/b/d$a;-><init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/b/d$c;)V

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 298
    :cond_3
    :goto_0
    new-instance v10, Lcom/bytedance/sdk/adnet/b/d$c;

    iget-object v0, v8, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    .line 299
    invoke-interface {v0, v13}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/d$c;-><init>(Lcom/bytedance/sdk/adnet/b/d;[BLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V

    .line 301
    iget-object v0, v8, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/adnet/b/d$3;

    invoke-direct {v1, p0, v7, v10}, Lcom/bytedance/sdk/adnet/b/d$3;-><init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;Lcom/bytedance/sdk/adnet/b/d$e;)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/d$d;",
            "Lcom/bytedance/sdk/adnet/b/d$e;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v9, Lcom/bytedance/sdk/adnet/b/d$5;

    new-instance v3, Lcom/bytedance/sdk/adnet/b/d$4;

    move-object v10, p0

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/adnet/b/d$4;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/adnet/b/d$5;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/bytedance/sdk/adnet/b/d$d;)V

    return-object v9
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;II)V
    .locals 7

    .line 241
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .locals 11

    move-object v8, p0

    .line 267
    iget-object v9, v8, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/bytedance/sdk/adnet/b/d$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/adnet/b/d$1;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p2, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 431
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 434
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m;Lcom/bytedance/sdk/adnet/b/d$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bytedance/sdk/adnet/b/d$e;",
            ")V"
        }
    .end annotation

    .line 401
    iget-object v0, p2, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    invoke-interface {p3, v0}, Lcom/bytedance/sdk/adnet/b/d$e;->a([B)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p2, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object p3, p3, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    new-array p3, p3, [B

    .line 403
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    iget-object v1, p2, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1, p3}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;[B)V

    .line 406
    iget-object p3, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/adnet/b/d$a;

    if-eqz p3, :cond_1

    .line 410
    iget-object v0, p2, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {p3, v0}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 411
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 414
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V

    :cond_1
    return-void
.end method
