.class public Lscala/concurrent/forkjoin/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final addend:J = 0xbL

.field private static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lscala/concurrent/forkjoin/ThreadLocalRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lscala/concurrent/forkjoin/ThreadLocalRandom$1;

    invoke-direct {v0}, Lscala/concurrent/forkjoin/ThreadLocalRandom$1;-><init>()V

    sput-object v0, Lscala/concurrent/forkjoin/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lscala/concurrent/forkjoin/ThreadLocalRandom;->initialized:Z

    return-void
.end method

.method public static current()Lscala/concurrent/forkjoin/ThreadLocalRandom;
    .locals 1

    .line 84
    sget-object v0, Lscala/concurrent/forkjoin/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/forkjoin/ThreadLocalRandom;

    return-object v0
.end method


# virtual methods
.method protected next(I)I
    .locals 4

    .line 100
    iget-wide v0, p0, Lscala/concurrent/forkjoin/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long v0, v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lscala/concurrent/forkjoin/ThreadLocalRandom;->rnd:J

    rsub-int/lit8 p1, p1, 0x30

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public nextDouble(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    mul-double v0, v0, p1

    return-wide v0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextDouble(DD)D
    .locals 2

    cmpl-double v0, p1, p3

    if-gez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    sub-double/2addr p3, p1

    mul-double v0, v0, p3

    add-double/2addr v0, p1

    return-wide v0

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public nextInt(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    sub-int/2addr p2, p1

    .line 117
    invoke-virtual {p0, p2}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public nextLong(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    const/4 v2, 0x2

    .line 139
    invoke-virtual {p0, v2}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->next(I)I

    move-result v2

    const/4 v3, 0x1

    ushr-long v3, p1, v3

    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    sub-long v3, p1, v3

    :goto_1
    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    sub-long/2addr p1, v3

    add-long/2addr v0, p1

    :cond_1
    move-wide p1, v3

    goto :goto_0

    :cond_2
    long-to-int p2, p1

    .line 146
    invoke-virtual {p0, p2}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nextLong(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    sub-long/2addr p3, p1

    .line 162
    invoke-virtual {p0, p3, p4}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->nextLong(J)J

    move-result-wide p3

    add-long/2addr p3, p1

    return-wide p3

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSeed(J)V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lscala/concurrent/forkjoin/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_0

    const-wide v0, 0x5deece66dL

    xor-long/2addr p1, v0

    const-wide v0, 0xffffffffffffL

    and-long/2addr p1, v0

    .line 96
    iput-wide p1, p0, Lscala/concurrent/forkjoin/ThreadLocalRandom;->rnd:J

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
