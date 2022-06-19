.class public Lcom/explorestack/protobuf/MapEntryLite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/MapEntryLite$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_FIELD_NUMBER:I = 0x1

.field private static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
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
.method private constructor <init>(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    .line 83
    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lcom/explorestack/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/MapEntryLite$Metadata;-><init>(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    .line 76
    iput-object p2, p0, Lcom/explorestack/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    .line 77
    iput-object p4, p0, Lcom/explorestack/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-void
.end method

.method static computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/FieldSet;->computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const/4 v0, 0x2

    .line 115
    invoke-static {p0, v0, p2}, Lcom/explorestack/protobuf/FieldSet;->computeElementSize(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static newDefaultInstance(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntryLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TK;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TV;)",
            "Lcom/explorestack/protobuf/MapEntryLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/explorestack/protobuf/MapEntryLite;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/MapEntryLite;-><init>(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-object v0
.end method

.method static parseEntry(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 175
    iget-object v1, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 181
    iget-object v4, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 182
    iget-object v2, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v2, v0}, Lcom/explorestack/protobuf/MapEntryLite;->parseField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    .line 183
    iget-object v4, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 184
    iget-object v2, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-static {p0, p2, v2, v1}, Lcom/explorestack/protobuf/MapEntryLite;->parseField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/CodedInputStream;->skipField(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    :cond_3
    new-instance p0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method static parseField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/explorestack/protobuf/MapEntryLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p2}, Lcom/explorestack/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 135
    invoke-static {p0, p2, v1}, Lcom/explorestack/protobuf/FieldSet;->readPrimitiveField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Groups are not allowed in maps."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 127
    :cond_2
    check-cast p3, Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {p3}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    move-result-object p2

    .line 128
    invoke-virtual {p0, p2, p1}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    .line 129
    invoke-interface {p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->buildPartial()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method static writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 110
    iget-object p1, p1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/FieldSet;->writeElement(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 157
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    .line 159
    invoke-static {v0, p2, p3}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 158
    invoke-static {p2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntryLite;->key:Ljava/lang/Object;

    return-object v0
.end method

.method getMetadata()Lcom/explorestack/protobuf/MapEntryLite$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntryLite;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public parseEntry(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/ByteString;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->newCodedInput()Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    invoke-static {p1, v0, p2}, Lcom/explorestack/protobuf/MapEntryLite;->parseEntry(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public parseInto(Lcom/explorestack/protobuf/MapFieldLite;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 202
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    iget-object v1, v1, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 204
    iget-object v2, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    iget-object v2, v2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    .line 211
    iget-object v5, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 212
    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    iget-object v3, v3, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v3, v1}, Lcom/explorestack/protobuf/MapEntryLite;->parseField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    .line 213
    iget-object v5, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    iget-object v5, v5, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/explorestack/protobuf/WireFormat;->makeTag(II)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 214
    iget-object v3, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    iget-object v3, v3, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-static {p2, p3, v3, v2}, Lcom/explorestack/protobuf/MapEntryLite;->parseField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p2, v3}, Lcom/explorestack/protobuf/CodedInputStream;->skipField(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 p3, 0x0

    .line 222
    invoke-virtual {p2, p3}, Lcom/explorestack/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 223
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    .line 224
    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serializeTo(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "ITK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 146
    invoke-virtual {p1, p2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeTag(II)V

    .line 147
    iget-object p2, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 148
    iget-object p2, p0, Lcom/explorestack/protobuf/MapEntryLite;->metadata:Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
