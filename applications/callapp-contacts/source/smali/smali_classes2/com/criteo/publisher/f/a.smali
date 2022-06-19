.class abstract Lcom/criteo/publisher/f/a;
.super Lcom/criteo/publisher/f/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/f/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/Long;

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/lang/Long;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/lang/Integer;

.field private final j:Z


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/Long;ZZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/criteo/publisher/f/s;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/criteo/publisher/f/a;->a:Ljava/lang/Long;

    .line 41
    iput-object p2, p0, Lcom/criteo/publisher/f/a;->b:Ljava/lang/Long;

    .line 42
    iput-boolean p3, p0, Lcom/criteo/publisher/f/a;->c:Z

    .line 43
    iput-boolean p4, p0, Lcom/criteo/publisher/f/a;->d:Z

    .line 44
    iput-object p5, p0, Lcom/criteo/publisher/f/a;->e:Ljava/lang/Long;

    const-string p1, "Null impressionId"

    .line 46
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iput-object p6, p0, Lcom/criteo/publisher/f/a;->f:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/criteo/publisher/f/a;->g:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/criteo/publisher/f/a;->h:Ljava/lang/Integer;

    .line 51
    iput-object p9, p0, Lcom/criteo/publisher/f/a;->i:Ljava/lang/Integer;

    .line 52
    iput-boolean p10, p0, Lcom/criteo/publisher/f/a;->j:Z

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Long;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->a:Ljava/lang/Long;

    return-object v0
.end method

.method final b()Ljava/lang/Long;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->b:Ljava/lang/Long;

    return-object v0
.end method

.method final c()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/criteo/publisher/f/a;->c:Z

    return v0
.end method

.method final d()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/criteo/publisher/f/a;->d:Z

    return v0
.end method

.method final e()Ljava/lang/Long;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/f/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 134
    check-cast p1, Lcom/criteo/publisher/f/s;

    .line 135
    iget-object v1, p0, Lcom/criteo/publisher/f/a;->a:Ljava/lang/Long;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->a()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->a()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/f/a;->b:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->b()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-boolean v1, p0, Lcom/criteo/publisher/f/a;->c:Z

    .line 137
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->c()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget-boolean v1, p0, Lcom/criteo/publisher/f/a;->d:Z

    .line 138
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->d()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->e:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 139
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->e()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/criteo/publisher/f/a;->f:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->g:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 141
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/criteo/publisher/f/a;->h:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 142
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->h()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->h()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lcom/criteo/publisher/f/a;->i:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 143
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->i()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->i()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    iget-boolean v1, p0, Lcom/criteo/publisher/f/a;->j:Z

    .line 144
    invoke-virtual {p1}, Lcom/criteo/publisher/f/s;->j()Z

    move-result p1

    if-ne v1, p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_8
    return v2
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method final h()Ljava/lang/Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->a:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 155
    iget-object v3, p0, Lcom/criteo/publisher/f/a;->b:Ljava/lang/Long;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 157
    iget-boolean v3, p0, Lcom/criteo/publisher/f/a;->c:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_2

    const/16 v3, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 159
    iget-boolean v3, p0, Lcom/criteo/publisher/f/a;->d:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v3, 0x4d5

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 161
    iget-object v3, p0, Lcom/criteo/publisher/f/a;->e:Ljava/lang/Long;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 163
    iget-object v3, p0, Lcom/criteo/publisher/f/a;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 165
    iget-object v3, p0, Lcom/criteo/publisher/f/a;->g:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 167
    iget-object v3, p0, Lcom/criteo/publisher/f/a;->h:Ljava/lang/Integer;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 169
    iget-object v3, p0, Lcom/criteo/publisher/f/a;->i:Ljava/lang/Integer;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_7
    xor-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 171
    iget-boolean v1, p0, Lcom/criteo/publisher/f/a;->j:Z

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    const/16 v4, 0x4d5

    :goto_8
    xor-int/2addr v0, v4

    return v0
.end method

.method final i()Ljava/lang/Integer;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/criteo/publisher/f/a;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method final j()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/criteo/publisher/f/a;->j:Z

    return v0
.end method

.method final k()Lcom/criteo/publisher/f/s$a;
    .locals 2

    .line 177
    new-instance v0, Lcom/criteo/publisher/f/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/criteo/publisher/f/a$b;-><init>(Lcom/criteo/publisher/f/s;Lcom/criteo/publisher/f/a$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metric{cdbCallStartTimestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cdbCallEndTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cdbCallTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/criteo/publisher/f/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cachedBidUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/criteo/publisher/f/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/f/a;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readyToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/criteo/publisher/f/a;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
