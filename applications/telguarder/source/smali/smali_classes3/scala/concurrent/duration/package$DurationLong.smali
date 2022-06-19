.class public final Lscala/concurrent/duration/package$DurationLong;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/concurrent/duration/DurationConversions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DurationLong"
.end annotation


# instance fields
.field private final scala$concurrent$duration$DurationLong$$n:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lscala/concurrent/duration/package$DurationLong;->scala$concurrent$duration$DurationLong$$n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->$init$(Lscala/concurrent/duration/DurationConversions;)V

    return-void
.end method


# virtual methods
.method public day(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->day(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public day()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->day(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public days(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->days(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public days()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->days(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public durationIn(Ljava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 3

    .line 48
    sget-object v0, Lscala/concurrent/duration/package$DurationLong$;->MODULE$:Lscala/concurrent/duration/package$DurationLong$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$DurationLong;->scala$concurrent$duration$DurationLong$$n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/package$DurationLong$;->durationIn$extension(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 47
    sget-object v0, Lscala/concurrent/duration/package$DurationLong$;->MODULE$:Lscala/concurrent/duration/package$DurationLong$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$DurationLong;->scala$concurrent$duration$DurationLong$$n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/package$DurationLong$;->equals$extension(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 47
    sget-object v0, Lscala/concurrent/duration/package$DurationLong$;->MODULE$:Lscala/concurrent/duration/package$DurationLong$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$DurationLong;->scala$concurrent$duration$DurationLong$$n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lscala/concurrent/duration/package$DurationLong$;->hashCode$extension(J)I

    move-result v0

    return v0
.end method

.method public hour(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->hour(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hour()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->hour(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public hours(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->hours(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hours()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->hours(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public micro(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->micro(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public micro()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->micro(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public micros(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->micros(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public micros()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->micros(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public microsecond(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->microsecond(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public microsecond()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->microsecond(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public microseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->microseconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public microseconds()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->microseconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public milli(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->milli(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public milli()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->milli(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public millis(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->millis(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public millis()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->millis(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public millisecond(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->millisecond(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public millisecond()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->millisecond(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public milliseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->milliseconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public milliseconds()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->milliseconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public minute(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->minute(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minute()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->minute(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public minutes(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->minutes(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minutes()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->minutes(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public nano(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->nano(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public nano()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->nano(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public nanos(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->nanos(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public nanos()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->nanos(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public nanosecond(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->nanosecond(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public nanosecond()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->nanosecond(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public nanoseconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->nanoseconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public nanoseconds()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->nanoseconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public scala$concurrent$duration$DurationLong$$n()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lscala/concurrent/duration/package$DurationLong;->scala$concurrent$duration$DurationLong$$n:J

    return-wide v0
.end method

.method public second(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->second(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public second()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->second(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method

.method public seconds(Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lscala/concurrent/duration/DurationConversions$Classifier<",
            "TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/concurrent/duration/DurationConversions$class;->seconds(Lscala/concurrent/duration/DurationConversions;Ljava/lang/Object;Lscala/concurrent/duration/DurationConversions$Classifier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public seconds()Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/concurrent/duration/DurationConversions$class;->seconds(Lscala/concurrent/duration/DurationConversions;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v0

    return-object v0
.end method
