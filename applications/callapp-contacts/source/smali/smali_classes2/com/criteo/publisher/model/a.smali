.class abstract Lcom/criteo/publisher/model/a;
.super Lcom/criteo/publisher/model/o;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/criteo/publisher/model/v;

.field private final c:Lcom/criteo/publisher/model/z;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Lcom/criteo/publisher/k/a/c;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/criteo/publisher/model/v;Lcom/criteo/publisher/model/z;Ljava/lang/String;ILcom/criteo/publisher/k/a/c;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/criteo/publisher/model/v;",
            "Lcom/criteo/publisher/model/z;",
            "Ljava/lang/String;",
            "I",
            "Lcom/criteo/publisher/k/a/c;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/criteo/publisher/model/o;-><init>()V

    const-string v0, "Null id"

    .line 35
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    const-string p1, "Null publisher"

    .line 39
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    const-string p1, "Null user"

    .line 43
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p3, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    const-string p1, "Null sdkVersion"

    .line 47
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p4, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    .line 50
    iput p5, p0, Lcom/criteo/publisher/model/a;->e:I

    .line 51
    iput-object p6, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/k/a/c;

    const-string p1, "Null slots"

    .line 53
    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iput-object p7, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/k/a/c;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "gdprConsent"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/k/a/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/criteo/publisher/model/a;->e:I

    return v0
.end method

.method public d()Lcom/criteo/publisher/model/v;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 119
    check-cast p1, Lcom/criteo/publisher/model/o;

    .line 120
    iget-object v1, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    .line 121
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->d()Lcom/criteo/publisher/model/v;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    .line 122
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->g()Lcom/criteo/publisher/model/z;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/criteo/publisher/model/a;->e:I

    .line 124
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->c()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/k/a/c;

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->a()Lcom/criteo/publisher/k/a/c;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->a()Lcom/criteo/publisher/k/a/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    .line 126
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    return-object v0
.end method

.method public g()Lcom/criteo/publisher/model/z;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 137
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 139
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 141
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 143
    iget v2, p0, Lcom/criteo/publisher/model/a;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 145
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/k/a/c;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 147
    iget-object v1, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CdbRequest{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/criteo/publisher/model/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gdprData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/k/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
