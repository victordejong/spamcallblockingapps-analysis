.class final Lkotlin/reflect/jvm/internal/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Lkotlin/reflect/jvm/internal/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:J

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/reflect/jvm/internal/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/reflect/jvm/internal/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lkotlin/reflect/jvm/internal/b/c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/b/c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/b/c;->a:Lkotlin/reflect/jvm/internal/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lkotlin/reflect/jvm/internal/b/c;->f:I

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    .line 60
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    return-void
.end method

.method private constructor <init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    .line 65
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    .line 66
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    .line 67
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    .line 68
    iget p1, p4, Lkotlin/reflect/jvm/internal/b/c;->f:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p5, Lkotlin/reflect/jvm/internal/b/c;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lkotlin/reflect/jvm/internal/b/c;->f:I

    return-void
.end method

.method private static a(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)Lkotlin/reflect/jvm/internal/b/c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(JTV;",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;)",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;"
        }
    .end annotation

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    .line 222
    iget v0, v4, Lkotlin/reflect/jvm/internal/b/c;->f:I

    iget v1, v6, Lkotlin/reflect/jvm/internal/b/c;->f:I

    add-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    mul-int/lit8 v2, v1, 0x5

    if-lt v0, v2, :cond_1

    .line 224
    iget-object v11, v4, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    iget-object v0, v4, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    .line 225
    iget v1, v0, Lkotlin/reflect/jvm/internal/b/c;->f:I

    iget v2, v11, Lkotlin/reflect/jvm/internal/b/c;->f:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 226
    new-instance v9, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v1, v4, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long v7, v1, p0

    iget-object v10, v4, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    new-instance v12, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v1, v4, Lkotlin/reflect/jvm/internal/b/c;->b:J

    neg-long v3, v1

    iget-wide v13, v0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v13, v1

    invoke-direct {v0, v13, v14}, Lkotlin/reflect/jvm/internal/b/c;->b(J)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object v5

    move-object v0, v12

    move-wide v1, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    move-object v3, v9

    move-wide v4, v7

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v9

    .line 232
    :cond_0
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    .line 233
    new-instance v13, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v7, v0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    iget-wide v9, v4, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v7, v9

    add-long v14, v7, p0

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    new-instance v16, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v7, v0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    neg-long v9, v7

    iget-object v3, v4, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    move-object/from16 p0, v5

    iget-wide v5, v1, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v5, v7

    invoke-direct {v1, v5, v6}, Lkotlin/reflect/jvm/internal/b/c;->b(J)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object v12

    move-object/from16 v7, v16

    move-wide v8, v9

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v3, v4, Lkotlin/reflect/jvm/internal/b/c;->b:J

    neg-long v5, v3

    iget-wide v0, v0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    sub-long/2addr v5, v0

    iget-wide v9, v2, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v9, v0

    add-long/2addr v9, v3

    invoke-direct {v2, v9, v10}, Lkotlin/reflect/jvm/internal/b/c;->b(J)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object v4

    move-object v0, v8

    move-wide v1, v5

    move-object/from16 v3, p2

    move-object/from16 v6, p0

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    move-object v3, v13

    move-wide v4, v14

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v13

    :cond_1
    mul-int/lit8 v0, v0, 0x5

    move-object/from16 v6, p4

    if-lt v1, v0, :cond_3

    .line 242
    iget-object v7, v6, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    iget-object v8, v6, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    .line 243
    iget v0, v7, Lkotlin/reflect/jvm/internal/b/c;->f:I

    iget v1, v8, Lkotlin/reflect/jvm/internal/b/c;->f:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 244
    new-instance v9, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v0, v6, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long v10, v0, p0

    iget-object v12, v6, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    new-instance v13, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v0, v6, Lkotlin/reflect/jvm/internal/b/c;->b:J

    neg-long v2, v0

    iget-wide v5, v7, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v5, v0

    invoke-direct {v7, v5, v6}, Lkotlin/reflect/jvm/internal/b/c;->b(J)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object v5

    move-object v0, v13

    move-wide v1, v2

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    move-object v0, v9

    move-wide v1, v10

    move-object v3, v12

    move-object v4, v13

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v9

    .line 250
    :cond_2
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    iget-object v9, v7, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    .line 251
    new-instance v10, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v1, v7, Lkotlin/reflect/jvm/internal/b/c;->b:J

    iget-wide v11, v6, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v1, v11

    add-long v11, v1, p0

    iget-object v13, v7, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    new-instance v14, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v1, v6, Lkotlin/reflect/jvm/internal/b/c;->b:J

    neg-long v3, v1

    move-wide/from16 p0, v11

    iget-wide v11, v7, Lkotlin/reflect/jvm/internal/b/c;->b:J

    sub-long/2addr v3, v11

    move-object v15, v8

    move-object/from16 v16, v9

    iget-wide v8, v0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v8, v11

    add-long/2addr v8, v1

    invoke-direct {v0, v8, v9}, Lkotlin/reflect/jvm/internal/b/c;->b(J)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object v5

    move-object v0, v14

    move-wide v1, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/b/c;

    iget-wide v0, v7, Lkotlin/reflect/jvm/internal/b/c;->b:J

    neg-long v2, v0

    iget-object v4, v6, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    move-object/from16 v5, v16

    iget-wide v6, v5, Lkotlin/reflect/jvm/internal/b/c;->b:J

    add-long/2addr v6, v0

    invoke-direct {v5, v6, v7}, Lkotlin/reflect/jvm/internal/b/c;->b(J)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object v5

    move-object v0, v8

    move-wide v1, v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    move-object v1, v10

    move-wide/from16 v2, p0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v10

    .line 262
    :cond_3
    new-instance v7, Lkotlin/reflect/jvm/internal/b/c;

    move-object v0, v7

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v7
.end method

.method private a(Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)Lkotlin/reflect/jvm/internal/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;)",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    if-ne p2, v0, :cond_0

    return-object p0

    .line 214
    :cond_0
    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1, p2}, Lkotlin/reflect/jvm/internal/b/c;->a(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object p1

    return-object p1
.end method

.method private b(J)Lkotlin/reflect/jvm/internal/b/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;"
        }
    .end annotation

    .line 72
    iget v0, p0, Lkotlin/reflect/jvm/internal/b/c;->f:I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/b/c;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method final a(J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    move-object v0, p0

    .line 88
    :goto_0
    iget v1, v0, Lkotlin/reflect/jvm/internal/b/c;->f:I

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_0
    iget-wide v1, v0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 91
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    :goto_1
    sub-long/2addr p1, v1

    goto :goto_0

    :cond_1
    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    .line 93
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    goto :goto_1

    .line 95
    :cond_2
    iget-object p1, v0, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method final a(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/b/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;"
        }
    .end annotation

    .line 99
    iget v0, p0, Lkotlin/reflect/jvm/internal/b/c;->f:I

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lkotlin/reflect/jvm/internal/b/c;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v0

    .line 101
    :cond_0
    iget-wide v0, p0, Lkotlin/reflect/jvm/internal/b/c;->b:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 102
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2, p3}, Lkotlin/reflect/jvm/internal/b/c;->a(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object p1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/b/c;->a(Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 104
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    sub-long/2addr p1, v0

    invoke-virtual {v3, p1, p2, p3}, Lkotlin/reflect/jvm/internal/b/c;->a(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lkotlin/reflect/jvm/internal/b/c;->a(Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object p1

    return-object p1

    .line 106
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/c;->c:Ljava/lang/Object;

    if-ne p3, v0, :cond_3

    return-object p0

    .line 108
    :cond_3
    new-instance v0, Lkotlin/reflect/jvm/internal/b/c;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/b/c;->d:Lkotlin/reflect/jvm/internal/b/c;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/b/c;->e:Lkotlin/reflect/jvm/internal/b/c;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/b/c;-><init>(JLjava/lang/Object;Lkotlin/reflect/jvm/internal/b/c;Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v0
.end method
