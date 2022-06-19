.class public final Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;
.super Lscala/collection/AbstractIterator;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$JPropertiesWrapper;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/Tuple2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ui:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$JPropertiesWrapper;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 435
    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui:Ljava/util/Iterator;

    return-void
.end method

.method private ui()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 436
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;->ui()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    new-instance v1, Lscala/Tuple2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
