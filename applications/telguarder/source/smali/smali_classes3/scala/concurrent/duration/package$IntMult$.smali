.class public Lscala/concurrent/duration/package$IntMult$;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntMult$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/package$IntMult$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/package$IntMult$;

    invoke-direct {v0}, Lscala/concurrent/duration/package$IntMult$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/package$IntMult$;->MODULE$:Lscala/concurrent/duration/package$IntMult$;

    return-void
.end method


# virtual methods
.method public final $times$extension0(ILscala/concurrent/duration/Duration;)Lscala/concurrent/duration/Duration;
    .locals 2

    int-to-double v0, p1

    .line 63
    invoke-virtual {p2, v0, v1}, Lscala/concurrent/duration/Duration;->$times(D)Lscala/concurrent/duration/Duration;

    move-result-object p1

    return-object p1
.end method

.method public final $times$extension1(ILscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/FiniteDuration;
    .locals 2

    int-to-long v0, p1

    .line 64
    invoke-virtual {p2, v0, v1}, Lscala/concurrent/duration/FiniteDuration;->$times(J)Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    return-object p1
.end method

.method public final equals$extension(ILjava/lang/Object;)Z
    .locals 3

    .line 62
    instance-of v0, p2, Lscala/concurrent/duration/package$IntMult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/concurrent/duration/package$IntMult;

    invoke-virtual {p2}, Lscala/concurrent/duration/package$IntMult;->scala$concurrent$duration$IntMult$$i()I

    move-result p2

    if-ne p1, p2, :cond_0

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

.method public final hashCode$extension(I)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
