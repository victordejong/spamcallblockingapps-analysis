.class public final Lcom/explorestack/protobuf/Field;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Field$Builder;,
        Lcom/explorestack/protobuf/Field$Cardinality;,
        Lcom/explorestack/protobuf/Field$Kind;
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0xb

.field public static final JSON_NAME_FIELD_NUMBER:I = 0xa

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x7

.field public static final OPTIONS_FIELD_NUMBER:I = 0x9

.field public static final PACKED_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private cardinality_:I

.field private volatile defaultValue_:Ljava/lang/Object;

.field private volatile jsonName_:Ljava/lang/Object;

.field private kind_:I

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private packed_:Z

.field private volatile typeUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2468
    new-instance v0, Lcom/explorestack/protobuf/Field;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Field;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    .line 2476
    new-instance v0, Lcom/explorestack/protobuf/Field$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Field$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1032
    iput-byte v0, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    .line 24
    iput v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 29
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field;-><init>()V

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 124
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/Field;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto :goto_2

    .line 118
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 120
    iput-object v4, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 114
    iput-object v4, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 107
    :cond_1
    iget-object v4, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 108
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 107
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    goto :goto_0

    .line 94
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    goto :goto_0

    .line 87
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 89
    iput-object v4, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 81
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 83
    iput-object v4, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 77
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/Field;->number_:I

    goto :goto_0

    .line 70
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 72
    iput v4, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    goto :goto_0

    .line 64
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 66
    iput v4, p0, Lcom/explorestack/protobuf/Field;->kind_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :sswitch_a
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 135
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 136
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 133
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_2

    .line 139
    iget-object p2, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->makeExtensionsImmutable()V

    .line 143
    throw p1

    :cond_3
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_4

    .line 139
    iget-object p1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 141
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x32 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Field$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1032
    iput-byte p1, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Field$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/Field;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Field;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    return p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    return p1
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/Field;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    return p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    return p1
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->number_:I

    return p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/Field;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    return p1
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/Field;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 2472
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 147
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1266
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->toBuilder()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1269
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->toBuilder()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1240
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1246
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1247
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1207
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1213
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1252
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1253
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1260
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1228
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1234
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1235
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1196
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1202
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1217
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1223
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Field;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 2487
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1131
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Field;

    if-nez v1, :cond_1

    .line 1132
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1134
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Field;

    .line 1136
    iget v1, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    iget v2, p1, Lcom/explorestack/protobuf/Field;->kind_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 1137
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    iget v2, p1, Lcom/explorestack/protobuf/Field;->cardinality_:I

    if-eq v1, v2, :cond_3

    return v3

    .line 1138
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v1

    .line 1139
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 1140
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 1142
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 1144
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v1

    .line 1145
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 1146
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v1

    .line 1147
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 1148
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 1149
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 1150
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 1152
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 1153
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 1154
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public final getCardinality()Lcom/explorestack/protobuf/Field$Cardinality;
    .locals 1

    .line 763
    iget v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Field$Cardinality;->valueOf(I)Lcom/explorestack/protobuf/Field$Cardinality;

    move-result-object v0

    if-nez v0, :cond_0

    .line 764
    sget-object v0, Lcom/explorestack/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Cardinality;

    :cond_0
    return-object v0
.end method

.method public final getCardinalityValue()I
    .locals 1

    .line 752
    iget v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 2497
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 1001
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1002
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1004
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1006
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1007
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    .line 1021
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1022
    check-cast v0, Ljava/lang/String;

    .line 1023
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1025
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 1028
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJsonName()Ljava/lang/String;
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 959
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 960
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 962
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 964
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 965
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    .line 979
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 980
    check-cast v0, Ljava/lang/String;

    .line 981
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 983
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 986
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getKind()Lcom/explorestack/protobuf/Field$Kind;
    .locals 1

    .line 738
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Field$Kind;->valueOf(I)Lcom/explorestack/protobuf/Field$Kind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 739
    sget-object v0, Lcom/explorestack/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/explorestack/protobuf/Field$Kind;

    :cond_0
    return-object v0
.end method

.method public final getKindValue()I
    .locals 1

    .line 727
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    .line 791
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 792
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 794
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 796
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 797
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    .line 811
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 812
    check-cast v0, Ljava/lang/String;

    .line 813
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 815
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    return-object v0

    .line 818
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 777
    iget v0, p0, Lcom/explorestack/protobuf/Field;->number_:I

    return v0
.end method

.method public final getOneofIndex()I
    .locals 1

    .line 877
    iget v0, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    return v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public final getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getPacked()Z
    .locals 1

    .line 890
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 2492
    sget-object v0, Lcom/explorestack/protobuf/Field;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 1081
    iget v0, p0, Lcom/explorestack/protobuf/Field;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1085
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    sget-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Kind;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1086
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    const/4 v1, 0x1

    .line 1087
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1089
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    sget-object v3, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/Field$Cardinality;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_2

    const/4 v1, 0x2

    .line 1090
    iget v3, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    .line 1091
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/Field;->number_:I

    if-eqz v1, :cond_3

    const/4 v3, 0x3

    .line 1095
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1097
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 1098
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1100
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 1101
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    if-eqz v1, :cond_6

    const/4 v3, 0x7

    .line 1105
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_6
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    .line 1109
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    const/16 v1, 0x9

    .line 1112
    iget-object v3, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    .line 1113
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1115
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    .line 1116
    iget-object v2, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1118
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    .line 1119
    iget-object v2, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1121
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1122
    iput v0, p0, Lcom/explorestack/protobuf/Field;->memoizedSize:I

    return v0
.end method

.method public final getTypeUrl()Ljava/lang/String;
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 834
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 835
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 837
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 839
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 840
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    .line 855
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 856
    check-cast v0, Ljava/lang/String;

    .line 857
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 859
    iput-object v0, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 862
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1160
    iget v0, p0, Lcom/explorestack/protobuf/Field;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1161
    iget v0, p0, Lcom/explorestack/protobuf/Field;->memoizedHashCode:I

    return v0

    .line 1164
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Field;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1166
    iget v1, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1168
    iget v1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 1174
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 1176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOneofIndex()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 1179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getPacked()Z

    move-result v1

    .line 1178
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 1182
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 1185
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 1187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1188
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1189
    iput v0, p0, Lcom/explorestack/protobuf/Field;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 153
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Field_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Field;

    const-class v2, Lcom/explorestack/protobuf/Field$Builder;

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1035
    iget-byte v0, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1039
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Field;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Field$Builder;
    .locals 1

    .line 1264
    invoke-static {}, Lcom/explorestack/protobuf/Field;->newBuilder()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Field$Builder;
    .locals 2

    .line 1280
    new-instance v0, Lcom/explorestack/protobuf/Field$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Field$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->newBuilderForType()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->newBuilderForType()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 36
    new-instance p1, Lcom/explorestack/protobuf/Field;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Field;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Field$Builder;
    .locals 2

    .line 1273
    sget-object v0, Lcom/explorestack/protobuf/Field;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Field;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/Field$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Field$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Field$Builder;-><init>(Lcom/explorestack/protobuf/Field$1;)V

    .line 1274
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Field$Builder;->mergeFrom(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->toBuilder()Lcom/explorestack/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->toBuilder()Lcom/explorestack/protobuf/Field$Builder;

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

    .line 1046
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    sget-object v1, Lcom/explorestack/protobuf/Field$Kind;->TYPE_UNKNOWN:Lcom/explorestack/protobuf/Field$Kind;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Kind;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1047
    iget v0, p0, Lcom/explorestack/protobuf/Field;->kind_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1049
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    sget-object v1, Lcom/explorestack/protobuf/Field$Cardinality;->CARDINALITY_UNKNOWN:Lcom/explorestack/protobuf/Field$Cardinality;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Field$Cardinality;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 1050
    iget v1, p0, Lcom/explorestack/protobuf/Field;->cardinality_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1052
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/Field;->number_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1053
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1055
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 1056
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1058
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    .line 1059
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->typeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1061
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/Field;->oneofIndex_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 1062
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1064
    :cond_5
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Field;->packed_:Z

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 1065
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_6
    const/4 v0, 0x0

    .line 1067
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x9

    .line 1068
    iget-object v2, p0, Lcom/explorestack/protobuf/Field;->options_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xa

    .line 1071
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->jsonName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1073
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field;->getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xb

    .line 1074
    iget-object v1, p0, Lcom/explorestack/protobuf/Field;->defaultValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1076
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/Field;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
