.class public final Lscala/collection/MapLike$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "MapLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/MapLike;->keysIterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final iter:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/MapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/MapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 182
    invoke-interface {p1}, Lscala/collection/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/MapLike$$anon$1;->iter:Lscala/collection/Iterator;

    return-void
.end method

.method private iter()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lscala/collection/MapLike$$anon$1;->iter:Lscala/collection/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 183
    invoke-direct {p0}, Lscala/collection/MapLike$$anon$1;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lscala/collection/MapLike$$anon$1;->iter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
