.class public final Lcom/sinch/metadata/model/network/NetworkType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/metadata/model/network/NetworkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\nH\u00c6\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sinch/metadata/model/network/NetworkType$Companion;",
        "",
        "()V",
        "basedOn",
        "Lcom/sinch/metadata/model/network/NetworkType;",
        "capabilities",
        "Landroid/net/NetworkCapabilities;",
        "networkInfo",
        "Landroid/net/NetworkInfo;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sinch/metadata/model/network/NetworkType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final basedOn(Landroid/net/NetworkCapabilities;)Lcom/sinch/metadata/model/network/NetworkType;
    .locals 1

    const-string v0, "capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->WIFI:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->MOBILE:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1

    :cond_1
    const/4 v0, 0x3

    .line 52
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->ETHERNET:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1

    .line 53
    :cond_2
    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->NONE:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1
.end method

.method public final basedOn(Landroid/net/NetworkInfo;)Lcom/sinch/metadata/model/network/NetworkType;
    .locals 1

    const-string v0, "networkInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 66
    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->NONE:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1

    .line 65
    :cond_0
    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->ETHERNET:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1

    .line 63
    :cond_1
    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->WIFI:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1

    .line 64
    :cond_2
    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->MOBILE:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/sinch/metadata/model/network/NetworkType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sinch/metadata/model/network/NetworkType$$serializer;->INSTANCE:Lcom/sinch/metadata/model/network/NetworkType$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
