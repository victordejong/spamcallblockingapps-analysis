.class public Lscala/concurrent/duration/package$LongMult$;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongMult$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/package$LongMult$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/package$LongMult$;

    invoke-direct {v0}, Lscala/concurrent/duration/package$LongMult$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/package$LongMult$;->MODULE$:Lscala/concurrent/duration/package$LongMult$;

    return-void
.end method


# virtual methods
.method public final $times$extension0(JLscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 0

    long-to-double p1, p1

    .line 68
    invoke-virtual {p3, p1, p2}, Lscala/concurrent/duration/Duration;->$times(D)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public final $times$extension1(JLscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;
    .locals 0

    .line 69
    invoke-virtual {p3, p1, p2}, Lscala/concurrent/duration/FiniteDuration;->$times(J)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public final equals$extension(JLjava/lang/Object;)Z
    .locals 5

    .line 67
    instance-of v0, p3, Lscala/concurrent/duration/package$LongMult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p3, Lscala/concurrent/duration/package$LongMult;

    invoke-virtual {p3}, Lscala/concurrent/duration/package$LongMult;->scala$concurrent$duration$LongMult$$i()J

    move-result-wide v3

    cmp-long p3, p1, v3

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final hashCode$extension(J)I
    .locals 0

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
