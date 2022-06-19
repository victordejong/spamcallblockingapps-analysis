.class public final Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/metadata/model/PermissionsMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/b/w<",
        "Lcom/sinch/metadata/model/PermissionsMetadata;",
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
        "com/sinch/metadata/model/PermissionsMetadata.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/sinch/metadata/model/PermissionsMetadata;",
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

.field public static final INSTANCE:Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;

    invoke-direct {v0}, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;-><init>()V

    sput-object v0, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;

    new-instance v1, Lkotlinx/serialization/b/bf;

    check-cast v0, Lkotlinx/serialization/b/w;

    const-string v2, "com.sinch.metadata.model.PermissionsMetadata"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/b/bf;-><init>(Ljava/lang/String;Lkotlinx/serialization/b/w;I)V

    const-string v0, "READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "READ_CALL_LOG"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "CALL_PHONE"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "READ_SMS"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "getCellularSignalLevel"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    sput-object v1, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
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

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/metadata/model/PermissionsMetadata;
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/Decoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/a;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v2

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v3

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v8

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v6

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v7

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v5

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v4

    const v9, 0x7fffffff

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v21, v8

    const v18, 0x7fffffff

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/a;->decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v2}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_0
    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v11

    or-int/lit8 v16, v16, 0x40

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v12

    or-int/lit8 v16, v16, 0x20

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v14

    or-int/lit8 v16, v16, 0x10

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v13

    or-int/lit8 v16, v16, 0x8

    goto :goto_0

    :pswitch_4
    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v15

    or-int/lit8 v16, v16, 0x4

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v10

    or-int/lit8 v16, v16, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/a;->decodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v3

    or-int/lit8 v16, v16, 0x1

    goto :goto_0

    :pswitch_7
    move/from16 v19, v3

    move/from16 v20, v10

    move/from16 v25, v11

    move/from16 v24, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v21, v15

    move/from16 v18, v16

    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    new-instance v0, Lcom/sinch/metadata/model/PermissionsMetadata;

    const/16 v26, 0x0

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v26}, Lcom/sinch/metadata/model/PermissionsMetadata;-><init>(IZZZZZZZLkotlinx/serialization/SerializationConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 17
    invoke-virtual {p0, p1}, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/metadata/model/PermissionsMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lcom/sinch/metadata/model/PermissionsMetadata;)Lcom/sinch/metadata/model/PermissionsMetadata;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p1}, Lkotlinx/serialization/b/w$a;->a(Lkotlinx/serialization/b/w;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sinch/metadata/model/PermissionsMetadata;

    return-object p1
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p2, Lcom/sinch/metadata/model/PermissionsMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->patch(Lkotlinx/serialization/Decoder;Lcom/sinch/metadata/model/PermissionsMetadata;)Lcom/sinch/metadata/model/PermissionsMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/metadata/model/PermissionsMetadata;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/Encoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/sinch/metadata/model/PermissionsMetadata;->write$Self(Lcom/sinch/metadata/model/PermissionsMetadata;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/CompositeEncoder;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/sinch/metadata/model/PermissionsMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;->serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/metadata/model/PermissionsMetadata;)V

    return-void
.end method
