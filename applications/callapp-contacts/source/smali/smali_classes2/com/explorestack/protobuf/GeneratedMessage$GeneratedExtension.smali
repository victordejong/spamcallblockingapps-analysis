.class public Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;
.super Lcom/explorestack/protobuf/Extension;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/explorestack/protobuf/Message;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/Extension<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field private descriptorRetriever:Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

.field private final enumGetValueDescriptor:Ljava/lang/reflect/Method;

.field private final enumValueOf:Ljava/lang/reflect/Method;

.field private final extensionType:Lcom/explorestack/protobuf/Extension$ExtensionType;

.field private final messageDefaultInstance:Lcom/explorestack/protobuf/Message;

.field private final singularType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;Ljava/lang/Class;Lcom/explorestack/protobuf/Message;Lcom/explorestack/protobuf/Extension$ExtensionType;)V
    .locals 1

    .line 1778
    invoke-direct {p0}, Lcom/explorestack/protobuf/Extension;-><init>()V

    .line 1779
    const-class v0, Lcom/explorestack/protobuf/Message;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1780
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1781
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Bad messageDefaultInstance for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1784
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    .line 1785
    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->singularType:Ljava/lang/Class;

    .line 1786
    iput-object p3, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/explorestack/protobuf/Message;

    .line 1788
    const-class p1, Lcom/explorestack/protobuf/ProtocolMessageEnum;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    .line 1789
    const-class p3, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "valueOf"

    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    new-array p1, v0, [Ljava/lang/Class;

    const-string p3, "getValueDescriptor"

    .line 1792
    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1794
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    .line 1795
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    .line 1797
    :goto_1
    iput-object p4, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->extensionType:Lcom/explorestack/protobuf/Extension$ExtensionType;

    return-void
.end method


# virtual methods
.method protected fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1853
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1854
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1855
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v1, v2, :cond_1

    .line 1856
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 1858
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1860
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 1867
    :cond_3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    .line 1952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1955
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 1956
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/explorestack/protobuf/Message;

    return-object v0

    .line 1959
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    .line 1958
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 1823
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    if-eqz v0, :cond_0

    .line 1827
    invoke-interface {v0}, Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    return-object v0

    .line 1824
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDescriptor() called before internalInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getExtensionType()Lcom/explorestack/protobuf/Extension$ExtensionType;
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->extensionType:Lcom/explorestack/protobuf/Extension$ExtensionType;

    return-object v0
.end method

.method public getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/explorestack/protobuf/Message;

    return-object v0
.end method

.method public bridge synthetic getMessageDefaultInstance()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1936
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    return v0
.end method

.method public internalInit(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    if-nez v0, :cond_0

    .line 1805
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension$1;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension$1;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->descriptorRetriever:Lcom/explorestack/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;

    return-void

    .line 1803
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRepeated()Z
    .locals 1

    .line 1946
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    return v0
.end method

.method protected singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1877
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1878
    sget-object v1, Lcom/explorestack/protobuf/GeneratedMessage$5;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object p1

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    aput-object p1, v1, v3

    invoke-static {v0, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1880
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->singularType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 1883
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->messageDefaultInstance:Lcom/explorestack/protobuf/Message;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 1884
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method protected singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1925
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1926
    sget-object v1, Lcom/explorestack/protobuf/GeneratedMessage$5;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->enumGetValueDescriptor:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1902
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1903
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1904
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 1906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1907
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1908
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    .line 1915
    :cond_2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
