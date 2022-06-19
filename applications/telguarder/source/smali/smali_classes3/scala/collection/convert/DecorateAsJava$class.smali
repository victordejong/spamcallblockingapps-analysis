.class public abstract Lscala/collection/convert/DecorateAsJava$class;
.super Ljava/lang/Object;
.source "DecorateAsJava.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/DecorateAsJava;)V
    .locals 0

    return-void
.end method

.method public static asJavaCollectionConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJavaCollection;
    .locals 1

    .line 127
    new-instance p0, Lscala/collection/convert/Decorators$AsJavaCollection;

    sget-object v0, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Decorators$AsJavaCollection;-><init>(Lscala/collection/convert/Decorators;Lscala/collection/Iterable;)V

    return-object p0
.end method

.method public static asJavaDictionaryConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJavaDictionary;
    .locals 1

    .line 260
    new-instance p0, Lscala/collection/convert/Decorators$AsJavaDictionary;

    sget-object v0, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Decorators$AsJavaDictionary;-><init>(Lscala/collection/convert/Decorators;Lscala/collection/mutable/Map;)V

    return-object p0
.end method

.method public static asJavaEnumerationConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJavaEnumeration;
    .locals 1

    .line 93
    new-instance p0, Lscala/collection/convert/Decorators$AsJavaEnumeration;

    sget-object v0, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Decorators$AsJavaEnumeration;-><init>(Lscala/collection/convert/Decorators;Lscala/collection/Iterator;)V

    return-object p0
.end method

.method public static asJavaIterableConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 112
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIterableConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIterableConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterable;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static asJavaIteratorConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 75
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIteratorConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIteratorConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterator;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static bufferAsJavaListConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Buffer;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 146
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$bufferAsJavaListConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$bufferAsJavaListConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Buffer;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static mapAsJavaConcurrentMapConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/concurrent/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 298
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/concurrent/Map;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static mapAsJavaMapConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 279
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Map;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static mutableMapAsJavaMapConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 241
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$mutableMapAsJavaMapConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$mutableMapAsJavaMapConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Map;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static mutableSeqAsJavaListConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Seq;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 165
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$mutableSeqAsJavaListConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$mutableSeqAsJavaListConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Seq;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static mutableSetAsJavaSetConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Set;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 203
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$mutableSetAsJavaSetConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$mutableSetAsJavaSetConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Set;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static seqAsJavaListConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Seq;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 184
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$seqAsJavaListConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$seqAsJavaListConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Seq;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method

.method public static setAsJavaSetConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Set;)Lscala/collection/convert/Decorators$AsJava;
    .locals 3

    .line 222
    new-instance v0, Lscala/collection/convert/Decorators$AsJava;

    sget-object v1, Lscala/collection/convert/Decorators$;->MODULE$:Lscala/collection/convert/Decorators$;

    new-instance v2, Lscala/collection/convert/DecorateAsJava$$anonfun$setAsJavaSetConverter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/convert/DecorateAsJava$$anonfun$setAsJavaSetConverter$1;-><init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Set;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Decorators$AsJava;-><init>(Lscala/collection/convert/Decorators;Lscala/Function0;)V

    return-object v0
.end method
