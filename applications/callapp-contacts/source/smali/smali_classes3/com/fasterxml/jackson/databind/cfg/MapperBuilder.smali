.class public abstract Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "B:",
        "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public static findModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 271
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->findModules(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findModules(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    const-class v1, Lcom/fasterxml/jackson/databind/Module;

    invoke-static {v1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->secureGetServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/Module;

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static secureGetServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader<",
            "TT;>;"
        }
    .end annotation

    .line 292
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 295
    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    return-object p0

    .line 297
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ServiceLoader;

    return-object p0
.end method


# virtual methods
.method protected final _this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method public accessorNaming(Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;",
            ")TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 406
    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>()V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setAccessorNaming(Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 409
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 682
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            ")TB;"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 697
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;",
            ")TB;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 719
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public activateDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 737
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ")TB;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 477
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 623
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/Module;",
            ")TB;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 244
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;)TB;"
        }
    .end annotation

    .line 257
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/Module;

    .line 258
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addModules([Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/Module;",
            ")TB;"
        }
    .end annotation

    .line 249
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 250
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public annotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TB;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 338
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public clearProblemHandlers()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->clearProblemHandlers()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 486
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 188
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 173
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamReadFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 213
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamWriteFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 232
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 152
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 133
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public constructorDetector(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;",
            ")TB;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setConstructorDetector(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 467
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public deactivateDefaultTyping()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->deactivateDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 748
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/Base64Variant;",
            ")TB;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 571
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TB;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 534
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultLeniency(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultLeniency(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 517
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")TB;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 552
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 507
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/PrettyPrinter;",
            ")TB;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 438
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            ")TB;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 597
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonSetter$Value;",
            ")TB;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 497
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            ")TB;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 183
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 168
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 205
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 206
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 224
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 225
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 145
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 109
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 125
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 126
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 178
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 163
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 198
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 199
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 217
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 218
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 138
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 104
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 119
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public filterProvider(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/FilterProvider;",
            ")TB;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setFilterProvider(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 433
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public findAndAddModules()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 317
    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->findModules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public handlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;",
            ")TB;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public injectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/InjectableValues;",
            ")TB;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setInjectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 449
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    return p1
.end method

.method public nodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            ")TB;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setNodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 454
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public polymorphicTypeValidator(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPolymorphicTypeValidator(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 662
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public propertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;",
            ")TB;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 391
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public registerSubtypes(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)TB;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes(Ljava/util/Collection;)V

    .line 644
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ")TB;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 639
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V

    .line 634
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public serializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            ")TB;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 583
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public serializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/SerializerFactory;",
            ")TB;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 420
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;)TB;"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 770
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public streamFactory()Lcom/fasterxml/jackson/core/TokenStreamFactory;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->tokenStreamFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public subtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            ")TB;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSubtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 354
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public typeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")TB;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 349
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public visibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TB;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 364
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method

.method public visibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)TB;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object p1

    return-object p1
.end method
