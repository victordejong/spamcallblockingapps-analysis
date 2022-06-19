.class public abstract Lscala/collection/convert/DecorateAsScala$class;
.super Ljava/lang/Object;
.source "DecorateAsScala.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/DecorateAsScala;)V
    .locals 0

    return-void
.end method

.method public static asScalaBufferConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 108
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaBufferConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaBufferConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static asScalaIteratorConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Iterator;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 36
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaIteratorConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaIteratorConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Iterator;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static asScalaSetConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Set;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 127
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaSetConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaSetConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Set;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static collectionAsScalaIterableConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Collection;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 89
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static dictionaryAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Dictionary;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 182
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$dictionaryAsScalaMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$dictionaryAsScalaMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Dictionary;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static enumerationAsScalaIteratorConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Enumeration;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 55
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$enumerationAsScalaIteratorConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$enumerationAsScalaIteratorConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Enumeration;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static iterableAsScalaIterableConverter(Lscala/collection/convert/DecorateAsScala;Ljava/lang/Iterable;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 74
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$iterableAsScalaIterableConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$iterableAsScalaIterableConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/lang/Iterable;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static mapAsScalaConcurrentMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 168
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/concurrent/ConcurrentMap;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static mapAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Map;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 150
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static propertiesAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;
    .locals 3

    .line 196
    new-instance v0, Lscala/collection/convert/Decorators$AsScala;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsScala$$anonfun$propertiesAsScalaMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsScala;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method
