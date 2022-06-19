.class public abstract Lcom/explorestack/protobuf/GeneratedMessage;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;,
        Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;,
        Lcom/explorestack/protobuf/GeneratedMessage$CachedDescriptorRetriever;,
        Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;,
        Lcom/explorestack/protobuf/GeneratedMessage$ExtendableBuilder;,
        Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessage;,
        Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;,
        Lcom/explorestack/protobuf/GeneratedMessage$Builder;,
        Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;
    }
.end annotation


# static fields
.field protected static alwaysUseFieldBuilders:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    .line 76
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method protected constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->checkNotLite(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/GeneratedMessage;Z)Ljava/util/Map;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static checkNotLite(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/explorestack/protobuf/GeneratedMessage$ExtendableMessage<",
            "TMessageType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 3011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3015
    check-cast p0, Lcom/explorestack/protobuf/Extension;

    return-object p0

    .line 3012
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected non-lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static computeStringSize(ILjava/lang/Object;)I
    .locals 1

    .line 3019
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3020
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 3022
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method protected static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1

    .line 3027
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3028
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3030
    :cond_0
    check-cast p0, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    sput-boolean v0, Lcom/explorestack/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method private getAllFieldsMutable(Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 125
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 127
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 135
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getFieldCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    .line 136
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessage;->hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessage;->getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessage;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 146
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 147
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 151
    :cond_1
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessage;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_2

    .line 157
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessage;->getFieldRaw(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessage;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1970
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 1972
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1982
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1988
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1989
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 1991
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 1992
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1994
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1990
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1984
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/explorestack/protobuf/Message;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/explorestack/protobuf/Message;",
            ")",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1643
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;

    sget-object v1, Lcom/explorestack/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/explorestack/protobuf/Extension$ExtensionType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method public static newFileScopedGeneratedExtension(Ljava/lang/Class;Lcom/explorestack/protobuf/Message;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/explorestack/protobuf/Message;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1710
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;

    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessage$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/explorestack/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/explorestack/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method public static newMessageScopedGeneratedExtension(Lcom/explorestack/protobuf/Message;ILjava/lang/Class;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/explorestack/protobuf/Message;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Message;",
            "I",
            "Ljava/lang/Class;",
            "Lcom/explorestack/protobuf/Message;",
            ")",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1623
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;

    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessage$2;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$2;-><init>(Lcom/explorestack/protobuf/Message;I)V

    sget-object p0, Lcom/explorestack/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/explorestack/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method public static newMessageScopedGeneratedExtension(Lcom/explorestack/protobuf/Message;Ljava/lang/String;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/explorestack/protobuf/Message;",
            "Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Lcom/explorestack/protobuf/Message;",
            ")",
            "Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1683
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;

    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessage$3;

    invoke-direct {v1, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$3;-><init>(Lcom/explorestack/protobuf/Message;Ljava/lang/String;)V

    sget-object p0, Lcom/explorestack/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/explorestack/protobuf/Extension$ExtensionType;

    invoke-direct {v0, v1, p2, p3, p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Extension$ExtensionType;)V

    return-object v0
.end method

.method protected static parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    :try_start_0
    invoke-interface {p0, p1}, Lcom/explorestack/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 319
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/explorestack/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 328
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TM;>;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    :try_start_0
    invoke-interface {p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TM;>;",
            "Lcom/explorestack/protobuf/CodedInputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    :try_start_0
    invoke-interface {p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3036
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3037
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    return-void

    .line 3039
    :cond_0
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method protected static writeStringNoTag(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3045
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3046
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void

    .line 3048
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
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

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 197
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getAllFieldsRaw()Ljava/util/Map;
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

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessage;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getFieldRaw(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRaw(Lcom/explorestack/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessage;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 257
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 251
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessage;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    .line 339
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    .line 344
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/MessageReflection;->getSerializedSize(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/GeneratedMessage;->memoizedSize:I

    .line 346
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessage;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->has(Lcom/explorestack/protobuf/GeneratedMessage;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->has(Lcom/explorestack/protobuf/GeneratedMessage;)Z

    move-result p1

    return p1
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    .line 2015
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No map fields found in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .locals 5

    .line 167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 169
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 175
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Message;

    .line 180
    invoke-interface {v2}, Lcom/explorestack/protobuf/Message;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 185
    :cond_3
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Message;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Message;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 373
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessage$1;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$1;-><init>(Lcom/explorestack/protobuf/GeneratedMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessage;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
.end method

.method protected parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p2, p4, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/explorestack/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 3001
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/explorestack/protobuf/MessageLite;)V

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/explorestack/protobuf/MessageReflection;->writeMessageTo(Lcom/explorestack/protobuf/Message;Ljava/util/Map;Lcom/explorestack/protobuf/CodedOutputStream;Z)V

    return-void
.end method
