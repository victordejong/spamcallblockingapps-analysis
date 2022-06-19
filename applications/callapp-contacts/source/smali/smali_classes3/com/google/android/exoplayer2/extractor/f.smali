.class public final Lcom/google/android/exoplayer2/extractor/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


# static fields
.field private static final b:[I

.field private static final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f;->b:[I

    const/4 v0, 0x0

    .line 108
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 110
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAvailable"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 115
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer2/extractor/h;

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :catch_1
    :cond_0
    :goto_0
    sput-object v0, Lcom/google/android/exoplayer2/extractor/f;->c:Ljava/lang/reflect/Constructor;

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 142
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f;->l:I

    const v0, 0x1b8a0

    .line 143
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f;->n:I

    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/h;",
            ">;)V"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 391
    :pswitch_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/c/a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/c/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 388
    :pswitch_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/i/a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/i/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 385
    :pswitch_3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/ac;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->l:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f;->m:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f;->n:I

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/h/ac;-><init>(III)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 382
    :pswitch_4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/w;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/h/w;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 379
    :pswitch_5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g/c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g/c;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 375
    :pswitch_6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/f/e;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->j:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance p1, Lcom/google/android/exoplayer2/extractor/f/g;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->i:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/f/g;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 367
    :pswitch_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/e/d;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->k:I

    .line 370
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f;->d:Z

    or-int/2addr v0, v1

    .line 372
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/e/d;-><init>(I)V

    .line 367
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 364
    :pswitch_8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/d/d;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->h:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/d/d;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 361
    :pswitch_9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 349
    :pswitch_a
    sget-object p1, Lcom/google/android/exoplayer2/extractor/f;->c:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 351
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/f;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 354
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected error creating FLAC extractor"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 357
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/b/b;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->g:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/b/b;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 341
    :pswitch_b
    new-instance p1, Lcom/google/android/exoplayer2/extractor/a/a;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->f:I

    .line 344
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f;->d:Z

    or-int/2addr v0, v1

    .line 346
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/a/a;-><init>(I)V

    .line 341
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 333
    :pswitch_c
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/e;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f;->e:I

    .line 336
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/f;->d:Z

    or-int/2addr v0, v1

    .line 338
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/e;-><init>(I)V

    .line 333
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 330
    :pswitch_d
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/h/c;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 327
    :pswitch_e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/h/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/h;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/h;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 301
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "Content-Type"

    move-object/from16 v4, p2

    .line 1114
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1116
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v16, 0x5

    const/4 v2, -0x1

    const/16 v17, 0x4

    if-eqz v3, :cond_3

    .line 1130
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/q;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1131
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "video/x-matroska"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x9

    goto/16 :goto_3

    :sswitch_1
    const-string v4, "audio/webm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v4, "audio/mpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xe

    goto/16 :goto_3

    :sswitch_3
    const-string v4, "audio/flac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    goto/16 :goto_3

    :sswitch_4
    const-string v4, "audio/eac3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_3

    :sswitch_5
    const-string v4, "audio/3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto/16 :goto_3

    :sswitch_6
    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xf

    goto/16 :goto_3

    :sswitch_7
    const-string v4, "audio/wav"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x15

    goto/16 :goto_3

    :sswitch_8
    const-string v4, "audio/ogg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x12

    goto/16 :goto_3

    :sswitch_9
    const-string v4, "audio/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x10

    goto/16 :goto_3

    :sswitch_a
    const-string v4, "audio/amr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto/16 :goto_3

    :sswitch_b
    const-string v4, "audio/ac4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto/16 :goto_3

    :sswitch_c
    const-string v4, "audio/ac3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_3

    :sswitch_d
    const-string v4, "video/x-flv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    goto/16 :goto_3

    :sswitch_e
    const-string v4, "application/webm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xd

    goto/16 :goto_3

    :sswitch_f
    const-string v4, "audio/x-matroska"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    goto :goto_3

    :sswitch_10
    const-string v4, "text/vtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x16

    goto :goto_3

    :sswitch_11
    const-string v4, "application/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x11

    goto :goto_3

    :sswitch_12
    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x17

    goto :goto_3

    :sswitch_13
    const-string v4, "audio/amr-wb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    goto :goto_3

    :sswitch_14
    const-string v4, "video/webm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xb

    goto :goto_3

    :sswitch_15
    const-string v4, "video/mp2t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x14

    goto :goto_3

    :sswitch_16
    const-string v4, "video/mp2p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x13

    goto :goto_3

    :sswitch_17
    const-string v4, "audio/eac3-joc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/16 v3, 0xe

    goto :goto_5

    :pswitch_1
    const/16 v3, 0xd

    goto :goto_5

    :pswitch_2
    const/16 v3, 0xc

    goto :goto_5

    :pswitch_3
    const/16 v3, 0xb

    goto :goto_5

    :pswitch_4
    const/16 v3, 0xa

    goto :goto_5

    :pswitch_5
    const/16 v3, 0x9

    goto :goto_5

    :pswitch_6
    const/16 v3, 0x8

    goto :goto_5

    :pswitch_7
    const/4 v3, 0x7

    goto :goto_5

    :pswitch_8
    const/4 v3, 0x6

    goto :goto_5

    :pswitch_9
    const/4 v3, 0x5

    goto :goto_5

    :pswitch_a
    const/4 v3, 0x4

    goto :goto_5

    :pswitch_b
    const/4 v3, 0x3

    goto :goto_5

    :pswitch_c
    const/4 v3, 0x1

    goto :goto_5

    :pswitch_d
    const/4 v3, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v3, -0x1

    :goto_5
    if-eq v3, v2, :cond_4

    .line 306
    invoke-direct {v1, v3, v0}, Lcom/google/android/exoplayer2/extractor/f;->a(ILjava/util/List;)V

    .line 1178
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c

    const-string v5, ".ac3"

    .line 1181
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, ".ec3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_d

    :cond_5
    const-string v5, ".ac4"

    .line 1183
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v6, 0x1

    goto/16 :goto_e

    :cond_6
    const-string v5, ".adts"

    .line 1185
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, ".aac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_c

    :cond_7
    const-string v5, ".amr"

    .line 1187
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v6, 0x3

    goto/16 :goto_e

    :cond_8
    const-string v5, ".flac"

    .line 1189
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v6, 0x4

    goto/16 :goto_e

    :cond_9
    const-string v5, ".flv"

    .line 1191
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v6, 0x5

    goto/16 :goto_e

    :cond_a
    const-string v5, ".mk"

    .line 1195
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    .line 1193
    invoke-virtual {v4, v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, ".webm"

    .line 1196
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto/16 :goto_b

    :cond_b
    const-string v5, ".mp3"

    .line 1198
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v6, 0x7

    goto/16 :goto_e

    :cond_c
    const-string v5, ".mp4"

    .line 1200
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, ".m4"

    .line 1203
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    .line 1201
    invoke-virtual {v4, v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, ".mp4"

    .line 1206
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x5

    .line 1204
    invoke-virtual {v4, v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, ".cmf"

    .line 1209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x5

    .line 1207
    invoke-virtual {v4, v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_a

    :cond_d
    const-string v5, ".og"

    .line 1213
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    .line 1211
    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, ".opus"

    .line 1214
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto/16 :goto_9

    :cond_e
    const-string v5, ".ps"

    .line 1216
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, ".mpeg"

    .line 1217
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, ".mpg"

    .line 1218
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, ".m2p"

    .line 1219
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    const-string v5, ".ts"

    .line 1221
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, ".ts"

    .line 1224
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    .line 1222
    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_7

    :cond_10
    const-string v5, ".wav"

    .line 1226
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, ".wave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_6

    :cond_11
    const-string v5, ".vtt"

    .line 1228
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, ".webvtt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_e

    :cond_12
    const-string v5, ".jpg"

    .line 1230
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_13
    const/16 v6, 0xe

    goto :goto_e

    :cond_14
    :goto_6
    const/16 v6, 0xc

    goto :goto_e

    :cond_15
    :goto_7
    const/16 v6, 0xb

    goto :goto_e

    :cond_16
    :goto_8
    const/16 v6, 0xa

    goto :goto_e

    :cond_17
    :goto_9
    const/16 v6, 0x9

    goto :goto_e

    :cond_18
    :goto_a
    const/16 v6, 0x8

    goto :goto_e

    :cond_19
    :goto_b
    const/4 v6, 0x6

    goto :goto_e

    :cond_1a
    :goto_c
    const/4 v6, 0x2

    goto :goto_e

    :cond_1b
    :goto_d
    const/4 v6, 0x0

    goto :goto_e

    :cond_1c
    const/4 v6, -0x1

    :cond_1d
    :goto_e
    if-eq v6, v2, :cond_1e

    if-eq v6, v3, :cond_1e

    .line 312
    invoke-direct {v1, v6, v0}, Lcom/google/android/exoplayer2/extractor/f;->a(ILjava/util/List;)V

    .line 315
    :cond_1e
    sget-object v2, Lcom/google/android/exoplayer2/extractor/f;->b:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_20

    aget v7, v2, v5

    if-eq v7, v3, :cond_1f

    if-eq v7, v6, :cond_1f

    .line 317
    invoke-direct {v1, v7, v0}, Lcom/google/android/exoplayer2/extractor/f;->a(ILjava/util/List;)V

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 321
    :cond_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_17
        -0x6315f78b -> :sswitch_16
        -0x6315f787 -> :sswitch_15
        -0x63118f53 -> :sswitch_14
        -0x5fc6f775 -> :sswitch_13
        -0x58a7d764 -> :sswitch_12
        -0x4a681e4e -> :sswitch_11
        -0x3be2f26c -> :sswitch_10
        -0x17118226 -> :sswitch_f
        -0x2974308 -> :sswitch_e
        0xd45707 -> :sswitch_d
        0xb269698 -> :sswitch_c
        0xb269699 -> :sswitch_b
        0xb26980d -> :sswitch_a
        0xb26c538 -> :sswitch_9
        0xb26cbd6 -> :sswitch_8
        0xb26e933 -> :sswitch_7
        0x4f62635d -> :sswitch_6
        0x59976a2d -> :sswitch_5
        0x59ae0c65 -> :sswitch_4
        0x59aeaa01 -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 2

    monitor-enter p0

    .line 295
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/f;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
