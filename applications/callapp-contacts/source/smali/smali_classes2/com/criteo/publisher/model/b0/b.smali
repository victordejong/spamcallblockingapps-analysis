.class abstract Lcom/criteo/publisher/model/b0/b;
.super Lcom/criteo/publisher/model/b0/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/model/b0/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/model/b0/m;

.field private final c:Lcom/criteo/publisher/model/b0/q;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/criteo/publisher/model/b0/m;Lcom/criteo/publisher/model/b0/q;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;",
            "Lcom/criteo/publisher/model/b0/m;",
            "Lcom/criteo/publisher/model/b0/q;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/criteo/publisher/model/b0/n;-><init>()V

    const-string v0, "Null nativeProducts"

    .line 24
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b;->a:Ljava/util/List;

    const-string p1, "Null advertiser"

    .line 28
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lcom/criteo/publisher/model/b0/b;->b:Lcom/criteo/publisher/model/b0/m;

    const-string p1, "Null privacy"

    .line 32
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lcom/criteo/publisher/model/b0/b;->c:Lcom/criteo/publisher/model/b0/q;

    const-string p1, "Null pixels"

    .line 36
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iput-object p4, p0, Lcom/criteo/publisher/model/b0/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method b()Lcom/criteo/publisher/model/b0/m;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b;->b:Lcom/criteo/publisher/model/b0/m;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/b0/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 83
    check-cast p1, Lcom/criteo/publisher/model/b0/n;

    .line 84
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->b:Lcom/criteo/publisher/model/b0/m;

    .line 85
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->b()Lcom/criteo/publisher/model/b0/m;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->c:Lcom/criteo/publisher/model/b0/q;

    .line 86
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->j()Lcom/criteo/publisher/model/b0/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->d:Ljava/util/List;

    .line 87
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method h()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 98
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/b;->b:Lcom/criteo/publisher/model/b0/m;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 100
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/b;->c:Lcom/criteo/publisher/model/b0/q;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 102
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method i()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "impressionPixels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b;->d:Ljava/util/List;

    return-object v0
.end method

.method j()Lcom/criteo/publisher/model/b0/q;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b;->c:Lcom/criteo/publisher/model/b0/q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeAssets{nativeProducts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", advertiser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->b:Lcom/criteo/publisher/model/b0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", privacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->c:Lcom/criteo/publisher/model/b0/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
