.class final Lcom/google/firebase/installations/b/b;
.super Lcom/google/firebase/installations/b/e;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lcom/google/firebase/installations/b/e$b;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/google/firebase/installations/b/e$b;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/installations/b/e;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/firebase/installations/b/b;->a:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lcom/google/firebase/installations/b/b;->b:J

    .line 24
    iput-object p4, p0, Lcom/google/firebase/installations/b/b;->c:Lcom/google/firebase/installations/b/e$b;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/firebase/installations/b/e$b;Lcom/google/firebase/installations/b/b$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/installations/b/b;-><init>(Ljava/lang/String;JLcom/google/firebase/installations/b/e$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/firebase/installations/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/firebase/installations/b/b;->b:J

    return-wide v0
.end method

.method public c()Lcom/google/firebase/installations/b/e$b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/firebase/installations/b/b;->c:Lcom/google/firebase/installations/b/e$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/installations/b/e;

    if-eqz v2, :cond_5

    .line 60
    check-cast p1, Lcom/google/firebase/installations/b/e;

    .line 61
    iget-object v2, p0, Lcom/google/firebase/installations/b/b;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/e;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-wide v2, p0, Lcom/google/firebase/installations/b/b;->b:J

    .line 62
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/e;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/installations/b/b;->c:Lcom/google/firebase/installations/b/e$b;

    if-nez v2, :cond_4

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/e;->c()Lcom/google/firebase/installations/b/e$b;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/installations/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 63
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/installations/b/b;->c:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/e;->c()Lcom/google/firebase/installations/b/e$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/b/e$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 65
    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const v6, 0xf4243

    .line 70
    .line 72
    iget-object v0, p0, Lcom/google/firebase/installations/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v6

    .line 73
    mul-int/2addr v0, v6

    .line 74
    iget-wide v2, p0, Lcom/google/firebase/installations/b/b;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/firebase/installations/b/b;->b:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 75
    mul-int/2addr v0, v6

    .line 76
    iget-object v2, p0, Lcom/google/firebase/installations/b/b;->c:Lcom/google/firebase/installations/b/e$b;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    .line 77
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/installations/b/b;->c:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v1}, Lcom/google/firebase/installations/b/e$b;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TokenResult{token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenExpirationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/installations/b/b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/b/b;->c:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
