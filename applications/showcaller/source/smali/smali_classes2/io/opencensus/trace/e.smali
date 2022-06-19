.class final Lio/opencensus/trace/e;
.super Lio/opencensus/trace/NetworkEvent;
.source "AutoValue_NetworkEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/e$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lio/opencensus/common/b;

.field private final b:Lio/opencensus/trace/NetworkEvent$Type;

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>(Lio/opencensus/common/b;Lio/opencensus/trace/NetworkEvent$Type;JJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/NetworkEvent;-><init>()V

    .line 3
    iput-object p2, p0, Lio/opencensus/trace/e;->b:Lio/opencensus/trace/NetworkEvent$Type;

    .line 4
    iput-wide p3, p0, Lio/opencensus/trace/e;->c:J

    .line 5
    iput-wide p5, p0, Lio/opencensus/trace/e;->d:J

    .line 6
    iput-wide p7, p0, Lio/opencensus/trace/e;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/common/b;Lio/opencensus/trace/NetworkEvent$Type;JJJLio/opencensus/trace/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lio/opencensus/trace/e;-><init>(Lio/opencensus/common/b;Lio/opencensus/trace/NetworkEvent$Type;JJJ)V

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/opencensus/trace/e;->e:J

    return-wide v0
.end method

.method public c()Lio/opencensus/common/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/common/b;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/opencensus/trace/e;->c:J

    return-wide v0
.end method

.method public e()Lio/opencensus/trace/NetworkEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/e;->b:Lio/opencensus/trace/NetworkEvent$Type;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/NetworkEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lio/opencensus/trace/NetworkEvent;

    .line 3
    iget-object v1, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/common/b;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lio/opencensus/trace/NetworkEvent;->c()Lio/opencensus/common/b;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/opencensus/trace/e;->b:Lio/opencensus/trace/NetworkEvent$Type;

    .line 4
    invoke-virtual {p1}, Lio/opencensus/trace/NetworkEvent;->e()Lio/opencensus/trace/NetworkEvent$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/e;->c:J

    .line 5
    invoke-virtual {p1}, Lio/opencensus/trace/NetworkEvent;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/e;->d:J

    .line 6
    invoke-virtual {p1}, Lio/opencensus/trace/NetworkEvent;->f()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lio/opencensus/trace/e;->e:J

    .line 7
    invoke-virtual {p1}, Lio/opencensus/trace/NetworkEvent;->b()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lio/opencensus/trace/NetworkEvent;->c()Lio/opencensus/common/b;

    const/4 p1, 0x0

    throw p1

    :cond_3
    return v2
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/opencensus/trace/e;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/common/b;

    if-nez v0, :cond_0

    const v0, 0xf4243

    xor-int/lit8 v1, v0, 0x0

    mul-int v1, v1, v0

    .line 2
    iget-object v2, p0, Lio/opencensus/trace/e;->b:Lio/opencensus/trace/NetworkEvent$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    int-to-long v1, v1

    .line 3
    iget-wide v3, p0, Lio/opencensus/trace/e;->c:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v2, v1

    mul-int v2, v2, v0

    int-to-long v1, v2

    .line 4
    iget-wide v3, p0, Lio/opencensus/trace/e;->d:J

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v2, v1

    mul-int v2, v2, v0

    int-to-long v0, v2

    .line 5
    iget-wide v2, p0, Lio/opencensus/trace/e;->e:J

    ushr-long v4, v2, v5

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkEvent{kernelTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/e;->a:Lio/opencensus/common/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/e;->b:Lio/opencensus/trace/NetworkEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uncompressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", compressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/trace/e;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
