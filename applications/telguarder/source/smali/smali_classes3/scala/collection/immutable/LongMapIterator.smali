.class public abstract Lscala/collection/immutable/LongMapIterator;
.super Lscala/collection/AbstractIterator;
.source "LongMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00154a!\u0001\u0002\u0002\u0002\tA!a\u0004\'p]\u001el\u0015\r]%uKJ\u000cGo\u001c:\u000b\u0005\r!\u0011!C5n[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u000b\u0004\u0013\t\u00022C\u0001\u0001\u000b!\rYABD\u0007\u0002\t%\u0011Q\u0002\u0002\u0002\u0011\u0003\n\u001cHO]1di&#XM]1u_J\u0004\"a\u0004\t\r\u0001\u0011)\u0011\u0003\u0001b\u0001\'\t\tAk\u0001\u0001\u0012\u0005QA\u0002CA\u000b\u0017\u001b\u00051\u0011BA\u000c\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!F\r\n\u0005i1!aA!os\"AA\u0004\u0001B\u0001B\u0003%Q$\u0001\u0002jiB\u0019adH\u0011\u000e\u0003\tI!\u0001\t\u0002\u0003\u000f1{gnZ\'baB\u0011qB\t\u0003\u0006G\u0001\u0011\ra\u0005\u0002\u0002-\")Q\u0005\u0001C\u0001M\u00051A(\u001b8jiz\"\"a\n\u0015\u0011\ty\u0001\u0011E\u0004\u0005\u00069\u0011\u0002\r!\u0008\u0005\u0008U\u0001\u0001\r\u0011\"\u0001,\u0003\u0015Ig\u000eZ3y+\u0005a\u0003CA\u000b.\u0013\tqcAA\u0002J]RDq\u0001\r\u0001A\u0002\u0013\u0005\u0011\'A\u0005j]\u0012,\u0007p\u0018\u0013fcR\u0011!\'\u000e\t\u0003+MJ!\u0001\u000e\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0008m=\n\t\u00111\u0001-\u0003\rAH%\r\u0005\u0007q\u0001\u0001\u000b\u0015\u0002\u0017\u0002\r%tG-\u001a=!\u0011\u001dQ\u0004\u00011A\u0005\u0002m\naAY;gM\u0016\u0014X#\u0001\u001f\u0011\u0007Uit(\u0003\u0002?\r\t)\u0011I\u001d:bsB\u0011Q\u0003Q\u0005\u0003\u0003\u001a\u0011a!\u00118z%\u00164\u0007bB\"\u0001\u0001\u0004%\t\u0001R\u0001\u000bEV4g-\u001a:`I\u0015\u000cHC\u0001\u001aF\u0011\u001d1$)!AA\u0002qBaa\u0012\u0001!B\u0013a\u0014a\u00022vM\u001a,\'\u000f\t\u0005\u0006\u0013\u0002!\tAS\u0001\u0004a>\u0004H#A\u000f\t\u000b1\u0003A\u0011A\'\u0002\tA,8\u000f\u001b\u000b\u0003e9CQaT&A\u0002u\t\u0011\u0001\u001f\u0005\u0006#\u00021\tAU\u0001\u0008m\u0006dW/Z(g)\tq1\u000bC\u0003U!\u0002\u0007Q+A\u0002uSB\u00042AV-\"\u001d\tqr+\u0003\u0002Y\u0005\u00059Aj\u001c8h\u001b\u0006\u0004\u0018B\u0001.\\\u0005\r!\u0016\u000e\u001d\u0006\u00031\nAQ!\u0018\u0001\u0005\u0002y\u000bq\u0001[1t\u001d\u0016DH/F\u0001`!\t)\u0002-\u0003\u0002b\r\t9!i\\8mK\u0006t\u0007\"B2\u0001\t\u000b!\u0017\u0001\u00028fqR$\u0012A\u0004"
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private index:I


# direct methods
.method public constructor <init>(Lscala/collection/immutable/LongMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lscala/collection/immutable/LongMapIterator;->index:I

    const/16 v0, 0x41

    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    iput-object v0, p0, Lscala/collection/immutable/LongMapIterator;->buffer:[Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMapIterator;->push(Lscala/collection/immutable/LongMap;)V

    return-void
.end method


# virtual methods
.method public buffer()[Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lscala/collection/immutable/LongMapIterator;->buffer:[Ljava/lang/Object;

    return-object v0
.end method

.method public buffer_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lscala/collection/immutable/LongMapIterator;->buffer:[Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->index()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public index()I
    .locals 1

    .line 88
    iget v0, p0, Lscala/collection/immutable/LongMapIterator;->index:I

    return v0
.end method

.method public index_$eq(I)V
    .locals 0

    .line 88
    iput p1, p0, Lscala/collection/immutable/LongMapIterator;->index:I

    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->pop()Lscala/collection/immutable/LongMap;

    move-result-object v2

    .line 110
    instance-of v3, v2, Lscala/collection/immutable/LongMap$Bin;

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    move-object v1, v2

    check-cast v1, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v1}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v3

    instance-of v3, v3, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/LongMap$Tip;

    .line 111
    invoke-virtual {v1}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/LongMapIterator;->push(Lscala/collection/immutable/LongMap;)V

    .line 112
    invoke-virtual {p0, v0}, Lscala/collection/immutable/LongMapIterator;->valueOf(Lscala/collection/immutable/LongMap$Tip;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v1}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/LongMapIterator;->push(Lscala/collection/immutable/LongMap;)V

    .line 116
    invoke-virtual {v1}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/LongMapIterator;->push(Lscala/collection/immutable/LongMap;)V

    goto :goto_0

    .line 119
    :cond_1
    instance-of v0, v2, Lscala/collection/immutable/LongMap$Tip;

    if-eqz v0, :cond_2

    check-cast v2, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {p0, v2}, Lscala/collection/immutable/LongMapIterator;->valueOf(Lscala/collection/immutable/LongMap$Tip;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 122
    :cond_2
    sget-object v0, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Empty maps not allowed as subtrees"

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 109
    :cond_3
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public pop()Lscala/collection/immutable/LongMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->index()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/LongMapIterator;->index_$eq(I)V

    .line 93
    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->buffer()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->index()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lscala/collection/immutable/LongMap;

    return-object v0
.end method

.method public push(Lscala/collection/immutable/LongMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->buffer()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->index()I

    move-result v1

    aput-object p1, v0, v1

    .line 98
    invoke-virtual {p0}, Lscala/collection/immutable/LongMapIterator;->index()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMapIterator;->index_$eq(I)V

    return-void
.end method

.method public abstract valueOf(Lscala/collection/immutable/LongMap$Tip;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap$Tip<",
            "TV;>;)TT;"
        }
    .end annotation
.end method
