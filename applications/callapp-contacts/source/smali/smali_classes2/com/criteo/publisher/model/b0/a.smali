.class abstract Lcom/criteo/publisher/model/b0/a;
.super Lcom/criteo/publisher/model/b0/m;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/net/URI;

.field private final d:Lcom/criteo/publisher/model/b0/o;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Lcom/criteo/publisher/model/b0/o;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/criteo/publisher/model/b0/m;-><init>()V

    const-string v0, "Null domain"

    .line 23
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    const-string p1, "Null description"

    .line 27
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    const-string p1, "Null logoClickUrl"

    .line 31
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    const-string p1, "Null logo"

    .line 35
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object p4, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method c()Lcom/criteo/publisher/model/b0/o;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    return-object v0
.end method

.method d()Ljava/net/URI;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/b0/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 80
    check-cast p1, Lcom/criteo/publisher/model/b0/m;

    .line 81
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    .line 83
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->d()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    .line 84
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->c()Lcom/criteo/publisher/model/b0/o;

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

.method public hashCode()I
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 95
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 97
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 99
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeAdvertiser{domain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logoClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
