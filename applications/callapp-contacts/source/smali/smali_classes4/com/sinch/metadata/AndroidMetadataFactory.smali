.class public final Lcom/sinch/metadata/AndroidMetadataFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/utils/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/utils/Factory<",
        "Lcom/sinch/metadata/model/PhoneMetadata;",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sinch/metadata/AndroidMetadataFactory;",
        "Lcom/sinch/verification/utils/Factory;",
        "Lcom/sinch/metadata/model/PhoneMetadata;",
        "Lcom/sinch/metadata/model/PhoneMetadataFactory;",
        "context",
        "Landroid/content/Context;",
        "sdk",
        "",
        "sdkFlavor",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        "create",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final sdk:Ljava/lang/String;

.field private final sdkFlavor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkFlavor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->sdk:Ljava/lang/String;

    iput-object p3, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->sdkFlavor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create()Lcom/sinch/metadata/model/PhoneMetadata;
    .locals 11

    .line 27
    sget-object v0, Lcom/sinch/metadata/model/PhoneMetadata;->Companion:Lcom/sinch/metadata/model/PhoneMetadata$Companion;

    .line 28
    iget-object v1, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->sdk:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->sdkFlavor:Ljava/lang/String;

    .line 30
    new-instance v3, Lcom/sinch/metadata/collector/BasicDeviceMetadataCollector;

    invoke-direct {v3}, Lcom/sinch/metadata/collector/BasicDeviceMetadataCollector;-><init>()V

    check-cast v3, Lcom/sinch/metadata/collector/MetadataCollector;

    .line 31
    sget-object v4, Lcom/sinch/verification/utils/api/ApiLevelUtils;->INSTANCE:Lcom/sinch/verification/utils/api/ApiLevelUtils;

    invoke-virtual {v4}, Lcom/sinch/verification/utils/api/ApiLevelUtils;->isApi22OrLater()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;

    iget-object v5, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/sinch/metadata/collector/sim/LollipopSimCardInfoCollector;

    invoke-direct {v4}, Lcom/sinch/metadata/collector/sim/LollipopSimCardInfoCollector;-><init>()V

    :goto_0
    check-cast v4, Lcom/sinch/metadata/collector/MetadataCollector;

    .line 32
    new-instance v5, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;

    iget-object v6, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;-><init>(Landroid/content/Context;)V

    check-cast v5, Lcom/sinch/metadata/collector/MetadataCollector;

    .line 33
    new-instance v6, Lcom/sinch/metadata/collector/BasicLocaleCollector;

    iget-object v7, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/sinch/metadata/collector/BasicLocaleCollector;-><init>(Landroid/content/Context;)V

    check-cast v6, Lcom/sinch/metadata/collector/MetadataCollector;

    .line 34
    new-instance v7, Lcom/sinch/metadata/BasicPermissionsCollector;

    iget-object v8, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/sinch/metadata/BasicPermissionsCollector;-><init>(Landroid/content/Context;)V

    check-cast v7, Lcom/sinch/metadata/collector/MetadataCollector;

    .line 35
    new-instance v8, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;

    iget-object v9, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;-><init>(Landroid/content/Context;)V

    check-cast v8, Lcom/sinch/metadata/collector/MetadataCollector;

    .line 36
    new-instance v9, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;

    iget-object v10, p0, Lcom/sinch/metadata/AndroidMetadataFactory;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;-><init>(Landroid/content/Context;)V

    check-cast v9, Lcom/sinch/metadata/collector/MetadataCollector;

    .line 27
    invoke-virtual/range {v0 .. v9}, Lcom/sinch/metadata/model/PhoneMetadata$Companion;->createUsing(Ljava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;)Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/sinch/metadata/AndroidMetadataFactory;->create()Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object v0

    return-object v0
.end method
