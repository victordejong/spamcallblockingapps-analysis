.class public final Lscala/collection/JavaConverters;
.super Ljava/lang/Object;
.source "JavaConverters.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q9Q!\u0001\u0002\t\u0002\u001d\taBS1wC\u000e{gN^3si\u0016\u00148O\u0003\u0002\u0004\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\t\u00135\t!AB\u0003\u000b\u0005!\u00051B\u0001\u0008KCZ\u000c7i\u001c8wKJ$XM]:\u0014\t%a\u0001C\u0006\t\u0003\u001b9i\u0011\u0001B\u0005\u0003\u001f\u0011\u0011a!\u00118z%\u00164\u0007CA\t\u0015\u001b\u0005\u0011\"BA\n\u0003\u0003\u001d\u0019wN\u001c<feRL!!\u0006\n\u0003\u001d\u0011+7m\u001c:bi\u0016\u000c5OS1wCB\u0011\u0011cF\u0005\u00031I\u0011q\u0002R3d_J\u000cG/Z!t\'\u000e\u000cG.\u0019\u0005\u00065%!\taG\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u001d\u0001"
.end annotation


# direct methods
.method public static asJavaCollectionConverter(Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJavaCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterable<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJavaCollection<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asJavaCollectionConverter(Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJavaCollection;

    move-result-object p0

    return-object p0
.end method

.method public static asJavaDictionaryConverter(Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJavaDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Decorators$AsJavaDictionary<",
            "TA;TB;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asJavaDictionaryConverter(Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJavaDictionary;

    move-result-object p0

    return-object p0
.end method

.method public static asJavaEnumerationConverter(Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJavaEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJavaEnumeration<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asJavaEnumerationConverter(Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJavaEnumeration;

    move-result-object p0

    return-object p0
.end method

.method public static asJavaIterableConverter(Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterable<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/lang/Iterable<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asJavaIterableConverter(Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static asJavaIteratorConverter(Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/Iterator<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asJavaIteratorConverter(Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static asScalaIteratorConverter(Ljava/util/Iterator;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/Iterator<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asScalaIteratorConverter(Ljava/util/Iterator;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static asScalaSetConverter(Ljava/util/Set;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/mutable/Set<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->asScalaSetConverter(Ljava/util/Set;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static bufferAsJavaListConverter(Lscala/collection/mutable/Buffer;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/List<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->bufferAsJavaListConverter(Lscala/collection/mutable/Buffer;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static collectionAsScalaIterableConverter(Ljava/util/Collection;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/Iterable<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->collectionAsScalaIterableConverter(Ljava/util/Collection;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static dictionaryAsScalaMapConverter(Ljava/util/Dictionary;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Dictionary<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->dictionaryAsScalaMapConverter(Ljava/util/Dictionary;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static enumerationAsScalaIteratorConverter(Ljava/util/Enumeration;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/Iterator<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->enumerationAsScalaIteratorConverter(Ljava/util/Enumeration;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static iterableAsScalaIterableConverter(Ljava/lang/Iterable;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/Iterable<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->iterableAsScalaIterableConverter(Ljava/lang/Iterable;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static mapAsJavaConcurrentMapConverter(Lscala/collection/concurrent/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/Map<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->mapAsJavaConcurrentMapConverter(Lscala/collection/concurrent/Map;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static mapAsJavaMapConverter(Lscala/collection/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Map<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->mapAsJavaMapConverter(Lscala/collection/Map;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static mapAsScalaConcurrentMapConverter(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/concurrent/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->mapAsScalaConcurrentMapConverter(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static mapAsScalaMapConverter(Ljava/util/Map;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->mapAsScalaMapConverter(Ljava/util/Map;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static mutableMapAsJavaMapConverter(Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->mutableMapAsJavaMapConverter(Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static mutableSeqAsJavaListConverter(Lscala/collection/mutable/Seq;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Seq<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/List<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->mutableSeqAsJavaListConverter(Lscala/collection/mutable/Seq;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static mutableSetAsJavaSetConverter(Lscala/collection/mutable/Set;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Set<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/Set<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->mutableSetAsJavaSetConverter(Lscala/collection/mutable/Set;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static propertiesAsScalaMapConverter(Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lscala/collection/convert/Decorators$AsScala<",
            "Lscala/collection/mutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->propertiesAsScalaMapConverter(Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p0

    return-object p0
.end method

.method public static seqAsJavaListConverter(Lscala/collection/Seq;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/List<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->seqAsJavaListConverter(Lscala/collection/Seq;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method

.method public static setAsJavaSetConverter(Lscala/collection/Set;)Lscala/collection/convert/Decorators$AsJava;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Set<",
            "TA;>;)",
            "Lscala/collection/convert/Decorators$AsJava<",
            "Ljava/util/Set<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v0, p0}, Lscala/collection/JavaConverters$;->setAsJavaSetConverter(Lscala/collection/Set;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p0

    return-object p0
.end method
