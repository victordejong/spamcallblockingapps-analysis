.class public final Lscala/collection/parallel/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/package$;


# instance fields
.field private final CHECK_RATE:I

.field private final MIN_FOR_COPY:I

.field private final SQRT2:D

.field private final availableProcessors:I

.field private final defaultTaskSupport:Lscala/collection/parallel/TaskSupport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/package$;

    invoke-direct {v0}, Lscala/collection/parallel/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    const/16 v0, 0x200

    .line 23
    iput v0, p0, Lscala/collection/parallel/package$;->MIN_FOR_COPY:I

    .line 24
    iput v0, p0, Lscala/collection/parallel/package$;->CHECK_RATE:I

    .line 25
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lscala/collection/parallel/package$;->SQRT2:D

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lscala/collection/parallel/package$;->availableProcessors:I

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/package$;->getTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/parallel/package$;->defaultTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method


# virtual methods
.method public CHECK_RATE()I
    .locals 1

    .line 24
    iget v0, p0, Lscala/collection/parallel/package$;->CHECK_RATE:I

    return v0
.end method

.method public CollectionsHaveToParArray(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/parallel/package$CollectionsHaveToParArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableOnce<",
            "TT;>;>;)",
            "Lscala/collection/parallel/package$CollectionsHaveToParArray<",
            "TC;TT;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lscala/collection/parallel/package$CollectionsHaveToParArray;

    invoke-direct {v0, p1, p2}, Lscala/collection/parallel/package$CollectionsHaveToParArray;-><init>(Ljava/lang/Object;Lscala/Function1;)V

    return-object v0
.end method

.method public MIN_FOR_COPY()I
    .locals 1

    .line 23
    iget v0, p0, Lscala/collection/parallel/package$;->MIN_FOR_COPY:I

    return v0
.end method

.method public SQRT2()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lscala/collection/parallel/package$;->SQRT2:D

    return-wide v0
.end method

.method public availableProcessors()I
    .locals 1

    .line 26
    iget v0, p0, Lscala/collection/parallel/package$;->availableProcessors:I

    return v0
.end method

.method public defaultTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 46
    iget-object v0, p0, Lscala/collection/parallel/package$;->defaultTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public getTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 2

    .line 44
    new-instance v0, Lscala/collection/parallel/ExecutionContextTaskSupport;

    sget-object v1, Lscala/collection/parallel/ExecutionContextTaskSupport$;->MODULE$:Lscala/collection/parallel/ExecutionContextTaskSupport$;

    invoke-virtual {v1}, Lscala/collection/parallel/ExecutionContextTaskSupport$;->$lessinit$greater$default$1()Lscala/concurrent/ExecutionContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/parallel/ExecutionContextTaskSupport;-><init>(Lscala/concurrent/ExecutionContext;)V

    return-object v0
.end method

.method public outofbounds(I)Lscala/runtime/Nothing$;
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Coll:",
            "Ljava/lang/Object;",
            ">(TColl;",
            "Lscala/collection/parallel/TaskSupport;",
            ")TColl;"
        }
    .end annotation

    .line 49
    instance-of v0, p1, Lscala/collection/parallel/ParIterableLike;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v0, p2}, Lscala/collection/parallel/ParIterableLike;->tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 51
    :cond_0
    sget-object p2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1
.end method

.method public thresholdFromSize(II)I
    .locals 1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    mul-int/lit8 p2, p2, 0x8

    .line 33
    div-int/2addr p1, p2

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public unsupported()Lscala/runtime/Nothing$;
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unsupportedop(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
