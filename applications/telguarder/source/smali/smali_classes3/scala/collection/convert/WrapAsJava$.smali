.class public final Lscala/collection/convert/WrapAsJava$;
.super Ljava/lang/Object;
.source "WrapAsJava.scala"

# interfaces
.implements Lscala/collection/convert/WrapAsJava;


# static fields
.field public static final MODULE$:Lscala/collection/convert/WrapAsJava$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/convert/WrapAsJava$;

    invoke-direct {v0}, Lscala/collection/convert/WrapAsJava$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    invoke-static {p0}, Lscala/collection/convert/WrapAsJava$class;->$init$(Lscala/collection/convert/WrapAsJava;)V

    return-void
.end method


# virtual methods
.method public asJavaCollection(Lscala/collection/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterable<",
            "TA;>;)",
            "Ljava/util/Collection<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->asJavaCollection(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public asJavaDictionary(Lscala/collection/mutable/Map;)Ljava/util/Dictionary;
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
            "Ljava/util/Dictionary<",
            "TA;TB;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->asJavaDictionary(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Map;)Ljava/util/Dictionary;

    move-result-object p1

    return-object p1
.end method

.method public asJavaEnumeration(Lscala/collection/Iterator;)Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TA;>;)",
            "Ljava/util/Enumeration<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->asJavaEnumeration(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterator;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public asJavaIterable(Lscala/collection/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterable<",
            "TA;>;)",
            "Ljava/lang/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->asJavaIterable(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public asJavaIterator(Lscala/collection/Iterator;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TA;>;)",
            "Ljava/util/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->asJavaIterator(Lscala/collection/convert/WrapAsJava;Lscala/collection/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bufferAsJavaList(Lscala/collection/mutable/Buffer;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->bufferAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Buffer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public mapAsJavaConcurrentMap(Lscala/collection/concurrent/Map;)Ljava/util/concurrent/ConcurrentMap;
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
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->mapAsJavaConcurrentMap(Lscala/collection/convert/WrapAsJava;Lscala/collection/concurrent/Map;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    return-object p1
.end method

.method public mapAsJavaMap(Lscala/collection/Map;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->mapAsJavaMap(Lscala/collection/convert/WrapAsJava;Lscala/collection/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public mutableMapAsJavaMap(Lscala/collection/mutable/Map;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->mutableMapAsJavaMap(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public mutableSeqAsJavaList(Lscala/collection/mutable/Seq;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Seq<",
            "TA;>;)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->mutableSeqAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Seq;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public mutableSetAsJavaSet(Lscala/collection/mutable/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Set<",
            "TA;>;)",
            "Ljava/util/Set<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->mutableSetAsJavaSet(Lscala/collection/convert/WrapAsJava;Lscala/collection/mutable/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public seqAsJavaList(Lscala/collection/Seq;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->seqAsJavaList(Lscala/collection/convert/WrapAsJava;Lscala/collection/Seq;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setAsJavaSet(Lscala/collection/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Set<",
            "TA;>;)",
            "Ljava/util/Set<",
            "TA;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0, p1}, Lscala/collection/convert/WrapAsJava$class;->setAsJavaSet(Lscala/collection/convert/WrapAsJava;Lscala/collection/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
