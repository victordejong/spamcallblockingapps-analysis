.class final synthetic Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$1;
.super Lkotlin/jvm/internal/m;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->collect()Lcom/sinch/metadata/model/network/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/sinch/metadata/model/network/NetworkData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/sinch/metadata/model/network/NetworkData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/m;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "collectNetworkData"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "collectNetworkData()Lcom/sinch/metadata/model/network/NetworkData;"

    return-object v0
.end method

.method public final invoke()Lcom/sinch/metadata/model/network/NetworkData;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;

    .line 38
    invoke-static {v0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->access$collectNetworkData(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)Lcom/sinch/metadata/model/network/NetworkData;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$1;->invoke()Lcom/sinch/metadata/model/network/NetworkData;

    move-result-object v0

    return-object v0
.end method
