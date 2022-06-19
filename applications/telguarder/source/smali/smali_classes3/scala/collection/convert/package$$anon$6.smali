.class public final Lscala/collection/convert/package$$anon$6;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/convert/WrapAsScala;


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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/convert/WrapAsScala$class;->$init$(Lscala/collection/convert/WrapAsScala;)V

    return-void
.end method


# virtual methods
.method public asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;)",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->asScalaBuffer(Lscala/collection/convert/WrapAsScala;Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public asScalaIterator(Ljava/util/Iterator;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->asScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Iterator;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public asScalaSet(Ljava/util/Set;)Lscala/collection/mutable/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TA;>;)",
            "Lscala/collection/mutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->asScalaSet(Lscala/collection/convert/WrapAsScala;Ljava/util/Set;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public collectionAsScalaIterable(Ljava/util/Collection;)Lscala/collection/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TA;>;)",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->collectionAsScalaIterable(Lscala/collection/convert/WrapAsScala;Ljava/util/Collection;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public dictionaryAsScalaMap(Ljava/util/Dictionary;)Lscala/collection/mutable/Map;
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
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->dictionaryAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Dictionary;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public enumerationAsScalaIterator(Ljava/util/Enumeration;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->enumerationAsScalaIterator(Lscala/collection/convert/WrapAsScala;Ljava/util/Enumeration;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public iterableAsScalaIterable(Ljava/lang/Iterable;)Lscala/collection/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TA;>;)",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->iterableAsScalaIterable(Lscala/collection/convert/WrapAsScala;Ljava/lang/Iterable;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public mapAsScalaConcurrentMap(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/concurrent/Map;
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
            "Lscala/collection/concurrent/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->mapAsScalaConcurrentMap(Lscala/collection/convert/WrapAsScala;Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/concurrent/Map;

    move-result-object p1

    return-object p1
.end method

.method public mapAsScalaMap(Ljava/util/Map;)Lscala/collection/mutable/Map;
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
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->mapAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Map;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public propertiesAsScalaMap(Ljava/util/Properties;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lscala/collection/mutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsScala$class;->propertiesAsScalaMap(Lscala/collection/convert/WrapAsScala;Ljava/util/Properties;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method
