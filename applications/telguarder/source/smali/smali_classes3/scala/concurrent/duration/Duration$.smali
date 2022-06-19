.class public final Lscala/concurrent/duration/Duration$;
.super Ljava/lang/Object;
.source "Duration.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/Duration$;


# instance fields
.field private final Inf:Lscala/concurrent/duration/Duration$Infinite;

.field private final MinusInf:Lscala/concurrent/duration/Duration$Infinite;

.field private final Undefined:Lscala/concurrent/duration/Duration$Infinite;

.field private final Zero:Lscala/concurrent/duration/FiniteDuration;

.field private final d_per_ns:J

.field private final h_per_ns:J

.field private final maxPreciseDouble:D

.field private final min_per_ns:J

.field private final ms_per_ns:J

.field private final s_per_ns:J

.field private final timeUnit:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUnitLabels:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final timeUnitName:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final µs_per_ns:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/Duration$;

    invoke-direct {v0}, Lscala/concurrent/duration/Duration$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    .line 78
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x7

    new-array v2, v2, [Lscala/Tuple2;

    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 79
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-string v5, "d day"

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 78
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 80
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-string v5, "h hour"

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v2, v3

    .line 78
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 81
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-string v5, "min minute"

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 78
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 82
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-string v5, "s sec second"

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v4, v2, v3

    .line 78
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 83
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-string v5, "ms milli millisecond"

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v4, v2, v3

    .line 78
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 84
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-string v5, "\u00b5s micro microsecond"

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v4, v2, v3

    .line 78
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 85
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-string v5, "ns nano nanosecond"

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v4, v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 78
    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v0

    iput-object v0, p0, Lscala/concurrent/duration/Duration$;->timeUnitLabels:Lscala/collection/immutable/List;

    .line 90
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v1

    new-instance v2, Lscala/concurrent/duration/Duration$$anonfun$3;

    invoke-direct {v2}, Lscala/concurrent/duration/Duration$$anonfun$3;-><init>()V

    invoke-interface {v1, v2}, Lscala/collection/immutable/Map;->mapValues(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/immutable/Map;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v1

    .line 89
    iput-object v1, p0, Lscala/concurrent/duration/Duration$;->timeUnitName:Lscala/collection/immutable/Map;

    .line 94
    new-instance v1, Lscala/concurrent/duration/Duration$$anonfun$4;

    invoke-direct {v1}, Lscala/concurrent/duration/Duration$$anonfun$4;-><init>()V

    sget-object v2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v2}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/List;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/TraversableOnce;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v0

    .line 93
    iput-object v0, p0, Lscala/concurrent/duration/Duration$;->timeUnit:Lscala/collection/immutable/Map;

    .line 161
    new-instance v0, Lscala/concurrent/duration/FiniteDuration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lscala/concurrent/duration/FiniteDuration;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lscala/concurrent/duration/Duration$;->Zero:Lscala/concurrent/duration/FiniteDuration;

    .line 174
    new-instance v0, Lscala/concurrent/duration/Duration$$anon$1;

    invoke-direct {v0}, Lscala/concurrent/duration/Duration$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/concurrent/duration/Duration$;->Undefined:Lscala/concurrent/duration/Duration$Infinite;

    .line 234
    new-instance v0, Lscala/concurrent/duration/Duration$$anon$2;

    invoke-direct {v0}, Lscala/concurrent/duration/Duration$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/concurrent/duration/Duration$;->Inf:Lscala/concurrent/duration/Duration$Infinite;

    .line 251
    new-instance v0, Lscala/concurrent/duration/Duration$$anon$3;

    invoke-direct {v0}, Lscala/concurrent/duration/Duration$$anon$3;-><init>()V

    iput-object v0, p0, Lscala/concurrent/duration/Duration$;->MinusInf:Lscala/concurrent/duration/Duration$Infinite;

    return-void
.end method

.method private final liftedTree1$1(Ljava/lang/String;)Lscala/Option;
    .locals 1

    .line 101
    :try_start_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$;->apply(Ljava/lang/String;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    return-object v0
.end method


# virtual methods
.method public Inf()Lscala/concurrent/duration/Duration$Infinite;
    .locals 1

    .line 234
    iget-object v0, p0, Lscala/concurrent/duration/Duration$;->Inf:Lscala/concurrent/duration/Duration$Infinite;

    return-object v0
.end method

.method public MinusInf()Lscala/concurrent/duration/Duration$Infinite;
    .locals 1

    .line 251
    iget-object v0, p0, Lscala/concurrent/duration/Duration$;->MinusInf:Lscala/concurrent/duration/Duration$Infinite;

    return-object v0
.end method

.method public Undefined()Lscala/concurrent/duration/Duration$Infinite;
    .locals 1

    .line 174
    iget-object v0, p0, Lscala/concurrent/duration/Duration$;->Undefined:Lscala/concurrent/duration/Duration$Infinite;

    return-object v0
.end method

.method public Zero()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 161
    iget-object v0, p0, Lscala/concurrent/duration/Duration$;->Zero:Lscala/concurrent/duration/FiniteDuration;

    return-object v0
.end method

.method public apply(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;
    .locals 2

    const-wide/16 v0, 0x1

    .line 27
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double v0, v0, p1

    invoke-virtual {p0, v0, v1}, Lscala/concurrent/duration/Duration$;->fromNanos(D)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Lscala/concurrent/duration/Duration;
    .locals 6

    .line 55
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    new-instance v1, Lscala/concurrent/duration/Duration$$anonfun$1;

    invoke-direct {v1}, Lscala/concurrent/duration/Duration$$anonfun$1;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/StringOps;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Inf"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const-string v1, "PlusInf"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "+Inf"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$;->Inf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto/16 :goto_4

    :cond_3
    const-string v1, "MinusInf"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const-string v1, "-Inf"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$;->MinusInf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_4

    .line 60
    :cond_6
    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v3, v0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->reverse()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    new-instance v3, Lscala/concurrent/duration/Duration$$anonfun$2;

    invoke-direct {v3}, Lscala/concurrent/duration/Duration$$anonfun$2;-><init>()V

    invoke-virtual {v2, v3}, Lscala/collection/immutable/StringOps;->takeWhile(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lscala/collection/immutable/StringOps;->reverse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$;->timeUnit()Lscala/collection/immutable/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Lscala/collection/immutable/Map;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v2

    .line 62
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_8

    check-cast v2, Lscala/Some;

    .line 63
    new-instance p1, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p1, v0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/collection/immutable/StringOps;->dropRight(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v3, -0x3cc0000000000000L    # -9.007199254740992E15

    cmpl-double v5, v0, v3

    if-ltz v5, :cond_7

    const-wide/high16 v3, 0x4340000000000000L    # 9.007199254740992E15

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_7

    .line 65
    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lscala/concurrent/duration/Duration$;->apply(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    goto :goto_4

    .line 66
    :cond_7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    :goto_4
    return-object p1

    .line 67
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "format error "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public apply(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;
    .locals 2

    .line 42
    new-instance v0, Lscala/concurrent/duration/FiniteDuration;

    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$;->timeUnit()Lscala/collection/immutable/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Lscala/collection/immutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, p2, p3}, Lscala/concurrent/duration/FiniteDuration;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 33
    new-instance v0, Lscala/concurrent/duration/FiniteDuration;

    invoke-direct {v0, p1, p2, p3}, Lscala/concurrent/duration/FiniteDuration;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public create(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;
    .locals 0

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lscala/concurrent/duration/Duration$;->apply(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;)Lscala/concurrent/duration/Duration;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$;->apply(Ljava/lang/String;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public create(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 284
    invoke-virtual {p0, p1, p2, p3}, Lscala/concurrent/duration/Duration$;->apply(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public create(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public fromNanos(D)Lscala/concurrent/duration/Duration;
    .locals 3

    .line 123
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1, p2}, Lscala/Predef$;->double2Double(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$;->Inf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$;->MinusInf()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1, p2}, Lscala/Predef$;->double2Double(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    long-to-double v0, v0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    long-to-double v0, v0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-long p1, p1

    .line 130
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/duration/Duration$;->fromNanos(J)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    :goto_0
    return-object p1

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "trying to construct too large duration with "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string p2, "ns"

    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fromNanos(J)Lscala/concurrent/duration/FiniteDuration;
    .locals 7

    const-wide v0, 0x4e94914f0000L

    .line 148
    rem-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    div-long/2addr p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide v0, 0x34630b8a000L

    .line 149
    rem-long v2, p1, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    div-long/2addr p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide v0, 0xdf8475800L

    .line 150
    rem-long v2, p1, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    div-long/2addr p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x3b9aca00

    .line 151
    rem-long v2, p1, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    div-long/2addr p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0xf4240

    .line 152
    rem-long v2, p1, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    div-long/2addr p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x3e8

    .line 153
    rem-long v2, p1, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    div-long/2addr p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    goto :goto_0

    .line 154
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public scala$concurrent$duration$Duration$$expandLabels(Ljava/lang/String;)Lscala/collection/immutable/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$;->scala$concurrent$duration$Duration$$words(Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object p1

    instance-of v0, p1, Lscala/collection/immutable/$colon$colon;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/$colon$colon;

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    .line 76
    new-instance v1, Lscala/concurrent/duration/Duration$$anonfun$scala$concurrent$duration$Duration$$expandLabels$1;

    invoke-direct {v1}, Lscala/concurrent/duration/Duration$$anonfun$scala$concurrent$duration$Duration$$expandLabels$1;-><init>()V

    sget-object v2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v2}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/List;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public scala$concurrent$duration$Duration$$words(Ljava/lang/String;)Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/mutable/ArrayOps;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public timeUnit()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lscala/concurrent/duration/Duration$;->timeUnit:Lscala/collection/immutable/Map;

    return-object v0
.end method

.method public timeUnitName()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lscala/concurrent/duration/Duration$;->timeUnitName:Lscala/collection/immutable/Map;

    return-object v0
.end method

.method public unapply(Ljava/lang/String;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;>;"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lscala/concurrent/duration/Duration$;->liftedTree1$1(Ljava/lang/String;)Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/concurrent/duration/Duration;

    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p1}, Lscala/concurrent/duration/Duration$;->unapply(Lscala/concurrent/duration/Duration;)Lscala/Option;

    move-result-object p1

    check-cast p1, Lscala/Option;

    :goto_0
    return-object p1
.end method

.method public unapply(Lscala/concurrent/duration/Duration;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Duration;",
            ")",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;>;"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lscala/concurrent/duration/Duration;->isFinite()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method
