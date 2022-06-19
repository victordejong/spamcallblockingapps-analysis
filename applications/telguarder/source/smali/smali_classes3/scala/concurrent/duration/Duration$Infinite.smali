.class public abstract Lscala/concurrent/duration/Duration$Infinite;
.super Lscala/concurrent/duration/Duration;
.source "Duration.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Infinite"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lscala/concurrent/duration/Duration;-><init>()V

    return-void
.end method

.method private fail(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 5

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/StringContext;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v3, ""

    const-string v4, " not allowed on infinite Durations"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public $div(Lscala/concurrent/duration/Duration;)D
    .locals 4

    .line 208
    instance-of v0, p1, Lscala/concurrent/duration/Duration$Infinite;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 210
    sget-object v2, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v2}, Lscala/concurrent/duration/Duration$;->Zero()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lscala/concurrent/duration/Duration$Infinite;->$greater(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v3}, Lscala/concurrent/duration/Duration$;->Zero()Lscala/concurrent/duration/FiniteDuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Lscala/concurrent/duration/Duration;->$greater$eq(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    int-to-double v2, p1

    mul-double v0, v0, v2

    :goto_1
    return-wide v0
.end method

.method public $div(D)Lscala/concurrent/duration/Duration;
    .locals 2

    .line 205
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1, p2}, Lscala/Predef$;->double2Double(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1, p2}, Lscala/Predef$;->double2Double(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lscala/runtime/RichDouble;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p1, p2}, Lscala/runtime/RichDouble;-><init>(D)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/runtime/RichDouble;->compare(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$Infinite;->unary_$minus()Lscala/concurrent/duration/Duration;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p0

    goto :goto_1

    .line 205
    :cond_2
    :goto_0
    sget-object p1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public $minus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 1

    .line 194
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_0

    .line 196
    :cond_0
    instance-of v0, p1, Lscala/concurrent/duration/Duration$Infinite;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/concurrent/duration/Duration$Infinite;

    if-ne p1, p0, :cond_1

    sget-object p1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public $plus(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 1

    .line 189
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_0

    .line 191
    :cond_0
    instance-of v0, p1, Lscala/concurrent/duration/Duration$Infinite;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/concurrent/duration/Duration$Infinite;

    if-eq p1, p0, :cond_1

    sget-object p1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public $times(D)Lscala/concurrent/duration/Duration;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_2

    .line 201
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p1, p2}, Lscala/Predef$;->double2Double(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 202
    invoke-virtual {p0}, Lscala/concurrent/duration/Duration$Infinite;->unary_$minus()Lscala/concurrent/duration/Duration;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p0

    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    sget-object p1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/concurrent/duration/Duration$;->Undefined()Lscala/concurrent/duration/Duration$Infinite;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final isFinite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final length()J
    .locals 1

    const-string v0, "length"

    .line 216
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final toCoarsest()Lscala/concurrent/duration/Duration;
    .locals 0

    return-object p0
.end method

.method public final toDays()J
    .locals 1

    const-string v0, "toDays"

    .line 224
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final toHours()J
    .locals 1

    const-string v0, "toHours"

    .line 223
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final toMicros()J
    .locals 1

    const-string v0, "toMicros"

    .line 219
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final toMillis()J
    .locals 1

    const-string v0, "toMillis"

    .line 220
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final toMinutes()J
    .locals 1

    const-string v0, "toMinutes"

    .line 222
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final toNanos()J
    .locals 1

    const-string v0, "toNanos"

    .line 218
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final toSeconds()J
    .locals 1

    const-string v0, "toSeconds"

    .line 221
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final unit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    const-string v0, "unit"

    .line 217
    invoke-direct {p0, v0}, Lscala/concurrent/duration/Duration$Infinite;->fail(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method
