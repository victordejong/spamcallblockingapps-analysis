.class public abstract Lscala/concurrent/duration/DurationConversions$class;
.super Ljava/lang/Object;
.source "DurationConversions.scala"


# direct methods
.method public static $init$(Lscala/concurrent/duration/DurationConversions;)V
    .locals 0

    return-void
.end method

.method public static day(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->days(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static day(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 43
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->days()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static days(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->days()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/concurrent/duration/DurationConversions$Classifier;->convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static days(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lscala/concurrent/duration/DurationConversions;->durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static hour(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->hours(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hour(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 40
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->hours()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static hours(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->hours()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/concurrent/duration/DurationConversions$Classifier;->convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hours(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lscala/concurrent/duration/DurationConversions;->durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static micro(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->microseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static micro(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 26
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->microseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static micros(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->microseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static micros(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 24
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->microseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static microsecond(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->microseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static microsecond(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 25
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->microseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static microseconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->microseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/concurrent/duration/DurationConversions$Classifier;->convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static microseconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lscala/concurrent/duration/DurationConversions;->durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static milli(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->milliseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static milli(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 31
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->milliseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static millis(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->milliseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static millis(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 29
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->milliseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static millisecond(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->milliseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static millisecond(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 30
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->milliseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static milliseconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->milliseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/concurrent/duration/DurationConversions$Classifier;->convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static milliseconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lscala/concurrent/duration/DurationConversions;->durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static minute(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->minutes(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static minute(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 37
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->minutes()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static minutes(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->minutes()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/concurrent/duration/DurationConversions$Classifier;->convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static minutes(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lscala/concurrent/duration/DurationConversions;->durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static nano(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->nanoseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nano(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 21
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->nanoseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static nanos(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->nanoseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nanos(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 19
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->nanoseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static nanosecond(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->nanoseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nanosecond(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 20
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->nanoseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static nanoseconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->nanoseconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/concurrent/duration/DurationConversions$Classifier;->convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nanoseconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lscala/concurrent/duration/DurationConversions;->durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static second(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-interface {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions;->seconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static second(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 34
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->seconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method

.method public static seconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-interface {p0}, Lscala/concurrent/duration/DurationConversions;->seconds()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    invoke-interface {p2, p0}, Lscala/concurrent/duration/DurationConversions$Classifier;->convert(Lscala/concurrent/duration/FiniteDuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static seconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0}, Lscala/concurrent/duration/DurationConversions;->durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p0

    return-object p0
.end method
