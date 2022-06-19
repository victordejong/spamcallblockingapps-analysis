.class public Lcom/linkedin/android/litr/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "b"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/linkedin/android/litr/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/b;->c:Landroid/content/Context;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/linkedin/android/litr/b;->a:Ljava/util/Map;

    .line 87
    iput-object p2, p0, Lcom/linkedin/android/litr/b;->e:Landroid/os/Looper;

    .line 88
    iput-object p3, p0, Lcom/linkedin/android/litr/b;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/linkedin/android/litr/e;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/c;",
            ">;",
            "Lcom/linkedin/android/litr/e;",
            ")V"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/linkedin/android/litr/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 294
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 296
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/android/litr/c;

    .line 1102
    iget-object v3, v2, Lcom/linkedin/android/litr/c;->f:Landroid/media/MediaFormat;

    if-nez v3, :cond_4

    .line 2075
    iget-object v3, v2, Lcom/linkedin/android/litr/c;->c:Lcom/linkedin/android/litr/e/d;

    if-eqz v3, :cond_4

    .line 3075
    iget-object v3, v2, Lcom/linkedin/android/litr/c;->c:Lcom/linkedin/android/litr/e/d;

    .line 299
    invoke-interface {v3}, Lcom/linkedin/android/litr/e/d;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4057
    iget-object v3, v2, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 4110
    iget v4, v2, Lcom/linkedin/android/litr/c;->g:I

    .line 4368
    invoke-interface {v3, v4}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "mime"

    .line 4372
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 4373
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v8

    :goto_1
    if-eqz v7, :cond_3

    const-string v9, "video"

    .line 4377
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "bitrate"

    if-eqz v9, :cond_2

    const-string v8, "width"

    .line 4379
    invoke-virtual {v5, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    const-string v9, "height"

    .line 4380
    invoke-virtual {v5, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    .line 4378
    invoke-static {v7, v8, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    .line 4381
    invoke-static {v3, v4}, Lcom/linkedin/android/litr/h/c;->a(Lcom/linkedin/android/litr/d/d;I)I

    move-result v3

    .line 4382
    invoke-virtual {v8, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v3, 0x5

    const-string v4, "i-frame-interval"

    .line 4385
    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4386
    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 4388
    :cond_1
    invoke-virtual {v8, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4390
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    const-string v3, "profile"

    .line 4391
    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4392
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4393
    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 4396
    invoke-virtual {v8, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4395
    invoke-static {v5, v4}, Lcom/linkedin/android/litr/h/a;->a(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 4401
    invoke-virtual {v8, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string v3, "audio"

    .line 4404
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "sample-rate"

    .line 4406
    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "channel-count"

    .line 4407
    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 4405
    invoke-static {v7, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    .line 4408
    invoke-virtual {v5, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 304
    :cond_3
    :goto_2
    new-instance v3, Lcom/linkedin/android/litr/c$a;

    .line 5057
    iget-object v4, v2, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 5110
    iget v5, v2, Lcom/linkedin/android/litr/c;->g:I

    .line 6093
    iget-object v6, v2, Lcom/linkedin/android/litr/c;->e:Lcom/linkedin/android/litr/d/e;

    .line 306
    invoke-direct {v3, v4, v5, v6}, Lcom/linkedin/android/litr/c$a;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;)V

    .line 6118
    iget v4, v2, Lcom/linkedin/android/litr/c;->h:I

    .line 6170
    iput v4, v3, Lcom/linkedin/android/litr/c$a;->e:I

    .line 7066
    iget-object v4, v2, Lcom/linkedin/android/litr/c;->b:Lcom/linkedin/android/litr/b/a;

    .line 7146
    iput-object v4, v3, Lcom/linkedin/android/litr/c$a;->a:Lcom/linkedin/android/litr/b/a;

    .line 8084
    iget-object v4, v2, Lcom/linkedin/android/litr/c;->d:Lcom/linkedin/android/litr/b/b;

    .line 8158
    iput-object v4, v3, Lcom/linkedin/android/litr/c$a;->c:Lcom/linkedin/android/litr/b/b;

    .line 9075
    iget-object v2, v2, Lcom/linkedin/android/litr/c;->c:Lcom/linkedin/android/litr/e/d;

    .line 9152
    iput-object v2, v3, Lcom/linkedin/android/litr/c$a;->b:Lcom/linkedin/android/litr/e/d;

    .line 9164
    iput-object v8, v3, Lcom/linkedin/android/litr/c$a;->d:Landroid/media/MediaFormat;

    .line 312
    invoke-virtual {v3}, Lcom/linkedin/android/litr/c$a;->a()Lcom/linkedin/android/litr/c;

    move-result-object v2

    .line 314
    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 318
    :cond_5
    new-instance v0, Lcom/linkedin/android/litr/d;

    const/16 v1, 0x64

    new-instance v2, Lcom/linkedin/android/litr/a;

    iget-object v3, p0, Lcom/linkedin/android/litr/b;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/linkedin/android/litr/b;->e:Landroid/os/Looper;

    invoke-direct {v2, v3, p3, v4}, Lcom/linkedin/android/litr/a;-><init>(Ljava/util/Map;Lcom/linkedin/android/litr/e;Landroid/os/Looper;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/linkedin/android/litr/d;-><init>(Ljava/lang/String;Ljava/util/List;ILcom/linkedin/android/litr/a;)V

    .line 322
    iget-object p2, p0, Lcom/linkedin/android/litr/b;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 324
    iget-object p3, p0, Lcom/linkedin/android/litr/b;->a:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 291
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Request with id "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
