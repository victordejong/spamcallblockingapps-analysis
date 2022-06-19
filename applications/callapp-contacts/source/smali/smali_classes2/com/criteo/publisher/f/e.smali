.class abstract Lcom/criteo/publisher/f/e;
.super Lcom/criteo/publisher/f/y$a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Long;

.field private final c:Z

.field private final d:J

.field private final e:Ljava/lang/Long;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Long;ZJLjava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$b;",
            ">;",
            "Ljava/lang/Long;",
            "ZJ",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/criteo/publisher/f/y$a;-><init>()V

    const-string v0, "Null slots"

    .line 31
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/criteo/publisher/f/e;->a:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/criteo/publisher/f/e;->b:Ljava/lang/Long;

    .line 35
    iput-boolean p3, p0, Lcom/criteo/publisher/f/e;->c:Z

    .line 36
    iput-wide p4, p0, Lcom/criteo/publisher/f/e;->d:J

    .line 37
    iput-object p6, p0, Lcom/criteo/publisher/f/e;->e:Ljava/lang/Long;

    .line 38
    iput-object p7, p0, Lcom/criteo/publisher/f/e;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$b;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/criteo/publisher/f/e;->a:Ljava/util/List;

    return-object v0
.end method

.method final b()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/f/e;->b:Ljava/lang/Long;

    return-object v0
.end method

.method final c()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "isTimeout"
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/criteo/publisher/f/e;->c:Z

    return v0
.end method

.method final d()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/criteo/publisher/f/e;->d:J

    return-wide v0
.end method

.method final e()Ljava/lang/Long;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/criteo/publisher/f/e;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/f/y$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 94
    check-cast p1, Lcom/criteo/publisher/f/y$a;

    .line 95
    iget-object v1, p0, Lcom/criteo/publisher/f/e;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/criteo/publisher/f/e;->b:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->b()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-boolean v1, p0, Lcom/criteo/publisher/f/e;->c:Z

    .line 97
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->c()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-wide v3, p0, Lcom/criteo/publisher/f/e;->d:J

    .line 98
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/criteo/publisher/f/e;->e:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->e()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/criteo/publisher/f/e;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 100
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->f()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/criteo/publisher/f/y$a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_5
    return v2
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/f/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/criteo/publisher/f/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 111
    iget-object v2, p0, Lcom/criteo/publisher/f/e;->b:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 113
    iget-boolean v2, p0, Lcom/criteo/publisher/f/e;->c:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 115
    iget-wide v4, p0, Lcom/criteo/publisher/f/e;->d:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 117
    iget-object v2, p0, Lcom/criteo/publisher/f/e;->e:Ljava/lang/Long;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 119
    iget-object v1, p0, Lcom/criteo/publisher/f/e;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetricRequestFeedback{slots="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/f/e;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/e;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/criteo/publisher/f/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cdbCallStartElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/criteo/publisher/f/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cdbCallEndElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/e;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
