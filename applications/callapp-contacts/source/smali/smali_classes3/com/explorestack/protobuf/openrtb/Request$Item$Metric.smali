.class public final Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metric"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

.field public static final EXT_FIELD_NUMBER:I = 0x5

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field public static final VENDOR_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private memoizedIsInitialized:B

.field private volatile type_:Ljava/lang/Object;

.field private value_:F

.field private volatile vendor_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4590
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    .line 4598
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3144
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3445
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3145
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    .line 3146
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    .line 3147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3166
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;-><init>()V

    .line 3168
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 3176
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    const/16 v5, 0x15

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 3221
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 3209
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 3210
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 3212
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 3214
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 3215
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 3200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 3203
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    .line 3204
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 3203
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3193
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3195
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    goto :goto_0

    .line 3189
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->value_:F

    goto :goto_0

    .line 3182
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3184
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3232
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3233
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3230
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_9

    .line 3236
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    .line 3238
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->makeExtensionsImmutable()V

    .line 3240
    throw p1

    :cond_a
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_b

    .line 3236
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    .line 3238
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3135
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3142
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3445
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 3135
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2300()Z
    .locals 1

    .line 3135
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/lang/Object;
    .locals 0

    .line 3135
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3135
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;F)F
    .locals 0

    .line 3135
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->value_:F

    return p1
.end method

.method static synthetic access$2700(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/lang/Object;
    .locals 0

    .line 3135
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3135
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 3135
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Ljava/util/List;
    .locals 0

    .line 3135
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3135
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 3135
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 3135
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 3135
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3135
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3135
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1

    .line 4594
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3244
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 3634
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 3637
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3607
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3608
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3614
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3615
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3575
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3581
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3620
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3621
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3627
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3628
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3595
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3596
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3602
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3603
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3564
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3570
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3585
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3591
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation

    .line 4609
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3511
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    if-nez v1, :cond_1

    .line 3512
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3514
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    .line 3516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getType()Ljava/lang/String;

    move-result-object v1

    .line 3517
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 3518
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3520
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getValue()F

    move-result v3

    .line 3519
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 3521
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getVendor()Ljava/lang/String;

    move-result-object v1

    .line 3522
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 3523
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 3524
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 3526
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 3528
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 3529
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 3530
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1

    .line 4619
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 3377
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 3387
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 3431
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 3421
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 3400
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 3442
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3411
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation

    .line 4614
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 3479
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3483
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3484
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3486
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->value_:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 3488
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 3490
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getVendorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    .line 3491
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3493
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 3494
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    .line 3495
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3497
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 3499
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3501
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3502
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedSize:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    .line 3266
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    .line 3267
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3268
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3270
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3272
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3273
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3287
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    .line 3288
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3289
    check-cast v0, Ljava/lang/String;

    .line 3290
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3292
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    return-object v0

    .line 3295
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 3160
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValue()F
    .locals 1

    .line 3310
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->value_:F

    return v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 2

    .line 3324
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    .line 3325
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3326
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3328
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3330
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3331
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVendorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3345
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    .line 3346
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3347
    check-cast v0, Ljava/lang/String;

    .line 3348
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3350
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    return-object v0

    .line 3353
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 3367
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 3536
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3537
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedHashCode:I

    return v0

    .line 3540
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getValue()F

    move-result v1

    .line 3544
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3547
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 3550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3552
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 3556
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3557
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3250
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    .line 3251
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3448
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3452
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3135
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 1

    .line 3632
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 3648
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3154
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3135
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;
    .locals 2

    .line 3641
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 3642
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getTypeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3460
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->type_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3462
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->value_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 3463
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3465
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getVendorBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 3466
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->vendor_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    .line 3468
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 3469
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3471
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 3472
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3474
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
