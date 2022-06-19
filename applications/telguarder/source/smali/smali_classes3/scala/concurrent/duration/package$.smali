.class public final Lscala/concurrent/duration/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/package$;


# instance fields
.field private final DAYS:Ljava/util/concurrent/TimeUnit;

.field private final HOURS:Ljava/util/concurrent/TimeUnit;

.field private final MICROSECONDS:Ljava/util/concurrent/TimeUnit;

.field private final MILLISECONDS:Ljava/util/concurrent/TimeUnit;

.field private final MINUTES:Ljava/util/concurrent/TimeUnit;

.field private final NANOSECONDS:Ljava/util/concurrent/TimeUnit;

.field private final SECONDS:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/package$;

    invoke-direct {v0}, Lscala/concurrent/duration/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/package$;->MODULE$:Lscala/concurrent/duration/package$;

    return-void
.end method


# virtual methods
.method public final DAYS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public DoubleMult(D)D
    .locals 0

    return-wide p1
.end method

.method public DurationDouble(D)D
    .locals 0

    return-wide p1
.end method

.method public DurationInt(I)I
    .locals 0

    return p1
.end method

.method public DurationLong(J)J
    .locals 0

    return-wide p1
.end method

.method public final HOURS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public IntMult(I)I
    .locals 0

    return p1
.end method

.method public LongMult(J)J
    .locals 0

    return-wide p1
.end method

.method public final MICROSECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public final MILLISECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public final MINUTES()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public final NANOSECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public final SECONDS()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public durationToPair(Lscala/concurrent/duration/Duration;)Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Duration;",
            ")",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration;->unit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public pairIntToDuration(Lscala/Tuple2;)Lscala/concurrent/duration/Duration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;)",
            "Lscala/concurrent/duration/Duration;"
        }
    .end annotation

    .line 39
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public pairLongToDuration(Lscala/Tuple2;)Lscala/concurrent/duration/FiniteDuration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;)",
            "Lscala/concurrent/duration/FiniteDuration;"
        }
    .end annotation

    .line 40
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method
