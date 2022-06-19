.class public final Lscala/concurrent/duration/FiniteDuration$;
.super Ljava/lang/Object;
.source "Duration.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/FiniteDuration$;


# instance fields
.field private final max_d:J

.field private final max_h:J

.field private final max_min:J

.field private final max_ms:J

.field private final max_ns:J

.field private final max_s:J

.field private final max_µs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/FiniteDuration$;

    invoke-direct {v0}, Lscala/concurrent/duration/FiniteDuration$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/FiniteDuration$;->MODULE$:Lscala/concurrent/duration/FiniteDuration$;

    return-void
.end method

.method private final max_d()J
    .locals 2

    const-wide/32 v0, 0x1a0ff

    return-wide v0
.end method

.method private final max_h()J
    .locals 2

    const-wide/32 v0, 0x2717ff

    return-wide v0
.end method

.method private final max_min()J
    .locals 2

    const-wide/32 v0, 0x9299ff3

    return-wide v0
.end method

.method private final max_ms()J
    .locals 2

    const-wide v0, 0x8637bd05af6L

    return-wide v0
.end method

.method private final max_ns()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private final max_s()J
    .locals 2

    const-wide v0, 0x225c17d04L

    return-wide v0
.end method

.method private final max_µs()J
    .locals 2

    const-wide v0, 0x20c49ba5e353f7L

    return-wide v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 542
    sget-object v0, Lscala/concurrent/duration/FiniteDuration$;->MODULE$:Lscala/concurrent/duration/FiniteDuration$;

    return-object v0
.end method


# virtual methods
.method public apply(JLjava/lang/String;)Lscala/concurrent/duration/FiniteDuration;
    .locals 2

    .line 549
    new-instance v0, Lscala/concurrent/duration/FiniteDuration;

    sget-object v1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v1}, Lscala/concurrent/duration/Duration$;->timeUnit()Lscala/collection/immutable/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Lscala/collection/immutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, p2, p3}, Lscala/concurrent/duration/FiniteDuration;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 548
    new-instance v0, Lscala/concurrent/duration/FiniteDuration;

    invoke-direct {v0, p1, p2, p3}, Lscala/concurrent/duration/FiniteDuration;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method
