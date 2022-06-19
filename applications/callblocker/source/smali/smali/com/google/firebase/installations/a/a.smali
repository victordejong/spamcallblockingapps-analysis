.class final Lcom/google/firebase/installations/a/a;
.super Lcom/google/firebase/installations/a/d;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/a/a$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/firebase/installations/a/c$a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:J

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/a/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/firebase/installations/a/d;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/firebase/installations/a/a;->b:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/google/firebase/installations/a/a;->c:Lcom/google/firebase/installations/a/c$a;

    .line 36
    iput-object p3, p0, Lcom/google/firebase/installations/a/a;->d:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/google/firebase/installations/a/a;->e:Ljava/lang/String;

    .line 38
    iput-wide p5, p0, Lcom/google/firebase/installations/a/a;->f:J

    .line 39
    iput-wide p7, p0, Lcom/google/firebase/installations/a/a;->g:J

    .line 40
    iput-object p9, p0, Lcom/google/firebase/installations/a/a;->h:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/a/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/google/firebase/installations/a/a$1;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p9}, Lcom/google/firebase/installations/a/a;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/a/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/firebase/installations/a/c$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->c:Lcom/google/firebase/installations/a/c$a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/firebase/installations/a/a;->f:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p1, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/installations/a/d;

    if-eqz v2, :cond_7

    .line 102
    check-cast p1, Lcom/google/firebase/installations/a/d;

    .line 103
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->c:Lcom/google/firebase/installations/a/c$a;

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/a/c$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 106
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    iget-wide v2, p0, Lcom/google/firebase/installations/a/a;->f:J

    .line 107
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->e()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/firebase/installations/a/a;->g:J

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 109
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 106
    :cond_5
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 109
    :cond_6
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 111
    goto/16 :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/firebase/installations/a/a;->g:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/google/firebase/installations/a/d$a;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/google/firebase/installations/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/installations/a/a$a;-><init>(Lcom/google/firebase/installations/a/d;Lcom/google/firebase/installations/a/a$1;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    const v6, 0xf4243

    .line 116
    .line 118
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v6

    .line 119
    mul-int/2addr v0, v6

    .line 120
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->c:Lcom/google/firebase/installations/a/c$a;

    invoke-virtual {v2}, Lcom/google/firebase/installations/a/c$a;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 121
    mul-int v2, v0, v6

    .line 122
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    .line 123
    mul-int v2, v0, v6

    .line 124
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v2

    .line 125
    mul-int/2addr v0, v6

    .line 126
    iget-wide v2, p0, Lcom/google/firebase/installations/a/a;->f:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/firebase/installations/a/a;->f:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 127
    mul-int/2addr v0, v6

    .line 128
    iget-wide v2, p0, Lcom/google/firebase/installations/a/a;->g:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/firebase/installations/a/a;->g:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 129
    mul-int/2addr v0, v6

    .line 130
    iget-object v2, p0, Lcom/google/firebase/installations/a/a;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    xor-int/2addr v0, v1

    .line 131
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/installations/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/installations/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PersistedInstallationEntry{firebaseInstallationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", registrationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a/a;->c:Lcom/google/firebase/installations/a/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expiresInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/installations/a/a;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenCreationEpochInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/installations/a/a;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fisError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
