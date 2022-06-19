.class final Lio/opencensus/trace/f;
.super Lio/opencensus/trace/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/f$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lio/opencensus/common/c;

.field private final b:Lio/opencensus/trace/n$b;

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>(Lio/opencensus/common/c;Lio/opencensus/trace/n$b;JJJ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/opencensus/trace/n;-><init>()V

    .line 25
    iput-object p1, p0, Lio/opencensus/trace/f;->a:Lio/opencensus/common/c;

    .line 26
    iput-object p2, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/n$b;

    .line 27
    iput-wide p3, p0, Lio/opencensus/trace/f;->c:J

    .line 28
    iput-wide p5, p0, Lio/opencensus/trace/f;->d:J

    .line 29
    iput-wide p7, p0, Lio/opencensus/trace/f;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/common/c;Lio/opencensus/trace/n$b;JJJLio/opencensus/trace/f$1;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p8}, Lio/opencensus/trace/f;-><init>(Lio/opencensus/common/c;Lio/opencensus/trace/n$b;JJJ)V

    return-void
.end method


# virtual methods
.method public final a()Lio/opencensus/common/c;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/opencensus/trace/f;->a:Lio/opencensus/common/c;

    return-object v0
.end method

.method public final b()Lio/opencensus/trace/n$b;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/n$b;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lio/opencensus/trace/f;->c:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lio/opencensus/trace/f;->d:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lio/opencensus/trace/f;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    check-cast p1, Lio/opencensus/trace/n;

    .line 76
    iget-object v1, p0, Lio/opencensus/trace/f;->a:Lio/opencensus/common/c;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lio/opencensus/trace/n;->a()Lio/opencensus/common/c;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/opencensus/trace/n;->a()Lio/opencensus/common/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/n$b;

    .line 77
    invoke-virtual {p1}, Lio/opencensus/trace/n;->b()Lio/opencensus/trace/n$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/opencensus/trace/n$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lio/opencensus/trace/f;->c:J

    .line 78
    invoke-virtual {p1}, Lio/opencensus/trace/n;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lio/opencensus/trace/f;->d:J

    .line 79
    invoke-virtual {p1}, Lio/opencensus/trace/n;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lio/opencensus/trace/f;->e:J

    .line 80
    invoke-virtual {p1}, Lio/opencensus/trace/n;->e()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 89
    iget-object v0, p0, Lio/opencensus/trace/f;->a:Lio/opencensus/common/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 91
    iget-object v2, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/n$b;

    invoke-virtual {v2}, Lio/opencensus/trace/n$b;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    int-to-long v2, v0

    .line 93
    iget-wide v4, p0, Lio/opencensus/trace/f;->c:J

    const/16 v0, 0x20

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    mul-int v3, v3, v1

    int-to-long v2, v3

    .line 95
    iget-wide v4, p0, Lio/opencensus/trace/f;->d:J

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    mul-int v3, v3, v1

    int-to-long v1, v3

    .line 97
    iget-wide v3, p0, Lio/opencensus/trace/f;->e:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    xor-long v0, v1, v3

    long-to-int v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkEvent{kernelTimestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/opencensus/trace/f;->a:Lio/opencensus/common/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/f;->b:Lio/opencensus/trace/n$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/f;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uncompressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/f;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", compressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/f;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
