.class public Lcom/criteo/publisher/model/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/model/AdSize;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/criteo/publisher/m0/a;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/model/AdSize;Ljava/lang/String;Lcom/criteo/publisher/m0/a;)V
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/model/n;->a:Lcom/criteo/publisher/model/AdSize;

    iput-object p2, p0, Lcom/criteo/publisher/model/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/criteo/publisher/model/n;->c:Lcom/criteo/publisher/m0/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/m0/a;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/criteo/publisher/model/n;->c:Lcom/criteo/publisher/m0/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/criteo/publisher/model/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/criteo/publisher/model/AdSize;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/criteo/publisher/model/n;->a:Lcom/criteo/publisher/model/AdSize;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/model/n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/model/n;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->a()Lcom/criteo/publisher/m0/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->a()Lcom/criteo/publisher/m0/a;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/AdSize;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->a()Lcom/criteo/publisher/m0/a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheAdUnit(size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/n;->a()Lcom/criteo/publisher/m0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
