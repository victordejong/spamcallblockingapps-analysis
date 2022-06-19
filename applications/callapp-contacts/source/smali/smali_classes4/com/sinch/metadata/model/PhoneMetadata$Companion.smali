.class public final Lcom/sinch/metadata/model/PhoneMetadata$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/metadata/model/PhoneMetadata;
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
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u009c\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0010\u0010\n\u001a\u000c\u0012\u0004\u0012\u00020\u000c0\u000bj\u0002`\r2\u0018\u0010\u000e\u001a\u0014\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000bj\u0002`\u00112\u0010\u0010\u0012\u001a\u000c\u0012\u0004\u0012\u00020\u00130\u000bj\u0002`\u00142\u0010\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\u00080\u000bj\u0002`\u00162\u0010\u0010\u0017\u001a\u000c\u0012\u0004\u0012\u00020\u00180\u000bj\u0002`\u00192\u0010\u0010\u001a\u001a\u000c\u0012\u0004\u0012\u00020\u001b0\u000bj\u0002`\u001c2\u0010\u0010\u001d\u001a\u000c\u0012\u0004\u0012\u00020\u00080\u000bj\u0002`\u001eJ\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060 H\u00c6\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sinch/metadata/model/PhoneMetadata$Companion;",
        "",
        "()V",
        "METADATA_VERSION_NUMBER",
        "",
        "createUsing",
        "Lcom/sinch/metadata/model/PhoneMetadata;",
        "sdk",
        "",
        "sdkFlavor",
        "deviceMetadataCollector",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "Lcom/sinch/metadata/model/DeviceMetadata;",
        "Lcom/sinch/metadata/collector/DeviceMetadataCollector;",
        "simCardInfoCollector",
        "",
        "Lcom/sinch/metadata/model/sim/SimCardInfo;",
        "Lcom/sinch/metadata/collector/SimCardInfoCollector;",
        "simsStateCollector",
        "Lcom/sinch/metadata/model/sim/SimState;",
        "Lcom/sinch/metadata/collector/SimsStateCollector;",
        "localeCollector",
        "Lcom/sinch/metadata/collector/LocaleCollector;",
        "permissionsCollector",
        "Lcom/sinch/metadata/model/PermissionsMetadata;",
        "Lcom/sinch/metadata/collector/PermissionsCollector;",
        "networkInfoCollector",
        "Lcom/sinch/metadata/model/network/NetworkInfo;",
        "Lcom/sinch/metadata/collector/NetworkInfoCollector;",
        "batteryLevelCollector",
        "Lcom/sinch/metadata/collector/BatteryLevelCollector;",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/sinch/metadata/model/PhoneMetadata$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createUsing(Ljava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;Lcom/sinch/metadata/collector/MetadataCollector;)Lcom/sinch/metadata/model/PhoneMetadata;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sinch/metadata/collector/MetadataCollector<",
            "Lcom/sinch/metadata/model/DeviceMetadata;",
            ">;",
            "Lcom/sinch/metadata/collector/MetadataCollector<",
            "Ljava/util/List<",
            "Lcom/sinch/metadata/model/sim/SimCardInfo;",
            ">;>;",
            "Lcom/sinch/metadata/collector/MetadataCollector<",
            "Lcom/sinch/metadata/model/sim/SimState;",
            ">;",
            "Lcom/sinch/metadata/collector/MetadataCollector<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sinch/metadata/collector/MetadataCollector<",
            "Lcom/sinch/metadata/model/PermissionsMetadata;",
            ">;",
            "Lcom/sinch/metadata/collector/MetadataCollector<",
            "Lcom/sinch/metadata/model/network/NetworkInfo;",
            ">;",
            "Lcom/sinch/metadata/collector/MetadataCollector<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sinch/metadata/model/PhoneMetadata;"
        }
    .end annotation

    const-string v0, "sdk"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkFlavor"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceMetadataCollector"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simCardInfoCollector"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simsStateCollector"

    move-object/from16 v3, p5

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeCollector"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsCollector"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoCollector"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batteryLevelCollector"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/sinch/metadata/model/PhoneMetadata;

    .line 75
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v11, "Build.VERSION.RELEASE"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-interface/range {p3 .. p3}, Lcom/sinch/metadata/collector/MetadataCollector;->collect()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/sinch/metadata/model/DeviceMetadata;

    .line 79
    invoke-interface/range {p4 .. p4}, Lcom/sinch/metadata/collector/MetadataCollector;->collect()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    .line 80
    invoke-interface/range {p5 .. p5}, Lcom/sinch/metadata/collector/MetadataCollector;->collect()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/sinch/metadata/model/sim/SimState;

    .line 81
    invoke-interface/range {p6 .. p6}, Lcom/sinch/metadata/collector/MetadataCollector;->collect()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 82
    invoke-interface/range {p7 .. p7}, Lcom/sinch/metadata/collector/MetadataCollector;->collect()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/sinch/metadata/model/PermissionsMetadata;

    .line 83
    invoke-interface/range {p8 .. p8}, Lcom/sinch/metadata/collector/MetadataCollector;->collect()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/sinch/metadata/model/network/NetworkInfo;

    .line 84
    invoke-interface/range {p9 .. p9}, Lcom/sinch/metadata/collector/MetadataCollector;->collect()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v1, v0

    move-object v2, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move/from16 v13, v18

    move-object/from16 v14, v19

    .line 74
    invoke-direct/range {v1 .. v14}, Lcom/sinch/metadata/model/PhoneMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/DeviceMetadata;Ljava/util/List;Lcom/sinch/metadata/model/sim/SimState;Ljava/lang/String;Lcom/sinch/metadata/model/PermissionsMetadata;Lcom/sinch/metadata/model/network/NetworkInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/sinch/metadata/model/PhoneMetadata;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/PhoneMetadata$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
