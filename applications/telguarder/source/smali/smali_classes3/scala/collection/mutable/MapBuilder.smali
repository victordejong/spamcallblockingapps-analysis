.class public Lscala/collection/mutable/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "Coll::",
        "Lscala/collection/GenMap<",
        "TA;TB;>;:",
        "Lscala/collection/GenMapLike<",
        "TA;TB;TColl;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Tuple2<",
        "TA;TB;>;TColl;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001I3A!\u0001\u0002\u0001\u0013\tQQ*\u00199Ck&dG-\u001a:\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0005\u0015a\u0011SeE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0013\u000e\u0003\tI!A\u0005\u0002\u0003\u000f\t+\u0018\u000e\u001c3feB!A\u0002\u0006\u000c\"\u0013\t)bA\u0001\u0004UkBdWM\r\t\u0003/aa\u0001\u0001B\u0003\u001a\u0001\t\u0007!DA\u0001B#\tYb\u0004\u0005\u0002\r9%\u0011QD\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\taq$\u0003\u0002!\r\t\u0019\u0011I\\=\u0011\u0005]\u0011C!B\u0012\u0001\u0005\u0004Q\"!\u0001\"\u0011\u0005])C!\u0002\u0014\u0001\u0005\u00049#\u0001B\"pY2\u000c\"a\u0007\u0015\u0013\u0007%ZsF\u0002\u0003+\u0001\u0001A#\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004\u0003\u0002\u0017.-\u0005j\u0011\u0001B\u0005\u0003]\u0011\u0011aaR3o\u001b\u0006\u0004\u0008#\u0002\u00171-\u0005\"\u0013BA\u0019\u0005\u0005)9UM\\\'ba2K7.\u001a\u0005\tg\u0001\u0011\t\u0011)A\u0005I\u0005)Q-\u001c9us\")Q\u0007\u0001C\u0001m\u00051A(\u001b8jiz\"\"a\u000e\u001d\u0011\u000bA\u0001a#\t\u0013\t\u000bM\"\u0004\u0019\u0001\u0013\t\u000fi\u0002\u0001\u0019!C\tw\u0005)Q\r\\3ngV\tA\u0005C\u0004>\u0001\u0001\u0007I\u0011\u0003 \u0002\u0013\u0015dW-\\:`I\u0015\u000cHCA C!\ta\u0001)\u0003\u0002B\r\t!QK\\5u\u0011\u001d\u0019E(!AA\u0002\u0011\n1\u0001\u001f\u00132\u0011\u0019)\u0005\u0001)Q\u0005I\u00051Q\r\\3ng\u0002BQa\u0012\u0001\u0005\u0002!\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u0013*k\u0011\u0001\u0001\u0005\u0006\u0017\u001a\u0003\raE\u0001\u0002q\")Q\n\u0001C\u0001\u001d\u0006)1\r\\3beR\tq\u0008C\u0003Q\u0001\u0011\u0005\u0011+\u0001\u0004sKN,H\u000e\u001e\u000b\u0002I\u0001"
.end annotation


# instance fields
.field private elems:Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field

.field private final empty:Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/GenMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lscala/collection/mutable/MapBuilder;->empty:Lscala/collection/GenMap;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 27
    iput-object p1, p0, Lscala/collection/mutable/MapBuilder;->elems:Lscala/collection/GenMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 25
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 25
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 25
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/MapBuilder<",
            "TA;TB;TColl;>;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/MapBuilder;->elems()Lscala/collection/GenMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/GenMap;->$plus(Lscala/Tuple2;)Lscala/collection/GenMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MapBuilder;->elems_$eq(Lscala/collection/GenMap;)V

    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 35
    iget-object v0, p0, Lscala/collection/mutable/MapBuilder;->empty:Lscala/collection/GenMap;

    invoke-virtual {p0, v0}, Lscala/collection/mutable/MapBuilder;->elems_$eq(Lscala/collection/GenMap;)V

    return-void
.end method

.method public elems()Lscala/collection/GenMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lscala/collection/mutable/MapBuilder;->elems:Lscala/collection/GenMap;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/GenMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lscala/collection/mutable/MapBuilder;->elems:Lscala/collection/GenMap;

    return-void
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TColl;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;TNewTo;>;"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lscala/collection/mutable/MapBuilder;->result()Lscala/collection/GenMap;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/GenMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lscala/collection/mutable/MapBuilder;->elems()Lscala/collection/GenMap;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
