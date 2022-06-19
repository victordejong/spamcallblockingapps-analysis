.class public final Lcom/sinch/metadata/model/DeviceMetadata$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/metadata/model/DeviceMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/b/w<",
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
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/sinch/metadata/model/DeviceMetadata.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/sinch/metadata/model/DeviceMetadata;",
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

.field public static final INSTANCE:Lcom/sinch/metadata/model/DeviceMetadata$$serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;

    invoke-direct {v0}, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;-><init>()V

    sput-object v0, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/DeviceMetadata$$serializer;

    new-instance v1, Lkotlinx/serialization/b/bf;

    check-cast v0, Lkotlinx/serialization/b/w;

    const-string v2, "com.sinch.metadata.model.DeviceMetadata"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/b/bf;-><init>(Ljava/lang/String;Lkotlinx/serialization/b/w;I)V

    const-string v0, "model"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "idname"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v0, "manufacturer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    sput-object v1, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
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

    const/4 v0, 0x3

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

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/metadata/model/DeviceMetadata;
    .locals 14

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/Decoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/a;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v4}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v3}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7fffffff

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    const v9, 0x7fffffff

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v7, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lkotlinx/serialization/a;->decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    if-eqz v8, :cond_3

    if-eq v8, v4, :cond_2

    if-ne v8, v3, :cond_1

    invoke-interface {p1, v0, v3}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v6

    or-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    invoke-interface {p1, v0, v4}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move-object v10, v2

    move-object v11, v5

    move-object v12, v6

    move v9, v7

    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    new-instance p1, Lcom/sinch/metadata/model/DeviceMetadata;

    const/4 v13, 0x0

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lcom/sinch/metadata/model/DeviceMetadata;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V

    return-object p1
.end method

.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/metadata/model/DeviceMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lcom/sinch/metadata/model/DeviceMetadata;)Lcom/sinch/metadata/model/DeviceMetadata;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0, p1}, Lkotlinx/serialization/b/w$a;->a(Lkotlinx/serialization/b/w;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sinch/metadata/model/DeviceMetadata;

    return-object p1
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p2, Lcom/sinch/metadata/model/DeviceMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->patch(Lkotlinx/serialization/Decoder;Lcom/sinch/metadata/model/DeviceMetadata;)Lcom/sinch/metadata/model/DeviceMetadata;

    move-result-object p1

    return-object p1
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/metadata/model/DeviceMetadata;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/Encoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/sinch/metadata/model/DeviceMetadata;->write$Self(Lcom/sinch/metadata/model/DeviceMetadata;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/CompositeEncoder;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/sinch/metadata/model/DeviceMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/metadata/model/DeviceMetadata$$serializer;->serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/metadata/model/DeviceMetadata;)V

    return-void
.end method
