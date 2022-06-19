.class public Lscala/collection/mutable/SetBuilder;
.super Ljava/lang/Object;
.source "SetBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Coll::",
        "Lscala/collection/Set<",
        "TA;>;:",
        "Lscala/collection/SetLike<",
        "TA;TColl;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "TA;TColl;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000113A!\u0001\u0002\u0001\u0013\tQ1+\u001a;Ck&dG-\u001a:\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0004\u0015Uy2c\u0001\u0001\u000c\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\tA\t2CH\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0008\u0005VLG\u000eZ3s!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\u000c\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0011Ac\u0008\u0003\u0006A\u0001\u0011\r!\t\u0002\u0005\u0007>dG.\u0005\u0002\u0019EI\u00191%J\u0015\u0007\t\u0011\u0002\u0001A\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004M\u001d\u001aR\"\u0001\u0003\n\u0005!\"!aA*fiB!aEK\n\u001f\u0013\tYCAA\u0004TKRd\u0015n[3\t\u00115\u0002!\u0011!Q\u0001\ny\tQ!Z7qifDQa\u000c\u0001\u0005\u0002A\na\u0001P5oSRtDCA\u00193!\u0011\u0001\u0002a\u0005\u0010\t\u000b5r\u0003\u0019\u0001\u0010\t\u000fQ\u0002\u0001\u0019!C\tk\u0005)Q\r\\3ngV\ta\u0004C\u00048\u0001\u0001\u0007I\u0011\u0003\u001d\u0002\u0013\u0015dW-\\:`I\u0015\u000cHCA\u001d=!\ta!(\u0003\u0002<\r\t!QK\\5u\u0011\u001did\'!AA\u0002y\t1\u0001\u001f\u00132\u0011\u0019y\u0004\u0001)Q\u0005=\u00051Q\r\\3ng\u0002BQ!\u0011\u0001\u0005\u0002\t\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u0007\u0012k\u0011\u0001\u0001\u0005\u0006\u000b\u0002\u0003\raE\u0001\u0002q\")q\t\u0001C\u0001\u0011\u0006)1\r\\3beR\t\u0011\u0008C\u0003K\u0001\u0011\u00051*\u0001\u0004sKN,H\u000e\u001e\u000b\u0002=\u0001"
.end annotation


# instance fields
.field private elems:Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field

.field private final empty:Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lscala/collection/mutable/SetBuilder;->empty:Lscala/collection/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 21
    iput-object p1, p0, Lscala/collection/mutable/SetBuilder;->elems:Lscala/collection/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lscala/collection/mutable/SetBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 20
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lscala/collection/mutable/SetBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SetBuilder<",
            "TA;TColl;>;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lscala/collection/mutable/SetBuilder;->elems()Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/SetBuilder;->elems_$eq(Lscala/collection/Set;)V

    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/collection/mutable/SetBuilder;->empty:Lscala/collection/Set;

    invoke-virtual {p0, v0}, Lscala/collection/mutable/SetBuilder;->elems_$eq(Lscala/collection/Set;)V

    return-void
.end method

.method public elems()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lscala/collection/mutable/SetBuilder;->elems:Lscala/collection/Set;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lscala/collection/mutable/SetBuilder;->elems:Lscala/collection/Set;

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
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lscala/collection/mutable/SetBuilder;->result()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lscala/collection/mutable/SetBuilder;->elems()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 20
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

    .line 20
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

    .line 20
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

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
