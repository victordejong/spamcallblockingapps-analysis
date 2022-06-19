.class public abstract Lcom/explorestack/protobuf/GeneratedMessageV3;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$ExtensionDescriptorRetriever;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableBuilder;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessageOrBuilder;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;
    }
.end annotation


# static fields
.field public static alwaysUseFieldBuilders:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    .line 94
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->checkNotLite(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected static canUseUnsafe()Z
    .locals 1

    .line 384
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkNotLite(Lcom/explorestack/protobuf/ExtensionLite;)Lcom/explorestack/protobuf/Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
            "TMessageType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/explorestack/protobuf/Extension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 2818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2822
    check-cast p0, Lcom/explorestack/protobuf/Extension;

    return-object p0

    .line 2819
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected non-lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeStringSize(ILjava/lang/Object;)I
    .locals 1

    .line 2826
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2827
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 2829
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method protected static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1

    .line 2834
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2835
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2837
    :cond_0
    check-cast p0, Lcom/explorestack/protobuf/ByteString;

    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/explorestack/protobuf/ByteString;)I

    move-result p0

    return p0
.end method

.method protected static emptyBooleanList()Lcom/explorestack/protobuf/Internal$BooleanList;
    .locals 1

    .line 444
    invoke-static {}, Lcom/explorestack/protobuf/BooleanArrayList;->emptyList()Lcom/explorestack/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/explorestack/protobuf/Internal$DoubleList;
    .locals 1

    .line 430
    invoke-static {}, Lcom/explorestack/protobuf/DoubleArrayList;->emptyList()Lcom/explorestack/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/explorestack/protobuf/Internal$FloatList;
    .locals 1

    .line 416
    invoke-static {}, Lcom/explorestack/protobuf/FloatArrayList;->emptyList()Lcom/explorestack/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/explorestack/protobuf/Internal$IntList;
    .locals 1

    .line 388
    invoke-static {}, Lcom/explorestack/protobuf/IntArrayList;->emptyList()Lcom/explorestack/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/explorestack/protobuf/Internal$LongList;
    .locals 1

    .line 402
    invoke-static {}, Lcom/explorestack/protobuf/LongArrayList;->emptyList()Lcom/explorestack/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    sput-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

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

    .line 153
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 155
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$000(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 158
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 159
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 160
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getFieldCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    .line 169
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    goto :goto_1

    .line 177
    :cond_0
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 179
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 180
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    :cond_1
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_2

    .line 190
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getFieldRaw(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 192
    :cond_2
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

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

    .line 1768
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 1770
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1771
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

    .line 1780
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1786
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1787
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 1789
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 1790
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1792
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1788
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1782
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static maybeSerializeBooleanEntryTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TV;>;",
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/Boolean;",
            "TV;>;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2961
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2963
    invoke-virtual {p2}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p2

    .line 2964
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p2

    .line 2965
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object p1

    .line 2966
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object p1

    .line 2962
    invoke-virtual {p0, p3, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_0
    return-void
.end method

.method protected static mutableCopy(Lcom/explorestack/protobuf/Internal$BooleanList;)Lcom/explorestack/protobuf/Internal$BooleanList;
    .locals 1

    .line 452
    invoke-interface {p0}, Lcom/explorestack/protobuf/Internal$BooleanList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 453
    :goto_0
    invoke-interface {p0, v0}, Lcom/explorestack/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$BooleanList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/explorestack/protobuf/Internal$DoubleList;)Lcom/explorestack/protobuf/Internal$DoubleList;
    .locals 1

    .line 438
    invoke-interface {p0}, Lcom/explorestack/protobuf/Internal$DoubleList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 439
    :goto_0
    invoke-interface {p0, v0}, Lcom/explorestack/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$DoubleList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/explorestack/protobuf/Internal$FloatList;)Lcom/explorestack/protobuf/Internal$FloatList;
    .locals 1

    .line 424
    invoke-interface {p0}, Lcom/explorestack/protobuf/Internal$FloatList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 425
    :goto_0
    invoke-interface {p0, v0}, Lcom/explorestack/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$FloatList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/explorestack/protobuf/Internal$IntList;)Lcom/explorestack/protobuf/Internal$IntList;
    .locals 1

    .line 396
    invoke-interface {p0}, Lcom/explorestack/protobuf/Internal$IntList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 397
    :goto_0
    invoke-interface {p0, v0}, Lcom/explorestack/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/explorestack/protobuf/Internal$LongList;)Lcom/explorestack/protobuf/Internal$LongList;
    .locals 1

    .line 410
    invoke-interface {p0}, Lcom/explorestack/protobuf/Internal$LongList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 411
    :goto_0
    invoke-interface {p0, v0}, Lcom/explorestack/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$LongList;

    move-result-object p0

    return-object p0
.end method

.method protected static newBooleanList()Lcom/explorestack/protobuf/Internal$BooleanList;
    .locals 1

    .line 448
    new-instance v0, Lcom/explorestack/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/BooleanArrayList;-><init>()V

    return-object v0
.end method

.method protected static newDoubleList()Lcom/explorestack/protobuf/Internal$DoubleList;
    .locals 1

    .line 434
    new-instance v0, Lcom/explorestack/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DoubleArrayList;-><init>()V

    return-object v0
.end method

.method protected static newFloatList()Lcom/explorestack/protobuf/Internal$FloatList;
    .locals 1

    .line 420
    new-instance v0, Lcom/explorestack/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/FloatArrayList;-><init>()V

    return-object v0
.end method

.method protected static newIntList()Lcom/explorestack/protobuf/Internal$IntList;
    .locals 1

    .line 392
    new-instance v0, Lcom/explorestack/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/IntArrayList;-><init>()V

    return-object v0
.end method

.method protected static newLongList()Lcom/explorestack/protobuf/Internal$LongList;
    .locals 1

    .line 406
    new-instance v0, Lcom/explorestack/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/explorestack/protobuf/LongArrayList;-><init>()V

    return-object v0
.end method

.method public static parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;
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

    .line 368
    :try_start_0
    invoke-interface {p0, p1}, Lcom/explorestack/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 370
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;
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

    .line 377
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/explorestack/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;
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

    .line 350
    :try_start_0
    invoke-interface {p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;
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

    .line 359
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 361
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;
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

    .line 332
    :try_start_0
    invoke-interface {p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;
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

    .line 341
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Message;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method protected static serializeBooleanMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/Boolean;",
            "TV;>;",
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/Boolean;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2945
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 2946
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2947
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2950
    invoke-static {p0, p1, p2, p3, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->maybeSerializeBooleanEntryTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;IZ)V

    const/4 v0, 0x1

    .line 2951
    invoke-static {p0, p1, p2, p3, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->maybeSerializeBooleanEntryTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;IZ)V

    return-void
.end method

.method protected static serializeIntegerMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/Integer;",
            "TV;>;",
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/Integer;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2864
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 2865
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2866
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;I)V

    return-void

    .line 2871
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 2873
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    .line 2874
    aput v5, v1, v4

    move v4, v6

    goto :goto_0

    .line 2876
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    :goto_1
    if-ge v3, v0, :cond_2

    .line 2877
    aget v2, v1, v3

    .line 2879
    invoke-virtual {p2}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 2880
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 2881
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 2882
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    .line 2878
    invoke-virtual {p0, p3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected static serializeLongMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/Long;",
            "TV;>;",
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/Long;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2892
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 2893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2894
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;I)V

    return-void

    .line 2898
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 2900
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v4, 0x1

    .line 2901
    aput-wide v5, v1, v4

    move v4, v7

    goto :goto_0

    .line 2903
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    :goto_1
    if-ge v3, v0, :cond_2

    .line 2904
    aget-wide v4, v1, v3

    .line 2906
    invoke-virtual {p2}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 2907
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 2908
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 2909
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    .line 2905
    invoke-virtual {p0, p3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static serializeMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2977
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2979
    invoke-virtual {p2}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v1

    .line 2980
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v1

    .line 2981
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v0

    .line 2982
    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v0

    .line 2978
    invoke-virtual {p0, p3, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "TV;>;",
            "Lcom/explorestack/protobuf/MapEntry<",
            "Ljava/lang/String;",
            "TV;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2919
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 2920
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2921
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Ljava/util/Map;Lcom/explorestack/protobuf/MapEntry;I)V

    return-void

    .line 2927
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2928
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2929
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2930
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2932
    invoke-virtual {p2}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 2933
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 2934
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 2935
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v3

    .line 2931
    invoke-virtual {p0, p3, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2843
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2844
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    return-void

    .line 2846
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

    .line 2852
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2853
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void

    .line 2855
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

    .line 231
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 230
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

    .line 246
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 245
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$000(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getFieldRaw(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->getRaw(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$100(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

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
            "Lcom/explorestack/protobuf/GeneratedMessageV3;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 290
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 284
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessageV3;)I

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 2

    .line 465
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    .line 470
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/MessageReflection;->getSerializedSize(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->memoizedSize:I

    .line 472
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v0
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 2

    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->has(Lcom/explorestack/protobuf/GeneratedMessageV3;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$100(Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->has(Lcom/explorestack/protobuf/GeneratedMessageV3;)Z

    move-result p1

    return p1
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    .line 1813
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No map fields found in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1814
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

    .line 200
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 202
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 208
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 212
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Message;

    .line 213
    invoke-interface {v2}, Lcom/explorestack/protobuf/Message;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 218
    :cond_3
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

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

.method protected mergeFromAndMakeImmutableInternal(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/CodedInputStreamReader;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/explorestack/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 522
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessageV3$1;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$1;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 1

    .line 497
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method must be overridden by the subclass."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->shouldDiscardUnknownFields()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 311
    invoke-virtual {p1, p4}, Lcom/explorestack/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    return p1

    .line 313
    :cond_0
    invoke-virtual {p2, p4, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/explorestack/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method protected parseUnknownFieldProto3(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

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

    .line 2808
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

    .line 460
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/explorestack/protobuf/MessageReflection;->writeMessageTo(Lcom/explorestack/protobuf/Message;Ljava/util/Map;Lcom/explorestack/protobuf/CodedOutputStream;Z)V

    return-void
.end method
