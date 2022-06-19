.class public final Lcom/sinch/metadata/model/PhoneMetadata$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/metadata/model/PhoneMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/b/w<",
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
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/sinch/metadata/model/PhoneMetadata.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/sinch/metadata/model/PhoneMetadata;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/SerialDescriptor;

.field public static final INSTANCE:Lcom/sinch/metadata/model/PhoneMetadata$$serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;

    invoke-direct {v0}, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;-><init>()V

    sput-object v0, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/PhoneMetadata$$serializer;

    new-instance v1, Lkotlinx/serialization/b/bf;

    check-cast v0, Lkotlinx/serialization/b/w;

    const-string v2, "com.sinch.metadata.model.PhoneMetadata"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/b/bf;-><init>(Ljava/lang/String;Lkotlinx/serialization/b/w;I)V

    const-string v0, "os"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "platform"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "sdk"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "buildFlavor"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "device"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "simCardsInfo"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "simState"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "defaultLocale"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "permissions"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "networkInfo"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "batteryLevel"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "version"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "simCardCount"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    sput-object v1, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/DeviceMetadata$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;->INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/b/aw;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sinch/metadata/model/sim/SimState$$serializer;->INSTANCE:Lcom/sinch/metadata/model/sim/SimState$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sinch/metadata/model/network/NetworkInfo$$serializer;->INSTANCE:Lcom/sinch/metadata/model/network/NetworkInfo$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/ad;->a:Lkotlinx/serialization/b/ad;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/ad;->a:Lkotlinx/serialization/b/ad;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-static {v1}, Lkotlinx/serialization/b/aw;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/metadata/model/PhoneMetadata;
    .locals 43

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/Decoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/a;->decodeSequentially()Z

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v11

    sget-object v15, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/DeviceMetadata$$serializer;

    check-cast v15, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v13, v15}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sinch/metadata/model/DeviceMetadata;

    sget-object v15, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;->INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;

    check-cast v15, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v10, v15}, Lkotlinx/serialization/a;->decodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    sget-object v15, Lcom/sinch/metadata/model/sim/SimState$$serializer;->INSTANCE:Lcom/sinch/metadata/model/sim/SimState$$serializer;

    check-cast v15, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v9, v15}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sinch/metadata/model/sim/SimState;

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v8

    sget-object v15, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;

    check-cast v15, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v12, v15}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sinch/metadata/model/PermissionsMetadata;

    sget-object v15, Lcom/sinch/metadata/model/network/NetworkInfo$$serializer;->INSTANCE:Lcom/sinch/metadata/model/network/NetworkInfo$$serializer;

    check-cast v15, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v7, v15}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sinch/metadata/model/network/NetworkInfo;

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/a;->decodeIntElement(Lkotlinx/serialization/SerialDescriptor;I)I

    move-result v5

    sget-object v15, Lkotlinx/serialization/b/ad;->a:Lkotlinx/serialization/b/ad;

    check-cast v15, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v4, v15}, Lkotlinx/serialization/a;->decodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const v15, 0x7fffffff

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v41, v4

    move/from16 v40, v5

    move-object/from16 v39, v6

    move-object/from16 v38, v7

    move-object/from16 v36, v8

    move-object/from16 v35, v9

    move-object/from16 v34, v10

    move-object/from16 v32, v11

    move-object/from16 v37, v12

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    const v28, 0x7fffffff

    goto/16 :goto_a

    :cond_0
    const/4 v3, 0x0

    move-object v2, v3

    move-object v11, v2

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v19, v16

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/a;->decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_0
    sget-object v9, Lkotlinx/serialization/b/ad;->a:Lkotlinx/serialization/b/ad;

    check-cast v9, Lkotlinx/serialization/KSerializer;

    and-int/lit16 v8, v10, 0x1000

    if-eqz v8, :cond_1

    invoke-interface {v0, v1, v4, v9, v2}, Lkotlinx/serialization/a;->updateNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1, v4, v9}, Lkotlinx/serialization/a;->decodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Ljava/lang/Integer;

    or-int/lit16 v10, v10, 0x1000

    goto :goto_2

    :pswitch_1
    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/a;->decodeIntElement(Lkotlinx/serialization/SerialDescriptor;I)I

    move-result v18

    or-int/lit16 v10, v10, 0x800

    goto :goto_2

    :pswitch_2
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit16 v10, v10, 0x400

    :goto_2
    const/4 v8, 0x7

    goto :goto_0

    :pswitch_3
    sget-object v8, Lcom/sinch/metadata/model/network/NetworkInfo$$serializer;->INSTANCE:Lcom/sinch/metadata/model/network/NetworkInfo$$serializer;

    check-cast v8, Lkotlinx/serialization/KSerializer;

    and-int/lit16 v9, v10, 0x200

    if-eqz v9, :cond_2

    invoke-interface {v0, v1, v7, v8, v15}, Lkotlinx/serialization/a;->updateSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_2
    invoke-interface {v0, v1, v7, v8}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v8

    :goto_3
    move-object v15, v8

    check-cast v15, Lcom/sinch/metadata/model/network/NetworkInfo;

    or-int/lit16 v10, v10, 0x200

    goto :goto_2

    :pswitch_4
    sget-object v8, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;

    check-cast v8, Lkotlinx/serialization/KSerializer;

    and-int/lit16 v9, v10, 0x100

    if-eqz v9, :cond_3

    invoke-interface {v0, v1, v12, v8, v13}, Lkotlinx/serialization/a;->updateSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    :cond_3
    invoke-interface {v0, v1, v12, v8}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v8

    :goto_4
    move-object v13, v8

    check-cast v13, Lcom/sinch/metadata/model/PermissionsMetadata;

    or-int/lit16 v10, v10, 0x100

    goto :goto_2

    :pswitch_5
    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v20

    or-int/lit16 v10, v10, 0x80

    goto :goto_0

    :pswitch_6
    sget-object v9, Lcom/sinch/metadata/model/sim/SimState$$serializer;->INSTANCE:Lcom/sinch/metadata/model/sim/SimState$$serializer;

    check-cast v9, Lkotlinx/serialization/KSerializer;

    and-int/lit8 v26, v10, 0x40

    const/4 v4, 0x6

    if-eqz v26, :cond_4

    invoke-interface {v0, v1, v4, v9, v14}, Lkotlinx/serialization/a;->updateSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :cond_4
    invoke-interface {v0, v1, v4, v9}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v9

    :goto_5
    move-object v14, v9

    check-cast v14, Lcom/sinch/metadata/model/sim/SimState;

    or-int/lit8 v10, v10, 0x40

    goto :goto_7

    :pswitch_7
    const/4 v4, 0x6

    sget-object v9, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;->INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;

    check-cast v9, Lkotlinx/serialization/KSerializer;

    and-int/lit8 v25, v10, 0x20

    const/4 v4, 0x5

    if-eqz v25, :cond_5

    invoke-interface {v0, v1, v4, v9, v11}, Lkotlinx/serialization/a;->updateNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_6

    :cond_5
    invoke-interface {v0, v1, v4, v9}, Lkotlinx/serialization/a;->decodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v9

    :goto_6
    move-object v11, v9

    check-cast v11, Ljava/util/List;

    or-int/lit8 v10, v10, 0x20

    :goto_7
    const/16 v4, 0xc

    goto/16 :goto_0

    :pswitch_8
    const/4 v4, 0x5

    sget-object v9, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/DeviceMetadata$$serializer;

    check-cast v9, Lkotlinx/serialization/KSerializer;

    and-int/lit8 v24, v10, 0x10

    if-eqz v24, :cond_6

    move-object/from16 v4, v22

    const/4 v5, 0x4

    invoke-interface {v0, v1, v5, v9, v4}, Lkotlinx/serialization/a;->updateSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_8

    :cond_6
    const/4 v5, 0x4

    invoke-interface {v0, v1, v5, v9}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v4

    :goto_8
    move-object/from16 v22, v4

    check-cast v22, Lcom/sinch/metadata/model/DeviceMetadata;

    or-int/lit8 v10, v10, 0x10

    goto :goto_9

    :pswitch_9
    move-object/from16 v4, v22

    const/4 v5, 0x4

    const/4 v9, 0x3

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v21

    or-int/lit8 v10, v10, 0x8

    goto :goto_9

    :pswitch_a
    move-object/from16 v4, v22

    const/4 v5, 0x2

    const/4 v9, 0x3

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v23

    or-int/lit8 v10, v10, 0x4

    goto :goto_9

    :pswitch_b
    move-object/from16 v4, v22

    const/4 v5, 0x1

    const/4 v9, 0x3

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    or-int/lit8 v10, v10, 0x2

    goto :goto_9

    :pswitch_c
    move-object/from16 v4, v22

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x3

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v17

    or-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v17

    :goto_9
    const/16 v4, 0xc

    const/16 v5, 0xb

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v4, v22

    move-object/from16 v41, v2

    move-object/from16 v29, v3

    move-object/from16 v33, v4

    move/from16 v28, v10

    move-object/from16 v34, v11

    move-object/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v38, v15

    move-object/from16 v30, v16

    move/from16 v40, v18

    move-object/from16 v39, v19

    move-object/from16 v36, v20

    move-object/from16 v32, v21

    move-object/from16 v31, v23

    :goto_a
    invoke-interface {v0, v1}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    new-instance v0, Lcom/sinch/metadata/model/PhoneMetadata;

    const/16 v42, 0x0

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v42}, Lcom/sinch/metadata/model/PhoneMetadata;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/DeviceMetadata;Ljava/util/List;Lcom/sinch/metadata/model/sim/SimState;Ljava/lang/String;Lcom/sinch/metadata/model/PermissionsMetadata;Lcom/sinch/metadata/model/network/NetworkInfo;Ljava/lang/String;ILjava/lang/Integer;Lkotlinx/serialization/SerializationConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lcom/sinch/metadata/model/PhoneMetadata;)Lcom/sinch/metadata/model/PhoneMetadata;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1}, Lkotlinx/serialization/b/w$a;->a(Lkotlinx/serialization/b/w;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sinch/metadata/model/PhoneMetadata;

    return-object p1
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p2, Lcom/sinch/metadata/model/PhoneMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->patch(Lkotlinx/serialization/Decoder;Lcom/sinch/metadata/model/PhoneMetadata;)Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/metadata/model/PhoneMetadata;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/Encoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/sinch/metadata/model/PhoneMetadata;->write$Self(Lcom/sinch/metadata/model/PhoneMetadata;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/CompositeEncoder;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/sinch/metadata/model/PhoneMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/metadata/model/PhoneMetadata;)V

    return-void
.end method
