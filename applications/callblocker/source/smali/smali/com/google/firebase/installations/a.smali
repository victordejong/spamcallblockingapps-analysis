.class final Lcom/google/firebase/installations/a;
.super Lcom/google/firebase/installations/l;
.source "com.google.firebase:firebase-installations-interop@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/firebase/installations/l;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/firebase/installations/a;->a:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/google/firebase/installations/a;->b:J

    .line 23
    iput-wide p4, p0, Lcom/google/firebase/installations/a;->c:J

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJLcom/google/firebase/installations/a$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/installations/a;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/firebase/installations/a;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/google/firebase/installations/a;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/installations/l;

    if-eqz v2, :cond_3

    .line 59
    check-cast p1, Lcom/google/firebase/installations/l;

    .line 60
    iget-object v2, p0, Lcom/google/firebase/installations/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/firebase/installations/a;->b:J

    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/installations/l;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/firebase/installations/a;->c:J

    .line 62
    invoke-virtual {p1}, Lcom/google/firebase/installations/l;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const v6, 0xf4243

    .line 69
    .line 71
    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v6

    .line 72
    mul-int/2addr v0, v6

    .line 73
    iget-wide v2, p0, Lcom/google/firebase/installations/a;->b:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/firebase/installations/a;->b:J

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    .line 74
    mul-int/2addr v0, v6

    .line 75
    iget-wide v2, p0, Lcom/google/firebase/installations/a;->c:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/google/firebase/installations/a;->c:J

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    .line 76
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstallationTokenResult{token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenExpirationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/installations/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenCreationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/firebase/installations/a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
