.class public final Lscala/collection/mutable/LongMap$;
.super Ljava/lang/Object;
.source "LongMap.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/mutable/LongMap$;


# instance fields
.field private final IndexMask:I

.field private final MissVacant:I

.field private final MissingBit:I

.field private final VacantBit:I

.field private final scala$collection$mutable$LongMap$$exceptionDefault:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/LongMap$;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    .line 496
    new-instance v0, Lscala/collection/mutable/LongMap$$anonfun$1;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap$$anonfun$1;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/LongMap$;->scala$collection$mutable$LongMap$$exceptionDefault:Lscala/Function1;

    return-void
.end method

.method private final IndexMask()I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    return v0
.end method

.method private final MissVacant()I
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    return v0
.end method

.method private final MissingBit()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method private final VacantBit()I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 490
    sget-object v0, Lscala/collection/mutable/LongMap$;->MODULE$:Lscala/collection/mutable/LongMap$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/mutable/LongMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;>;)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 516
    invoke-interface {p1}, Lscala/collection/Seq;->hasDefiniteSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/Seq;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 517
    :goto_0
    new-instance v1, Lscala/collection/mutable/LongMap;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Lscala/collection/mutable/LongMap;-><init>(I)V

    .line 518
    new-instance v2, Lscala/collection/mutable/LongMap$$anonfun$apply$1;

    invoke-direct {v2, v1}, Lscala/collection/mutable/LongMap$$anonfun$apply$1;-><init>(Lscala/collection/mutable/LongMap;)V

    invoke-interface {p1, v2}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 519
    invoke-virtual {v1}, Lscala/collection/mutable/LongMap;->size()I

    move-result p1

    shr-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_1

    invoke-virtual {v1}, Lscala/collection/mutable/LongMap;->repack()V

    :cond_1
    return-object v1
.end method

.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TU;>;",
            "Lscala/collection/mutable/LongMap<",
            "TU;>;>;"
        }
    .end annotation

    .line 499
    new-instance v0, Lscala/collection/mutable/LongMap$$anon$2;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap$$anon$2;-><init>()V

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 524
    new-instance v0, Lscala/collection/mutable/LongMap;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap;-><init>()V

    return-object v0
.end method

.method public fromZip(Lscala/collection/mutable/Iterable;Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/LongMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/mutable/Iterable<",
            "TV;>;)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 545
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-interface {p1}, Lscala/collection/mutable/Iterable;->size()I

    move-result v1

    invoke-interface {p2}, Lscala/collection/mutable/Iterable;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->min(II)I

    move-result v0

    .line 546
    new-instance v1, Lscala/collection/mutable/LongMap;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Lscala/collection/mutable/LongMap;-><init>(I)V

    .line 547
    invoke-interface {p1}, Lscala/collection/mutable/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    .line 548
    invoke-interface {p2}, Lscala/collection/mutable/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p2

    .line 549
    :goto_0
    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-interface {p2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lscala/collection/mutable/LongMap;->update(JLjava/lang/Object;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {v1}, Lscala/collection/mutable/LongMap;->size()I

    move-result p1

    shr-int/lit8 p2, v0, 0x3

    if-ge p1, p2, :cond_1

    invoke-virtual {v1}, Lscala/collection/mutable/LongMap;->repack()V

    :cond_1
    return-object v1
.end method

.method public fromZip([JLjava/lang/Object;)Lscala/collection/mutable/LongMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([J",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 533
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    array-length v1, p1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p2}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->min(II)I

    move-result v0

    .line 534
    new-instance v1, Lscala/collection/mutable/LongMap;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Lscala/collection/mutable/LongMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 536
    aget-wide v3, p1, v2

    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v5, p2, v2}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lscala/collection/mutable/LongMap;->update(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {v1}, Lscala/collection/mutable/LongMap;->size()I

    move-result p1

    shr-int/lit8 p2, v0, 0x3

    if-ge p1, p2, :cond_1

    invoke-virtual {v1}, Lscala/collection/mutable/LongMap;->repack()V

    :cond_1
    return-object v1
.end method

.method public scala$collection$mutable$LongMap$$exceptionDefault()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lscala/collection/mutable/LongMap$;->scala$collection$mutable$LongMap$$exceptionDefault:Lscala/Function1;

    return-object v0
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/mutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TV;>;)",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 527
    new-instance v0, Lscala/collection/mutable/LongMap;

    invoke-direct {v0, p1}, Lscala/collection/mutable/LongMap;-><init>(Lscala/Function1;)V

    return-object v0
.end method
