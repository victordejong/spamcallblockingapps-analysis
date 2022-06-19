.class public final Lscala/collection/convert/package$$anon$4;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/convert/DecorateAsScala;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/package$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/convert/DecorateAsScala$class;->$init$(Lscala/collection/convert/DecorateAsScala;)V

    return-void
.end method


# virtual methods
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

    .line 14
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

    .line 14
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

    .line 14
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->asScalaSetConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Set;)Lscala/collection/convert/Decorators$AsScala;

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

    .line 14
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

    .line 14
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

    .line 14
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

    .line 14
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->iterableAsScalaIterableConverter(Lscala/collection/convert/DecorateAsScala;Ljava/lang/Iterable;)Lscala/collection/convert/Decorators$AsScala;

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

    .line 14
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

    .line 14
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->mapAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Map;)Lscala/collection/convert/Decorators$AsScala;

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

    .line 14
    invoke-static {p0, p1}, Lscala/collection/convert/DecorateAsScala$class;->propertiesAsScalaMapConverter(Lscala/collection/convert/DecorateAsScala;Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object p1

    return-object p1
.end method
