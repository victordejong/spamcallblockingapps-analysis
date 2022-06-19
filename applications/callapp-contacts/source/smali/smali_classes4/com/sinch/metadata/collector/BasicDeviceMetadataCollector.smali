.class public final Lcom/sinch/metadata/collector/BasicDeviceMetadataCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "Lcom/sinch/metadata/model/DeviceMetadata;",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/BasicDeviceMetadataCollector;",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "Lcom/sinch/metadata/model/DeviceMetadata;",
        "Lcom/sinch/metadata/collector/DeviceMetadataCollector;",
        "()V",
        "collect",
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
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect()Lcom/sinch/metadata/model/DeviceMetadata;
    .locals 5

    .line 12
    new-instance v0, Lcom/sinch/metadata/model/DeviceMetadata;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Build.MODEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "Build.DEVICE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Build.MANUFACTURER"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sinch/metadata/model/DeviceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic collect()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/BasicDeviceMetadataCollector;->collect()Lcom/sinch/metadata/model/DeviceMetadata;

    move-result-object v0

    return-object v0
.end method
