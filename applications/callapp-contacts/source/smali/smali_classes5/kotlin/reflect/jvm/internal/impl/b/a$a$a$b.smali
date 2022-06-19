.class public final Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;


# instance fields
.field public b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

.field public c:J

.field public d:F

.field public e:D

.field public f:I

.field public g:I

.field public h:I

.field public i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field private final n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private o:I

.field private p:B

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2398
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 3784
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;-><init>(Z)V

    .line 3785
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->m:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->r()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2281
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 2819
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p:B

    .line 2880
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->q:I

    .line 2282
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->r()V

    .line 2284
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 2286
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-nez v3, :cond_6

    .line 2292
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 2298
    invoke-virtual {p0, p1, v2, p2, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    goto/16 :goto_2

    .line 2373
    :sswitch_0
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 10348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v6

    .line 2374
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k:I

    goto :goto_0

    .line 2368
    :sswitch_1
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 9348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v6

    .line 2369
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l:I

    goto :goto_0

    :sswitch_2
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v5, :cond_1

    .line 2361
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 2364
    :cond_1
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const/4 v6, 0x0

    .line 2348
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v8, 0x80

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_2

    .line 2349
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v6

    .line 2351
    :cond_2
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    if-eqz v6, :cond_3

    .line 2353
    invoke-virtual {v6, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    .line 2354
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v6

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 2356
    :cond_3
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/2addr v6, v8

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    goto :goto_0

    .line 2342
    :sswitch_4
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 8348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v6

    .line 2343
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->h:I

    goto :goto_0

    .line 2337
    :sswitch_5
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 7348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v6

    .line 2338
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    goto/16 :goto_0

    .line 2332
    :sswitch_6
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 6348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v6

    .line 2333
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f:I

    goto/16 :goto_0

    .line 2327
    :sswitch_7
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 6328
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 2328
    iput-wide v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e:D

    goto/16 :goto_0

    .line 2322
    :sswitch_8
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 5333
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 2323
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d:F

    goto/16 :goto_0

    .line 2317
    :sswitch_9
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 4590
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(J)J

    move-result-wide v6

    .line 2318
    iput-wide v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    goto/16 :goto_0

    .line 4570
    :sswitch_a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 2306
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    move-result-object v8

    if-nez v8, :cond_4

    .line 2308
    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 2309
    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto/16 :goto_0

    .line 2311
    :cond_4
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    or-int/2addr v6, v1

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    .line 2312
    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2382
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 12057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 2382
    throw p2

    :catch_1
    move-exception p1

    .line 11057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 2380
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v5, :cond_5

    .line 2386
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    .line 2389
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2393
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 2395
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->w()V

    throw p1

    :cond_6
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v5, :cond_7

    .line 2386
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    .line 2389
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2393
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 2395
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->w()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1d -> :sswitch_8
        0x21 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2257
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 2263
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 2819
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p:B

    .line 2880
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->q:I

    .line 4123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 2264
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 2257
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2266
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 2819
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p:B

    .line 2880
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->q:I

    .line 2266
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;D)D
    .locals 0

    .line 2257
    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e:D

    return-wide p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;F)F
    .locals 0

    .line 2257
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d:F

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I
    .locals 0

    .line 2257
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;J)J
    .locals 0

    .line 2257
    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    return-wide p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2257
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;
    .locals 1

    .line 16995
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    .line 2998
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;
    .locals 0

    .line 2257
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
    .locals 1

    .line 2270
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->m:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a;
    .locals 0

    .line 2257
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I
    .locals 0

    .line 2257
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Ljava/util/List;
    .locals 0

    .line 2257
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I
    .locals 0

    .line 2257
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->h:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 2257
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I
    .locals 0

    .line 2257
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k:I

    return p1
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I
    .locals 0

    .line 2257
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l:I

    return p1
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;I)I
    .locals 0

    .line 2257
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    return p1
.end method

.method private r()V
    .locals 2

    .line 2807
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;->BYTE:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    const-wide/16 v0, 0x0

    .line 2808
    iput-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    const/4 v0, 0x0

    .line 2809
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d:F

    const-wide/16 v0, 0x0

    .line 2810
    iput-wide v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e:D

    const/4 v0, 0x0

    .line 2811
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f:I

    .line 2812
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    .line 2813
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->h:I

    .line 2814
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 2815
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    .line 2816
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k:I

    .line 2817
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l:I

    return-void
.end method


# virtual methods
.method public final a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
    .locals 1

    .line 2734
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2843
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f()I

    .line 2844
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2845
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 2847
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 2848
    iget-wide v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    .line 13341
    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(II)V

    .line 13342
    invoke-virtual {p1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(J)V

    .line 2850
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v4, 0x5

    if-ne v0, v2, :cond_2

    .line 2851
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->d:F

    const/4 v5, 0x3

    .line 14177
    invoke-virtual {p1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(II)V

    .line 14178
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(F)V

    .line 2853
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v5, 0x8

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3

    .line 2854
    iget-wide v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e:D

    .line 15170
    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(II)V

    .line 15171
    invoke-virtual {p1, v6, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(D)V

    .line 2856
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 2857
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f:I

    invoke-virtual {p1, v4, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 2859
    :cond_4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 2860
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 2862
    :cond_5
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 2863
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->h:I

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 2865
    :cond_6
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 2866
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-virtual {p1, v5, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 2868
    :cond_7
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    const/16 v0, 0x9

    .line 2869
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2871
    :cond_8
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 2872
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l:I

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 2874
    :cond_9
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 2875
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k:I

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 2877
    :cond_a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;",
            ">;"
        }
    .end annotation

    .line 2410
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 2581
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 2602
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    .line 2821
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2825
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12706
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 2826
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2827
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 12728
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2832
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2833
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2837
    :cond_4
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->p:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 2882
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2886
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2887
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$b;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2890
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 2891
    iget-wide v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->c:J

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 2894
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 15536
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 2898
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 16528
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 2902
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 2903
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->f:I

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2906
    :cond_5
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    .line 2907
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->g:I

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2910
    :cond_6
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    .line 2911
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->h:I

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2914
    :cond_7
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 2915
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->i:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2918
    :cond_8
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    const/16 v1, 0x9

    .line 2919
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2922
    :cond_9
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 2923
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->l:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2926
    :cond_a
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 2927
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->k:I

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2930
    :cond_b
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->n:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 2931
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->q:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 2617
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 18995
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    .line 17998
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 19995
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 20274
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->m:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 2632
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 2647
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    .line 2666
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 2685
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 2

    .line 2700
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 2

    .line 2762
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 2

    .line 2793
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->o:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
