.class public abstract Lscala/collection/convert/WrapAsJava$class;
.super Ljava/lang/Object;
.source "WrapAsJava.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/WrapAsJava;)V
    .locals 0

    return-void
.end method

.method public static asJavaCollection(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterable;)Ljava/util/Collection;
    .locals 1

    .line 84
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JCollectionWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JCollectionWrapper;

    .line 85
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JCollectionWrapper;->underlying()Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$IterableWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$IterableWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterable;)V

    :goto_0
    return-object p0
.end method

.method public static asJavaDictionary(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Map;)Ljava/util/Dictionary;
    .locals 1

    .line 212
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JDictionaryWrapper;

    .line 214
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JDictionaryWrapper;->underlying()Ljava/util/Dictionary;

    move-result-object p0

    goto :goto_0

    .line 215
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$DictionaryWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$DictionaryWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Map;)V

    :goto_0
    return-object p0
.end method

.method public static asJavaEnumeration(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterator;)Ljava/util/Enumeration;
    .locals 1

    .line 50
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JEnumerationWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JEnumerationWrapper;

    .line 51
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JEnumerationWrapper;->underlying()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$IteratorWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$IteratorWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterator;)V

    :goto_0
    return-object p0
.end method

.method public static asJavaIterable(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterable;)Ljava/lang/Iterable;
    .locals 1

    .line 68
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JIterableWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JIterableWrapper;

    .line 69
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JIterableWrapper;->underlying()Ljava/lang/Iterable;

    move-result-object p0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$IterableWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$IterableWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterable;)V

    :goto_0
    return-object p0
.end method

.method public static asJavaIterator(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterator;)Ljava/util/Iterator;
    .locals 1

    .line 32
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JIteratorWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JIteratorWrapper;

    .line 33
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JIteratorWrapper;->underlying()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$IteratorWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$IteratorWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterator;)V

    :goto_0
    return-object p0
.end method

.method public static bufferAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Buffer;)Ljava/util/List;
    .locals 1

    .line 102
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JListWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JListWrapper;

    .line 103
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$MutableBufferWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$MutableBufferWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Buffer;)V

    :goto_0
    return-object p0
.end method

.method public static mapAsJavaConcurrentMap(Lscala/collection/convert/WrapAsJava;Lscala/collection/concurrent/Map;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 253
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    .line 254
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    goto :goto_0

    .line 255
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$ConcurrentMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/concurrent/Map;)V

    :goto_0
    return-object p0
.end method

.method public static mapAsJavaMap(Lscala/collection/convert/WrapAsJava;Lscala/collection/Map;)Ljava/util/Map;
    .locals 1

    .line 232
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JMapWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JMapWrapper;

    .line 234
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JMapWrapper;->underlying()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$MapWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$MapWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Map;)V

    :goto_0
    return-object p0
.end method

.method public static mutableMapAsJavaMap(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Map;)Ljava/util/Map;
    .locals 1

    .line 192
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JMapWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JMapWrapper;

    .line 194
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JMapWrapper;->underlying()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 195
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$MutableMapWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$MutableMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Map;)V

    :goto_0
    return-object p0
.end method

.method public static mutableSeqAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Seq;)Ljava/util/List;
    .locals 1

    .line 120
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JListWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JListWrapper;

    .line 121
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$MutableSeqWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$MutableSeqWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Seq;)V

    :goto_0
    return-object p0
.end method

.method public static mutableSetAsJavaSet(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Set;)Ljava/util/Set;
    .locals 1

    .line 156
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JSetWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JSetWrapper;

    .line 157
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$MutableSetWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$MutableSetWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/mutable/Set;)V

    :goto_0
    return-object p0
.end method

.method public static seqAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/Seq;)Ljava/util/List;
    .locals 1

    .line 138
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JListWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JListWrapper;

    .line 139
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JListWrapper;->underlying()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 140
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$SeqWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$SeqWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Seq;)V

    :goto_0
    return-object p0
.end method

.method public static setAsJavaSet(Lscala/collection/convert/WrapAsJava;Lscala/collection/Set;)Ljava/util/Set;
    .locals 1

    .line 174
    instance-of p0, p1, Lscala/collection/convert/Wrappers$JSetWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Lscala/collection/convert/Wrappers$JSetWrapper;

    .line 175
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JSetWrapper;->underlying()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 176
    :cond_0
    new-instance p0, Lscala/collection/convert/Wrappers$SetWrapper;

    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-direct {p0, v0, p1}, Lscala/collection/convert/Wrappers$SetWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Set;)V

    :goto_0
    return-object p0
.end method
