.class public final Lcom/criteo/publisher/model/BannerAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/model/AdUnit;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u001c\u0010\u0008\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0004R\u0016\u0010\u001a\u001a\u00020\u00178V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/criteo/publisher/model/BannerAdUnit;",
        "Lcom/criteo/publisher/model/AdUnit;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/criteo/publisher/model/AdSize;",
        "component2",
        "()Lcom/criteo/publisher/model/AdSize;",
        "adUnitId",
        "size",
        "copy",
        "(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/BannerAdUnit;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "toString",
        "Ljava/lang/String;",
        "getAdUnitId",
        "Lcom/criteo/publisher/util/AdUnitType;",
        "getAdUnitType",
        "()Lcom/criteo/publisher/util/AdUnitType;",
        "adUnitType",
        "Lcom/criteo/publisher/model/AdSize;",
        "getSize",
        "<init>",
        "(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V",
        "publisher-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# instance fields
.field private final adUnitId:Ljava/lang/String;

.field private final size:Lcom/criteo/publisher/model/AdSize;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/model/BannerAdUnit;->adUnitId:Ljava/lang/String;

    iput-object p2, p0, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

    return-void
.end method

.method public static synthetic copy$default(Lcom/criteo/publisher/model/BannerAdUnit;Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;ILjava/lang/Object;)Lcom/criteo/publisher/model/BannerAdUnit;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/BannerAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/BannerAdUnit;->copy(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/BannerAdUnit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/criteo/publisher/model/BannerAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/criteo/publisher/model/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/BannerAdUnit;
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-direct {v0, p1, p2}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/model/BannerAdUnit;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/BannerAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/BannerAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

    iget-object p1, p1, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

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

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/criteo/publisher/model/BannerAdUnit;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdUnitType()Lcom/criteo/publisher/m0/a;
    .locals 1

    .line 27
    sget-object v0, Lcom/criteo/publisher/m0/a;->a:Lcom/criteo/publisher/m0/a;

    return-object v0
.end method

.method public final getSize()Lcom/criteo/publisher/model/AdSize;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/criteo/publisher/model/BannerAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/criteo/publisher/model/AdSize;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BannerAdUnit(adUnitId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/criteo/publisher/model/BannerAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/criteo/publisher/model/BannerAdUnit;->size:Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
