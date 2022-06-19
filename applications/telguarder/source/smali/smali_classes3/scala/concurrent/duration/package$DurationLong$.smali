.class public Lscala/concurrent/duration/package$DurationLong$;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationLong$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/package$DurationLong$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/package$DurationLong$;

    invoke-direct {v0}, Lscala/concurrent/duration/package$DurationLong$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/package$DurationLong$;->MODULE$:Lscala/concurrent/duration/package$DurationLong$;

    return-void
.end method


# virtual methods
.method public final durationIn$extension(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 1

    .line 48
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p1, p2, p3}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public final equals$extension(JLjava/lang/Object;)Z
    .locals 5

    .line 47
    instance-of v0, p3, Lscala/concurrent/duration/package$DurationLong;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p3, Lscala/concurrent/duration/package$DurationLong;

    invoke-virtual {p3}, Lscala/concurrent/duration/package$DurationLong;->scala$concurrent$duration$DurationLong$$n()J

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

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
