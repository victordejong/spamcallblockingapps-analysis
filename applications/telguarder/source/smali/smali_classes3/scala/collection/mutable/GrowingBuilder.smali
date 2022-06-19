.class public Lscala/collection/mutable/GrowingBuilder;
.super Ljava/lang/Object;
.source "GrowingBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To::",
        "Lscala/collection/generic/Growable<",
        "TElem;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TElem;TTo;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001!3A!\u0001\u0002\u0001\u0013\tqqI]8xS:<\')^5mI\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001)2AC\u000b \'\r\u00011b\u0004\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\u0003\u0002\t\u0012\'yi\u0011AA\u0005\u0003%\t\u0011qAQ;jY\u0012,\'\u000f\u0005\u0002\u0015+1\u0001A!\u0002\u000c\u0001\u0005\u00049\"\u0001B#mK6\u000c\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0011Ac\u0008\u0003\u0006A\u0001\u0011\r!\t\u0002\u0003)>\u000c\"\u0001\u0007\u0012\u0011\u0007\r23#D\u0001%\u0015\t)C!A\u0004hK:,\'/[2\n\u0005\u001d\"#\u0001C$s_^\u000c\'\r\\3\t\u0011%\u0002!\u0011!Q\u0001\ny\tQ!Z7qifDQa\u000b\u0001\u0005\u00021\na\u0001P5oSRtDCA\u0017/!\u0011\u0001\u0002a\u0005\u0010\t\u000b%R\u0003\u0019\u0001\u0010\t\u000fA\u0002\u0001\u0019!C\tc\u0005)Q\r\\3ngV\ta\u0004C\u00044\u0001\u0001\u0007I\u0011\u0003\u001b\u0002\u0013\u0015dW-\\:`I\u0015\u000cHCA\u001b9!\taa\'\u0003\u00028\r\t!QK\\5u\u0011\u001dI$\'!AA\u0002y\t1\u0001\u001f\u00132\u0011\u0019Y\u0004\u0001)Q\u0005=\u00051Q\r\\3ng\u0002BQ!\u0010\u0001\u0005\u0002y\n\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u007f\u0001k\u0011\u0001\u0001\u0005\u0006\u0003r\u0002\raE\u0001\u0002q\")1\t\u0001C\u0001\t\u0006)1\r\\3beR\tQ\u0007C\u0003G\u0001\u0011\u0005q)\u0001\u0004sKN,H\u000e\u001e\u000b\u0002=\u0001"
.end annotation


# instance fields
.field private elems:Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTo;"
        }
    .end annotation
.end field

.field private final empty:Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTo;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/generic/Growable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTo;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lscala/collection/mutable/GrowingBuilder;->empty:Lscala/collection/generic/Growable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 26
    iput-object p1, p0, Lscala/collection/mutable/GrowingBuilder;->elems:Lscala/collection/generic/Growable;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lscala/collection/mutable/GrowingBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/GrowingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;TElem;",
            "Lscala/collection/Seq<",
            "TElem;>;)",
            "Lscala/collection/generic/Growable<",
            "TElem;>;"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lscala/collection/mutable/GrowingBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/GrowingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/GrowingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/mutable/GrowingBuilder<",
            "TElem;TTo;>;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/GrowingBuilder;->elems()Lscala/collection/generic/Growable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/generic/Growable;->$plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TElem;>;)",
            "Lscala/collection/generic/Growable<",
            "TElem;>;"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 28
    iget-object v0, p0, Lscala/collection/mutable/GrowingBuilder;->empty:Lscala/collection/generic/Growable;

    invoke-virtual {p0, v0}, Lscala/collection/mutable/GrowingBuilder;->elems_$eq(Lscala/collection/generic/Growable;)V

    return-void
.end method

.method public elems()Lscala/collection/generic/Growable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lscala/collection/mutable/GrowingBuilder;->elems:Lscala/collection/generic/Growable;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/generic/Growable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTo;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lscala/collection/mutable/GrowingBuilder;->elems:Lscala/collection/generic/Growable;

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
            "TTo;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TElem;TNewTo;>;"
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
    invoke-virtual {p0}, Lscala/collection/mutable/GrowingBuilder;->result()Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/generic/Growable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/GrowingBuilder;->elems()Lscala/collection/generic/Growable;

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
