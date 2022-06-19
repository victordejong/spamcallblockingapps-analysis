.class final Lio/opencensus/trace/e;
.super Lio/opencensus/trace/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/e$a;
    }
.end annotation


# instance fields
.field private final a:Lio/opencensus/trace/m$b;

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method private constructor <init>(Lio/opencensus/trace/m$b;JJJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/opencensus/trace/m;-><init>()V

    .line 19
    iput-object p1, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/trace/m$b;

    .line 20
    iput-wide p2, p0, Lio/opencensus/trace/e;->b:J

    .line 21
    iput-wide p4, p0, Lio/opencensus/trace/e;->c:J

    .line 22
    iput-wide p6, p0, Lio/opencensus/trace/e;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/m$b;JJJLio/opencensus/trace/e$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p7}, Lio/opencensus/trace/e;-><init>(Lio/opencensus/trace/m$b;JJJ)V

    return-void
.end method


# virtual methods
.method public final a()Lio/opencensus/trace/m$b;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/trace/m$b;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lio/opencensus/trace/e;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lio/opencensus/trace/e;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lio/opencensus/trace/e;->d:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 61
    check-cast p1, Lio/opencensus/trace/m;

    .line 62
    iget-object v1, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/trace/m$b;

    invoke-virtual {p1}, Lio/opencensus/trace/m;->a()Lio/opencensus/trace/m$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/trace/m$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/e;->b:J

    .line 63
    invoke-virtual {p1}, Lio/opencensus/trace/m;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/e;->c:J

    .line 64
    invoke-virtual {p1}, Lio/opencensus/trace/m;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/e;->d:J

    .line 65
    invoke-virtual {p1}, Lio/opencensus/trace/m;->d()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 74
    iget-object v0, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/trace/m$b;

    invoke-virtual {v0}, Lio/opencensus/trace/m$b;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    int-to-long v2, v0

    .line 76
    iget-wide v4, p0, Lio/opencensus/trace/e;->b:J

    const/16 v0, 0x20

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    mul-int v3, v3, v1

    int-to-long v2, v3

    .line 78
    iget-wide v4, p0, Lio/opencensus/trace/e;->c:J

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    mul-int v3, v3, v1

    int-to-long v1, v3

    .line 80
    iget-wide v3, p0, Lio/opencensus/trace/e;->d:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    xor-long v0, v1, v3

    long-to-int v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageEvent{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/trace/m$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uncompressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", compressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
