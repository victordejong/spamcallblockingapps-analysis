.class abstract Lcom/criteo/publisher/model/b0/f;
.super Lcom/criteo/publisher/model/b0/r;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/net/URI;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/criteo/publisher/model/b0/o;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Lcom/criteo/publisher/model/b0/o;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/criteo/publisher/model/b0/r;-><init>()V

    const-string v0, "Null title"

    .line 29
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/f;->a:Ljava/lang/String;

    const-string p1, "Null description"

    .line 33
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lcom/criteo/publisher/model/b0/f;->b:Ljava/lang/String;

    const-string p1, "Null price"

    .line 37
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iput-object p3, p0, Lcom/criteo/publisher/model/b0/f;->c:Ljava/lang/String;

    const-string p1, "Null clickUrl"

    .line 41
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iput-object p4, p0, Lcom/criteo/publisher/model/b0/f;->d:Ljava/net/URI;

    const-string p1, "Null callToAction"

    .line 45
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iput-object p5, p0, Lcom/criteo/publisher/model/b0/f;->e:Ljava/lang/String;

    const-string p1, "Null image"

    .line 49
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iput-object p6, p0, Lcom/criteo/publisher/model/b0/f;->f:Lcom/criteo/publisher/model/b0/o;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/net/URI;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/f;->d:Ljava/net/URI;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()Lcom/criteo/publisher/model/b0/o;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/f;->f:Lcom/criteo/publisher/model/b0/o;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 107
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/b0/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 108
    check-cast p1, Lcom/criteo/publisher/model/b0/r;

    .line 109
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->b:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->c:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/r;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->d:Ljava/net/URI;

    .line 112
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/r;->b()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->e:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->f:Lcom/criteo/publisher/model/b0/o;

    .line 114
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/r;->d()Lcom/criteo/publisher/model/b0/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 125
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/f;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 127
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/f;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 129
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/f;->d:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 131
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/f;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 133
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->f:Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeProduct{title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->d:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callToAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/f;->f:Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
