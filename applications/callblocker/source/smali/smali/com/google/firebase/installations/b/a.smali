.class final Lcom/google/firebase/installations/b/a;
.super Lcom/google/firebase/installations/b/d;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/b/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/firebase/installations/b/e;

.field private final e:Lcom/google/firebase/installations/b/d$b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/b/e;Lcom/google/firebase/installations/b/d$b;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/firebase/installations/b/d;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/installations/b/a;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/firebase/installations/b/a;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/firebase/installations/b/a;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/google/firebase/installations/b/a;->d:Lcom/google/firebase/installations/b/e;

    .line 31
    iput-object p5, p0, Lcom/google/firebase/installations/b/a;->e:Lcom/google/firebase/installations/b/d$b;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/b/e;Lcom/google/firebase/installations/b/d$b;Lcom/google/firebase/installations/b/a$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/installations/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/b/e;Lcom/google/firebase/installations/b/d$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/firebase/installations/b/e;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->d:Lcom/google/firebase/installations/b/e;

    return-object v0
.end method

.method public e()Lcom/google/firebase/installations/b/d$b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->e:Lcom/google/firebase/installations/b/d$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p1, p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    instance-of v2, p1, Lcom/google/firebase/installations/b/d;

    if-eqz v2, :cond_8

    .line 81
    check-cast p1, Lcom/google/firebase/installations/b/d;

    .line 82
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 83
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 84
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->d:Lcom/google/firebase/installations/b/e;

    if-nez v2, :cond_6

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->d()Lcom/google/firebase/installations/b/e;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_4
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->e:Lcom/google/firebase/installations/b/d$b;

    if-nez v2, :cond_7

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->e()Lcom/google/firebase/installations/b/d$b;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 83
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 84
    :cond_5
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 85
    :cond_6
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->d:Lcom/google/firebase/installations/b/e;

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->d()Lcom/google/firebase/installations/b/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    .line 86
    :cond_7
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->e:Lcom/google/firebase/installations/b/d$b;

    invoke-virtual {p1}, Lcom/google/firebase/installations/b/d;->e()Lcom/google/firebase/installations/b/d$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/b/d$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_8
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const v3, 0xf4243

    const/4 v1, 0x0

    .line 93
    .line 95
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v3

    .line 96
    mul-int v2, v0, v3

    .line 97
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    .line 98
    mul-int v2, v0, v3

    .line 99
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v2

    .line 100
    mul-int v2, v0, v3

    .line 101
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->d:Lcom/google/firebase/installations/b/e;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    xor-int/2addr v0, v2

    .line 102
    mul-int/2addr v0, v3

    .line 103
    iget-object v2, p0, Lcom/google/firebase/installations/b/a;->e:Lcom/google/firebase/installations/b/d$b;

    if-nez v2, :cond_4

    :goto_4
    xor-int/2addr v0, v1

    .line 104
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/installations/b/a;->d:Lcom/google/firebase/installations/b/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/installations/b/a;->e:Lcom/google/firebase/installations/b/d$b;

    invoke-virtual {v1}, Lcom/google/firebase/installations/b/d$b;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstallationResponse{uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/b/a;->d:Lcom/google/firebase/installations/b/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/b/a;->e:Lcom/google/firebase/installations/b/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
