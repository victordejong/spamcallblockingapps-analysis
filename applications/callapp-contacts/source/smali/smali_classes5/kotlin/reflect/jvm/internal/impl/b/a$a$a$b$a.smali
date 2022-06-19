.class public final Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/b;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

.field private d:J

.field private e:F

.field private f:D

.field private g:I

.field private h:I

.field private i:I

.field private j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3012
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 3200
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;->BYTE:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    .line 3467
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 3527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    return-void
.end method

.method private a(D)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3340
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3341
    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->f:D

    return-object p0
.end method

.method private a(F)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3308
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3309
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->e:F

    return-object p0
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3372
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3373
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->g:I

    return-object p0
.end method

.method private a(J)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3276
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3277
    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->d:J

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3236
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3238
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3239
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 3

    .line 3506
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3508
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    goto :goto_0

    .line 3511
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 3514
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3416
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3417
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->h:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3452
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3453
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->i:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3187
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3193
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 3189
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3190
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 3193
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    :cond_0
    throw p1
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3705
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3706
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->l:I

    return-object p0
.end method

.method private e(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 3761
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3762
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->m:I

    return-object p0
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 9019
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 2

    .line 4019
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;-><init>()V

    .line 3050
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 3530
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 3531
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    .line 3532
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 2

    .line 3119
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3120
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4593
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    .line 3121
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3123
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4608
    iget-wide v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    .line 3124
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(J)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3126
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4623
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d:F

    .line 3127
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(F)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3129
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4638
    iget-wide v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e:D

    .line 3130
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(D)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3132
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4653
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f:I

    .line 3133
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3135
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4676
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    .line 3136
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3138
    :cond_6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4691
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->h:I

    .line 3139
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3141
    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4706
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 3142
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3144
    :cond_8
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3145
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3146
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    .line 3147
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    goto :goto_0

    .line 3149
    :cond_9
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->i()V

    .line 3150
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3154
    :cond_a
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4780
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k:I

    .line 3155
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->d(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 3157
    :cond_b
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4803
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l:I

    .line 3158
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->e(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 5123
    :cond_c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 3160
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 5127
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3005
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 3005
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 7054
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 3005
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3005
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 3005
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3005
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 7058
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v0

    .line 7059
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7060
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 5472
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5478
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 3167
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    .line 5546
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5552
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 3173
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e()Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
    .locals 6

    .line 3066
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 3067
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3072
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3076
    :cond_1
    iget-wide v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->d:J

    invoke-static {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;J)J

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3080
    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->e:F

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;F)F

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 3084
    :cond_3
    iget-wide v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->f:D

    invoke-static {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;D)D

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 3088
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->g:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 3092
    :cond_5
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->h:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 3096
    :cond_6
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->i:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 3100
    :cond_7
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->j:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 3101
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 3102
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    .line 3103
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->b:I

    .line 3105
    :cond_8
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->k:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 3109
    :cond_9
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->l:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 3113
    :cond_a
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->m:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I

    .line 3114
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 8054
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v0

    return-object v0
.end method
