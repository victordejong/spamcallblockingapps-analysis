.class public final Lcom/explorestack/protobuf/MapEntry;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/MapEntry$Builder;,
        Lcom/explorestack/protobuf/MapEntry$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/AbstractMessage;"
    }
.end annotation


# instance fields
.field private volatile cachedSerializedSize:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    .line 88
    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    .line 89
    iput-object p5, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    .line 90
    new-instance p3, Lcom/explorestack/protobuf/MapEntry$Metadata;

    invoke-direct {p3, p1, p0, p2, p4}, Lcom/explorestack/protobuf/MapEntry$Metadata;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/MapEntry;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$FieldType;)V

    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    .line 106
    :try_start_0
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    .line 107
    invoke-static {p2, p1, p3}, Lcom/explorestack/protobuf/MapEntryLite;->parseEntry(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    .line 109
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 113
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 111
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MapEntry$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata;",
            "TK;TV;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    .line 96
    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/MapEntry$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/explorestack/protobuf/MapEntry;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/explorestack/protobuf/MapEntry;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/MapEntry;->isInitialized(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    .line 199
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong FieldDescriptor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 204
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isInitialized(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapEntry$Metadata;",
            "TV;)Z"
        }
    .end annotation

    .line 447
    iget-object p0, p0, Lcom/explorestack/protobuf/MapEntry$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object p0

    sget-object v0, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-ne p0, v0, :cond_0

    .line 448
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->isInitialized()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static newDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    new-instance v6, Lcom/explorestack/protobuf/MapEntry;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public final getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 191
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MapEntry;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/explorestack/protobuf/MapEntry;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, v1, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v3, v3, Lcom/explorestack/protobuf/MapEntry$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/MapEntry;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    .line 218
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 219
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 221
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method final getMetadata()Lcom/explorestack/protobuf/MapEntry$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v0, v0, Lcom/explorestack/protobuf/MapEntry$Metadata;->parser:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 0

    .line 234
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 229
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "There is no repeated field in a map entry message."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 143
    iget v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    iget v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 148
    iput v0, p0, Lcom/explorestack/protobuf/MapEntry;->cachedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 239
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/MapEntry;->checkFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/MapEntry;->isInitialized(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/explorestack/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Lcom/explorestack/protobuf/MapEntry$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/MapEntry$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntry$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 174
    new-instance v7, Lcom/explorestack/protobuf/MapEntry$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/explorestack/protobuf/MapEntry$Builder;-><init>(Lcom/explorestack/protobuf/MapEntry$Metadata;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/explorestack/protobuf/MapEntry$1;)V

    return-object v7
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->toBuilder()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapEntry;->toBuilder()Lcom/explorestack/protobuf/MapEntry$Builder;

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

    .line 154
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntry;->metadata:Lcom/explorestack/protobuf/MapEntry$Metadata;

    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
