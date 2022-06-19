.class public abstract Lscala/collection/immutable/IntMapIterator;
.super Lscala/collection/AbstractIterator;
.source "IntMap.scala"


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
    bytes = "\u0006\u0001\u00154a!\u0001\u0002\u0002\u0002\tA!AD%oi6\u000b\u0007/\u0013;fe\u0006$xN\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017-F\u0002\nEA\u0019\"\u0001\u0001\u0006\u0011\u0007-aa\"D\u0001\u0005\u0013\tiAA\u0001\tBEN$(/Y2u\u0013R,\'/\u0019;peB\u0011q\u0002\u0005\u0007\u0001\t\u0015\t\u0002A1\u0001\u0014\u0005\u0005!6\u0001A\t\u0003)a\u0001\"!\u0006\u000c\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z\u0011!a\u0002A!A!\u0002\u0013i\u0012AA5u!\rqr$I\u0007\u0002\u0005%\u0011\u0001E\u0001\u0002\u0007\u0013:$X*\u00199\u0011\u0005=\u0011C!B\u0012\u0001\u0005\u0004\u0019\"!\u0001,\t\u000b\u0015\u0002A\u0011\u0001\u0014\u0002\rqJg.\u001b;?)\t9\u0003\u0006\u0005\u0003\u001f\u0001\u0005r\u0001\"\u0002\u000f%\u0001\u0004i\u0002b\u0002\u0016\u0001\u0001\u0004%\taK\u0001\u0006S:$W\r_\u000b\u0002YA\u0011Q#L\u0005\u0003]\u0019\u00111!\u00138u\u0011\u001d\u0001\u0004\u00011A\u0005\u0002E\n\u0011\"\u001b8eKb|F%Z9\u0015\u0005I*\u0004CA\u000b4\u0013\t!dA\u0001\u0003V]&$\u0008b\u0002\u001c0\u0003\u0003\u0005\r\u0001L\u0001\u0004q\u0012\n\u0004B\u0002\u001d\u0001A\u0003&A&\u0001\u0004j]\u0012,\u0007\u0010\t\u0005\u0008u\u0001\u0001\r\u0011\"\u0001<\u0003\u0019\u0011WO\u001a4feV\tA\u0008E\u0002\u0016{}J!A\u0010\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0005U\u0001\u0015BA!\u0007\u0005\u0019\te.\u001f*fM\"91\t\u0001a\u0001\n\u0003!\u0015A\u00032vM\u001a,\'o\u0018\u0013fcR\u0011!\'\u0012\u0005\u0008m\t\u000b\t\u00111\u0001=\u0011\u00199\u0005\u0001)Q\u0005y\u00059!-\u001e4gKJ\u0004\u0003\"B%\u0001\t\u0003Q\u0015a\u00019paV\tQ\u0004C\u0003M\u0001\u0011\u0005Q*\u0001\u0003qkNDGC\u0001\u001aO\u0011\u0015y5\n1\u0001\u001e\u0003\u0005A\u0008\"B)\u0001\r\u0003\u0011\u0016a\u0002<bYV,wJ\u001a\u000b\u0003\u001dMCQ\u0001\u0016)A\u0002U\u000b1\u0001^5q!\r1\u0016,\t\u0008\u0003=]K!\u0001\u0017\u0002\u0002\r%sG/T1q\u0013\tQ6LA\u0002USBT!\u0001\u0017\u0002\t\u000bu\u0003A\u0011\u00010\u0002\u000f!\u000c7OT3yiV\tq\u000c\u0005\u0002\u0016A&\u0011\u0011M\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u0015\u0019\u0007\u0001\"\u0002e\u0003\u0011qW\r\u001f;\u0015\u00039\u0001"
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private index:I


# direct methods
.method public constructor <init>(Lscala/collection/immutable/IntMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lscala/collection/immutable/IntMapIterator;->index:I

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    iput-object v0, p0, Lscala/collection/immutable/IntMapIterator;->buffer:[Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMapIterator;->push(Lscala/collection/immutable/IntMap;)V

    return-void
.end method


# virtual methods
.method public buffer()[Ljava/lang/Object;
    .locals 1

    .line 97
    iget-object v0, p0, Lscala/collection/immutable/IntMapIterator;->buffer:[Ljava/lang/Object;

    return-object v0
.end method

.method public buffer_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lscala/collection/immutable/IntMapIterator;->buffer:[Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->index()I

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

    .line 96
    iget v0, p0, Lscala/collection/immutable/IntMapIterator;->index:I

    return v0
.end method

.method public index_$eq(I)V
    .locals 0

    .line 96
    iput p1, p0, Lscala/collection/immutable/IntMapIterator;->index:I

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

    .line 117
    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->pop()Lscala/collection/immutable/IntMap;

    move-result-object v2

    .line 118
    instance-of v3, v2, Lscala/collection/immutable/IntMap$Bin;

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    move-object v1, v2

    check-cast v1, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v3

    instance-of v3, v3, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IntMap$Tip;

    .line 119
    invoke-virtual {v1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/IntMapIterator;->push(Lscala/collection/immutable/IntMap;)V

    .line 120
    invoke-virtual {p0, v0}, Lscala/collection/immutable/IntMapIterator;->valueOf(Lscala/collection/immutable/IntMap$Tip;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v1}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/IntMapIterator;->push(Lscala/collection/immutable/IntMap;)V

    .line 124
    invoke-virtual {v1}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/IntMapIterator;->push(Lscala/collection/immutable/IntMap;)V

    goto :goto_0

    .line 127
    :cond_1
    instance-of v0, v2, Lscala/collection/immutable/IntMap$Tip;

    if-eqz v0, :cond_2

    check-cast v2, Lscala/collection/immutable/IntMap$Tip;

    invoke-virtual {p0, v2}, Lscala/collection/immutable/IntMapIterator;->valueOf(Lscala/collection/immutable/IntMap$Tip;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 130
    :cond_2
    sget-object v0, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Empty maps not allowed as subtrees"

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 117
    :cond_3
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public pop()Lscala/collection/immutable/IntMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IntMap<",
            "TV;>;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->index()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/IntMapIterator;->index_$eq(I)V

    .line 101
    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->buffer()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->index()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lscala/collection/immutable/IntMap;

    return-object v0
.end method

.method public push(Lscala/collection/immutable/IntMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->buffer()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->index()I

    move-result v1

    aput-object p1, v0, v1

    .line 106
    invoke-virtual {p0}, Lscala/collection/immutable/IntMapIterator;->index()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMapIterator;->index_$eq(I)V

    return-void
.end method

.method public abstract valueOf(Lscala/collection/immutable/IntMap$Tip;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap$Tip<",
            "TV;>;)TT;"
        }
    .end annotation
.end method
