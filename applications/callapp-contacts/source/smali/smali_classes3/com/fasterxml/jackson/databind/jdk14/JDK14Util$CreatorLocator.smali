.class Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jdk14/JDK14Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreatorLocator"
.end annotation


# instance fields
.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected final _config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field protected final _constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field protected final _intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _primaryConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field protected final _recordFields:[Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)V
    .locals 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 152
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 153
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 155
    invoke-static {}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->instance()Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

    move-result-object p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->getRecordFields(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_recordFields:[Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;

    .line 156
    array-length p1, p1

    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object p1

    .line 165
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_constructors:Ljava/util/List;

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getConstructors()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_constructors:Ljava/util/List;

    .line 169
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 170
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 174
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_recordFields:[Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;->rawType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 186
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_primaryConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    return-void

    .line 183
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to find the canonical Record constructor of type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 184
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public locate(Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_constructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 195
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq v3, v2, :cond_0

    .line 200
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DELEGATING:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    const/4 v4, 0x0

    if-ne v3, v2, :cond_1

    return-object v4

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_primaryConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eq v1, v2, :cond_0

    return-object v4

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_recordFields:[Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 211
    iget-object v3, v3, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;->name:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->_primaryConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    return-object p1
.end method
