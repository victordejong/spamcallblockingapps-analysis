.class abstract Lcom/criteo/publisher/model/e;
.super Lcom/criteo/publisher/model/y;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Boolean;

.field private final g:Ljava/lang/Boolean;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/lang/Boolean;

.field private final j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/criteo/publisher/model/y;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/criteo/publisher/model/e;->a:Ljava/lang/Boolean;

    .line 42
    iput-object p2, p0, Lcom/criteo/publisher/model/e;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/criteo/publisher/model/e;->c:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/criteo/publisher/model/e;->d:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/criteo/publisher/model/e;->e:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/criteo/publisher/model/e;->f:Ljava/lang/Boolean;

    .line 47
    iput-object p7, p0, Lcom/criteo/publisher/model/e;->g:Ljava/lang/Boolean;

    .line 48
    iput-object p8, p0, Lcom/criteo/publisher/model/e;->h:Ljava/lang/Integer;

    .line 49
    iput-object p9, p0, Lcom/criteo/publisher/model/e;->i:Ljava/lang/Boolean;

    .line 50
    iput-object p10, p0, Lcom/criteo/publisher/model/e;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-void
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidAdTagDataMacro"
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidAdTagDataMode"
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidAdTagUrlMode"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "AndroidDisplayUrlMacro"
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 138
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 139
    check-cast p1, Lcom/criteo/publisher/model/y;

    .line 140
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->g()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_1
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 142
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_2
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 143
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_3
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 144
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_4
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 145
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->f()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_5
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 146
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_6
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->h:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 147
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->i()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->i()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_7
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 148
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->j()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->j()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_8
    iget-object v1, p0, Lcom/criteo/publisher/model/e;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    if-nez v1, :cond_a

    .line 149
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lcom/criteo/publisher/model/y;->k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_c
    return v2
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 160
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 162
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 164
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 166
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 168
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->f:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 170
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->g:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 172
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->h:Ljava/lang/Integer;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 174
    iget-object v3, p0, Lcom/criteo/publisher/model/e;->i:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_8
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 176
    iget-object v2, p0, Lcom/criteo/publisher/model/e;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_9
    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public k()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/criteo/publisher/model/e;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteConfigResponse{killSwitch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidDisplayUrlMacro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidAdTagUrlMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidAdTagDataMacro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidAdTagDataMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", csmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liveBiddingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liveBiddingTimeBudgetInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefetchOnInitEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteLogLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/e;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
