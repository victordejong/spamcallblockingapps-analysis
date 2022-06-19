.class abstract Lcom/criteo/publisher/model/b;
.super Lcom/criteo/publisher/model/q;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Boolean;

.field private final d:Ljava/lang/Boolean;

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/criteo/publisher/model/q;-><init>()V

    const-string v0, "Null getImpressionId"

    .line 28
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/criteo/publisher/model/b;->a:Ljava/lang/String;

    const-string p1, "Null getPlacementId"

    .line 32
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lcom/criteo/publisher/model/b;->b:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/criteo/publisher/model/b;->c:Ljava/lang/Boolean;

    .line 36
    iput-object p4, p0, Lcom/criteo/publisher/model/b;->d:Ljava/lang/Boolean;

    const-string p1, "Null getSizes"

    .line 38
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iput-object p5, p0, Lcom/criteo/publisher/model/b;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "impId"
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/criteo/publisher/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "placementId"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/criteo/publisher/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "sizes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/model/b;->e:Ljava/util/Collection;

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "interstitial"
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/criteo/publisher/model/b;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "isNative"
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/model/b;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 94
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 95
    check-cast p1, Lcom/criteo/publisher/model/q;

    .line 96
    iget-object v1, p0, Lcom/criteo/publisher/model/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/criteo/publisher/model/b;->b:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/criteo/publisher/model/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/criteo/publisher/model/b;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/criteo/publisher/model/q;->e()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/criteo/publisher/model/q;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/model/b;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/criteo/publisher/model/q;->d()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/criteo/publisher/model/q;->d()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/criteo/publisher/model/b;->e:Ljava/util/Collection;

    .line 100
    invoke-virtual {p1}, Lcom/criteo/publisher/model/q;->c()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/criteo/publisher/model/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 111
    iget-object v2, p0, Lcom/criteo/publisher/model/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 113
    iget-object v2, p0, Lcom/criteo/publisher/model/b;->c:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 115
    iget-object v2, p0, Lcom/criteo/publisher/model/b;->d:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 117
    iget-object v1, p0, Lcom/criteo/publisher/model/b;->e:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CdbRequestSlot{getImpressionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getPlacementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNativeAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/b;->e:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
