.class public final Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;
.super Lscala/collection/AbstractIterator;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$JMapWrapperLike;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;"
    }
.end annotation


# instance fields
.field private final ui:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$JMapWrapperLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$JMapWrapperLike<",
            "TA;TB;TRepr;>;)V"
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 281
    invoke-interface {p1}, Lscala/collection/convert/Wrappers$JMapWrapperLike;->underlying()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;->ui:Ljava/util/Iterator;

    return-void
.end method

.method private ui()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;->ui:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 282
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;->ui()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$JMapWrapperLike$$anon$2;->ui()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lscala/Tuple2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
