.class public final Lscala/concurrent/duration/package$LongMult;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongMult"
.end annotation


# instance fields
.field private final scala$concurrent$duration$LongMult$$i:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lscala/concurrent/duration/package$LongMult;->scala$concurrent$duration$LongMult$$i:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $times(Lscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 3

    .line 68
    sget-object v0, Lscala/concurrent/duration/package$LongMult$;->MODULE$:Lscala/concurrent/duration/package$LongMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$LongMult;->scala$concurrent$duration$LongMult$$i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/package$LongMult$;->$times$extension0(JLscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public $times(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;
    .locals 3

    .line 69
    sget-object v0, Lscala/concurrent/duration/package$LongMult$;->MODULE$:Lscala/concurrent/duration/package$LongMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$LongMult;->scala$concurrent$duration$LongMult$$i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/package$LongMult$;->$times$extension1(JLscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 67
    sget-object v0, Lscala/concurrent/duration/package$LongMult$;->MODULE$:Lscala/concurrent/duration/package$LongMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$LongMult;->scala$concurrent$duration$LongMult$$i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lscala/concurrent/duration/package$LongMult$;->equals$extension(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 67
    sget-object v0, Lscala/concurrent/duration/package$LongMult$;->MODULE$:Lscala/concurrent/duration/package$LongMult$;

    invoke-virtual {p0}, Lscala/concurrent/duration/package$LongMult;->scala$concurrent$duration$LongMult$$i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lscala/concurrent/duration/package$LongMult$;->hashCode$extension(J)I

    move-result v0

    return v0
.end method

.method public scala$concurrent$duration$LongMult$$i()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lscala/concurrent/duration/package$LongMult;->scala$concurrent$duration$LongMult$$i:J

    return-wide v0
.end method
