.class public final Lscala/collection/JavaConverters$;
.super Ljava/lang/Object;
.source "JavaConverters.scala"

# interfaces
.implements Lscala/collection/convert/DecorateAsJava;
.implements Lscala/collection/convert/DecorateAsScala;


# static fields
.field public static final MODULE$:Lscala/collection/JavaConverters$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/JavaConverters$;

    invoke-direct {v0}, Lscala/collection/JavaConverters$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-static {p0}, Lscala/collection/convert/DecorateAsJava$class;->$init$(Lscala/collection/convert/DecorateAsJava;)V

    invoke-static {p0}, Lscala/collection/convert/DecorateAsScala$class;->$init$(Lscala/collection/convert/DecorateAsScala;)V

    return-void
.end method


# virtual methods
.method public asJavaCollectionConverter(Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJavaCollection;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->asJavaCollectionConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJavaCollection;

    move-result-object p1

    return-object p1
.end method

.method public asJavaDictionaryConverter(Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJavaDictionary;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->asJavaDictionaryConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJavaDictionary;

    move-result-object p1

    return-object p1
.end method

.method public asJavaEnumerationConverter(Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJavaEnumeration;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->asJavaEnumerationConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJavaEnumeration;

    move-result-object p1

    return-object p1
.end method

.method public asJavaIterableConverter(Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->asJavaIterableConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public asJavaIteratorConverter(Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->asJavaIteratorConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->asScalaBufferConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public asScalaIteratorConverter(Ljava/util/Iterator;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->asScalaIteratorConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Iterator;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public asScalaSetConverter(Ljava/util/Set;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->asScalaSetConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Set;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public bufferAsJavaListConverter(Lscala/collection/mutable/Buffer;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->bufferAsJavaListConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Buffer;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public collectionAsScalaIterableConverter(Ljava/util/Collection;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->collectionAsScalaIterableConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Collection;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public dictionaryAsScalaMapConverter(Ljava/util/Dictionary;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->dictionaryAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Dictionary;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public enumerationAsScalaIteratorConverter(Ljava/util/Enumeration;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->enumerationAsScalaIteratorConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Enumeration;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public iterableAsScalaIterableConverter(Ljava/lang/Iterable;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->iterableAsScalaIterableConverter(Lscala/collection/convert/DecorateAsScala;Ljava/lang/Iterable;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public mapAsJavaConcurrentMapConverter(Lscala/collection/concurrent/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->mapAsJavaConcurrentMapConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/concurrent/Map;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public mapAsJavaMapConverter(Lscala/collection/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->mapAsJavaMapConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Map;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public mapAsScalaConcurrentMapConverter(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->mapAsScalaConcurrentMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public mapAsScalaMapConverter(Ljava/util/Map;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->mapAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Map;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public mutableMapAsJavaMapConverter(Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->mutableMapAsJavaMapConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Map;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public mutableSeqAsJavaListConverter(Lscala/collection/mutable/Seq;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->mutableSeqAsJavaListConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Seq;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public mutableSetAsJavaSetConverter(Lscala/collection/mutable/Set;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->mutableSetAsJavaSetConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/mutable/Set;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public propertiesAsScalaMapConverter(Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->propertiesAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method

.method public seqAsJavaListConverter(Lscala/collection/Seq;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->seqAsJavaListConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Seq;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method

.method public setAsJavaSetConverter(Lscala/collection/Set;)Lscala/collection/convert/Decorators$AsJava;
    .locals 0
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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsJava$class;->setAsJavaSetConverter(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Set;)Lscala/collection/convert/Decorators$AsJava;

    move-result-object p1

    return-object p1
.end method
