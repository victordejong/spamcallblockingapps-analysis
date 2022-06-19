.class public final Lio/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/a/b$a;,
        Lio/a/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lio/a/b$a;

.field private static final b:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private final e:Lio/a/b$b;

.field private final f:J

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lio/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/a/b$a;-><init>(Lio/a/b$1;)V

    sput-object v0, Lio/a/b;->a:Lio/a/b$a;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x8e94

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 39
    sput-wide v0, Lio/a/b;->b:J

    neg-long v0, v0

    sput-wide v0, Lio/a/b;->c:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/a/b;->d:J

    return-void
.end method

.method private constructor <init>(Lio/a/b$b;JJZ)V
    .locals 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lio/a/b;->e:Lio/a/b$b;

    .line 109
    sget-wide v0, Lio/a/b;->b:J

    sget-wide v2, Lio/a/b;->c:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    add-long/2addr p2, p4

    .line 110
    iput-wide p2, p0, Lio/a/b;->f:J

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    iput-boolean p1, p0, Lio/a/b;->g:Z

    return-void
.end method

.method private constructor <init>(Lio/a/b$b;JZ)V
    .locals 7

    .line 102
    invoke-virtual {p1}, Lio/a/b$b;->a()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/a/b;-><init>(Lio/a/b$b;JJZ)V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 34
    check-cast p1, Lio/a/b;

    .line 1295
    iget-object v0, p0, Lio/a/b;->e:Lio/a/b$b;

    iget-object v1, p1, Lio/a/b;->e:Lio/a/b$b;

    if-ne v0, v1, :cond_2

    .line 1226
    iget-wide v0, p0, Lio/a/b;->f:J

    iget-wide v2, p1, Lio/a/b;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1296
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tickers ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/a/b;->e:Lio/a/b$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/a/b;->e:Lio/a/b$b;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") don\'t match. Custom Ticker should only be used in tests!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 245
    :cond_0
    instance-of v1, p1, Lio/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 249
    :cond_1
    check-cast p1, Lio/a/b;

    .line 250
    iget-object v1, p0, Lio/a/b;->e:Lio/a/b$b;

    if-nez v1, :cond_2

    iget-object v1, p1, Lio/a/b;->e:Lio/a/b$b;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lio/a/b;->e:Lio/a/b$b;

    if-eq v1, v3, :cond_3

    :goto_0
    return v2

    .line 253
    :cond_3
    iget-wide v3, p0, Lio/a/b;->f:J

    iget-wide v5, p1, Lio/a/b;->f:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lio/a/b;->e:Lio/a/b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/a/b;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 199
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1173
    iget-object v1, p0, Lio/a/b;->e:Lio/a/b$b;

    invoke-virtual {v1}, Lio/a/b$b;->a()J

    move-result-wide v1

    .line 1174
    iget-boolean v3, p0, Lio/a/b;->g:Z

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-nez v3, :cond_0

    iget-wide v7, p0, Lio/a/b;->f:J

    sub-long/2addr v7, v1

    cmp-long v3, v7, v5

    if-gtz v3, :cond_0

    .line 1175
    iput-boolean v4, p0, Lio/a/b;->g:Z

    .line 1177
    :cond_0
    iget-wide v7, p0, Lio/a/b;->f:J

    sub-long/2addr v7, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v7, Lio/a/b;->d:J

    div-long/2addr v2, v7

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    rem-long/2addr v9, v7

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v8, v0, v5

    if-gez v8, :cond_1

    const/16 v0, 0x2d

    .line 205
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v0, v9, v5

    if-lez v0, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 209
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ".%09d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "s from now"

    .line 211
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lio/a/b;->e:Lio/a/b$b;

    sget-object v1, Lio/a/b;->a:Lio/a/b$a;

    if-eq v0, v1, :cond_3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " (ticker="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/a/b;->e:Lio/a/b$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
