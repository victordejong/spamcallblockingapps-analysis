.class public Lscala/concurrent/duration/package$DurationDouble$;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationDouble$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/package$DurationDouble$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/package$DurationDouble$;

    invoke-direct {v0}, Lscala/concurrent/duration/package$DurationDouble$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/package$DurationDouble$;->MODULE$:Lscala/concurrent/duration/package$DurationDouble$;

    return-void
.end method


# virtual methods
.method public final durationIn$extension(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;
    .locals 2

    .line 53
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {v0, p1, p2, p3}, Lscala/concurrent/duration/Duration$;->apply(DLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/Duration;

    move-result-object p3

    .line 54
    instance-of v0, p3, Lscala/concurrent/duration/FiniteDuration;

    if-eqz v0, :cond_0

    check-cast p3, Lscala/concurrent/duration/FiniteDuration;

    return-object p3

    .line 55
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Duration DSL not applicable to "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final equals$extension(DLjava/lang/Object;)Z
    .locals 5

    .line 51
    instance-of v0, p3, Lscala/concurrent/duration/package$DurationDouble;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p3, Lscala/concurrent/duration/package$DurationDouble;

    invoke-virtual {p3}, Lscala/concurrent/duration/package$DurationDouble;->scala$concurrent$duration$DurationDouble$$d()D

    move-result-wide v3

    cmpl-double p3, p1, v3

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

.method public final hashCode$extension(D)I
    .locals 0

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
