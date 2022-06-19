.class public abstract Lscala/collection/convert/WrapAsScala$class;
.super Ljava/lang/Object;
.source "WrapAsScala.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/WrapAsScala;)V
    .locals 0

    return-void
.end method

.method public static asScalaBuffer(Lscala/collection/convert/WrapAsScala;Ljava/util/List;)Lscala/collection/mutable/Buffer;
    .locals 1

    .line 103
    instance-of p0, p1, Lscala/collection/convert/Wrappers$MutableBufferWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$MutableBufferWrapper;

    .line 104
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;->underlying()Lscala/collection/mutable/Buffer;

    move-result-object p0

    goto :goto_0

    .line 105
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JListWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JListWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/List;)V

    :goto_0
    return-object p0
.end method

.method public static asScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Iterator;)Lscala/collection/Iterator;
    .locals 1

    .line 32
    instance-of p0, p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    .line 33
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JIteratorWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JIteratorWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Iterator;)V

    :goto_0
    return-object p0
.end method

.method public static asScalaSet(Lscala/collection/convert/WrapAsScala;Ljava/util/Set;)Lscala/collection/mutable/Set;
    .locals 1

    .line 121
    instance-of p0, p1, Lscala/collection/convert/Wrappers$MutableSetWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$MutableSetWrapper;

    .line 122
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$MutableSetWrapper;->underlying()Lscala/collection/mutable/Set;

    move-result-object p0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JSetWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JSetWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Set;)V

    :goto_0
    return-object p0
.end method

.method public static collectionAsScalaIterable(Lscala/collection/convert/WrapAsScala;Ljava/util/Collection;)Lscala/collection/Iterable;
    .locals 1

    .line 84
    instance-of p0, p1, Lscala/collection/convert/Wrappers$IterableWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$IterableWrapper;

    .line 85
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$IterableWrapper;->underlying()Lscala/collection/Iterable;

    move-result-object p0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JCollectionWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JCollectionWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Collection;)V

    :goto_0
    return-object p0
.end method

.method public static dictionaryAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Dictionary;)Lscala/collection/mutable/Map;
    .locals 1

    .line 181
    instance-of p0, p1, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    .line 182
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$DictionaryWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object p0

    goto :goto_0

    .line 183
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Dictionary;)V

    :goto_0
    return-object p0
.end method

.method public static enumerationAsScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Enumeration;)Lscala/collection/Iterator;
    .locals 1

    .line 50
    instance-of p0, p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$IteratorWrapper;

    .line 51
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$IteratorWrapper;->underlying()Lscala/collection/Iterator;

    move-result-object p0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JEnumerationWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JEnumerationWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Enumeration;)V

    :goto_0
    return-object p0
.end method

.method public static iterableAsScalaIterable(Lscala/collection/convert/WrapAsScala;Ljava/lang/Iterable;)Lscala/collection/Iterable;
    .locals 1

    .line 69
    instance-of p0, p1, Lscala/collection/convert/Wrappers$IterableWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$IterableWrapper;

    .line 70
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$IterableWrapper;->underlying()Lscala/collection/Iterable;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JIterableWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JIterableWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/lang/Iterable;)V

    :goto_0
    return-object p0
.end method

.method public static mapAsScalaConcurrentMap(Lscala/collection/convert/WrapAsScala;Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/concurrent/Map;
    .locals 1

    .line 165
    instance-of p0, p1, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;

    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;->underlying()Lscala/collection/concurrent/Map;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/concurrent/ConcurrentMap;)V

    :goto_0
    return-object p0
.end method

.method public static mapAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Map;)Lscala/collection/mutable/Map;
    .locals 1

    .line 146
    instance-of p0, p1, Lscala/collection/convert/Wrappers$MutableMapWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$MutableMapWrapper;

    .line 148
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$MutableMapWrapper;->underlying()Lscala/collection/mutable/Map;

    move-result-object p0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$JMapWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Map;)V

    :goto_0
    return-object p0
.end method

.method public static propertiesAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Properties;)Lscala/collection/mutable/Map;
    .locals 1

    .line 196
    new-instance p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V

    return-object p0
.end method
