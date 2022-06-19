.class public final Lcom/explorestack/protobuf/DynamicMessage;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DynamicMessage$Builder;
    }
.end annotation


# instance fields
.field private final fields:Lcom/explorestack/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSize:I

.field private final oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;[",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->memoizedSize:I

    .line 71
    iput-object p1, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 72
    iput-object p2, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    .line 73
    iput-object p3, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 74
    iput-object p4, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$200(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/FieldSet;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/DynamicMessage;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/DynamicMessage;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method public static getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    .line 80
    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 81
    new-instance v1, Lcom/explorestack/protobuf/DynamicMessage;

    .line 83
    invoke-static {}, Lcom/explorestack/protobuf/FieldSet;->emptySet()Lcom/explorestack/protobuf/FieldSet;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/explorestack/protobuf/DynamicMessage;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/UnknownFieldSet;)V

    return-object v1
.end method

.method static isInitialized(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/FieldSet<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 228
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldSet;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 2

    .line 141
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 3

    .line 149
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-interface {p0}, Lcom/explorestack/protobuf/Message;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DynamicMessage$1;)V

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistry;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 112
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistry;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistry;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;[B)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom([B)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/Descriptors$Descriptor;[BLcom/explorestack/protobuf/ExtensionRegistry;)Lcom/explorestack/protobuf/DynamicMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 125
    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilder(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    invoke-static {p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->access$000(Lcom/explorestack/protobuf/DynamicMessage$Builder;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method private verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 304
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    if-ne p1, v0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 194
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 195
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 197
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 200
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/protobuf/DynamicMessage;->getDefaultInstance(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DynamicMessage;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 182
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 183
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/DynamicMessage;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$1;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/DynamicMessage$1;-><init>(Lcom/explorestack/protobuf/DynamicMessage;)V

    return-object v0
.end method

.method public final getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 216
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 217
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 210
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 211
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final getSerializedSize()I
    .locals 2

    .line 257
    iget v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 268
    iput v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 188
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyContainingType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 189
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->hasField(Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public final hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 172
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DynamicMessage;->verifyOneofContainingType(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 173
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->oneofCases:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DynamicMessage;->isInitialized(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 3

    .line 274
    new-instance v0, Lcom/explorestack/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/DynamicMessage$Builder;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/DynamicMessage$Builder;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->newBuilderForType()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->toBuilder()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DynamicMessage;->toBuilder()Lcom/explorestack/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->type:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->writeMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 248
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->fields:Lcom/explorestack/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/FieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 251
    iget-object v0, p0, Lcom/explorestack/protobuf/DynamicMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
