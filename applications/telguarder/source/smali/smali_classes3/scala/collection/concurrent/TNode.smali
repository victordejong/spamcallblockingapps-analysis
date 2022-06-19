.class public final Lscala/collection/concurrent/TNode;
.super Lscala/collection/concurrent/MainNode;
.source "TrieMap.scala"

# interfaces
.implements Lscala/collection/concurrent/KVNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/concurrent/MainNode<",
        "TK;TV;>;",
        "Lscala/collection/concurrent/KVNode<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00014Q!\u0001\u0002\u0003\t!\u0011Q\u0001\u0016(pI\u0016T!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGO\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,2!\u0003\t\u001d\'\r\u0001!B\u0008\t\u0005\u00171q1$D\u0001\u0003\u0013\ti!A\u0001\u0005NC&tgj\u001c3f!\ty\u0001\u0003\u0004\u0001\u0005\u000bE\u0001!\u0019A\n\u0003\u0003-\u001b\u0001!\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u0005=aB!B\u000f\u0001\u0005\u0004\u0019\"!\u0001,\u0011\t-ybbG\u0005\u0003A\t\u0011aa\u0013,O_\u0012,\u0007\u0002\u0003\u0012\u0001\u0005\u000b\u0007IQA\u0012\u0002\u0003-,\u0012A\u0004\u0005\tK\u0001\u0011\t\u0011)A\u0007\u001d\u0005\u00111\u000e\t\u0005\tO\u0001\u0011)\u0019!C\u0003Q\u0005\ta/F\u0001\u001c\u0011!Q\u0003A!A!\u0002\u001bY\u0012A\u0001<!\u0011!a\u0003A!b\u0001\n\u000bi\u0013A\u00015d+\u0005q\u0003CA\u000b0\u0013\t\u0001dAA\u0002J]RD\u0001B\r\u0001\u0003\u0002\u0003\u0006iAL\u0001\u0004Q\u000e\u0004\u0003\"\u0002\u001b\u0001\t\u0003)\u0014A\u0002\u001fj]&$h\u0008\u0006\u00037oaJ\u0004\u0003B\u0006\u0001\u001dmAQAI\u001aA\u00029AQaJ\u001aA\u0002mAQ\u0001L\u001aA\u00029BQa\u000f\u0001\u0005\u0006q\nAaY8qsV\ta\u0007C\u0003?\u0001\u0011\u0015A(\u0001\u0006d_BLHk\\7cK\u0012DQ\u0001\u0011\u0001\u0005\u0006\u0005\u000bAbY8qsVsGo\\7cK\u0012,\u0012A\u0011\t\u0005\u0017\rs1$\u0003\u0002E\u0005\t)1KT8eK\")a\t\u0001C\u0003\u000f\u000611N\u001e)bSJ,\u0012\u0001\u0013\t\u0005+%s1$\u0003\u0002K\r\t1A+\u001e9mKJBQ\u0001\u0014\u0001\u0005\u00065\u000b!bY1dQ\u0016$7+\u001b>f)\tqc\nC\u0003P\u0017\u0002\u0007\u0001+\u0001\u0002diB\u0011Q#U\u0005\u0003%\u001a\u0011a!\u00118z%\u00164\u0007\"\u0002+\u0001\t\u000b)\u0016AB:ue&tw\r\u0006\u0002W=B\u0011q\u000bX\u0007\u00021*\u0011\u0011LW\u0001\u0005Y\u0006twMC\u0001\\\u0003\u0011Q\u0017M^1\n\u0005uC&AB*ue&tw\rC\u0003`\'\u0002\u0007a&A\u0002mKZ\u0004"
.end annotation


# instance fields
.field private final hc:I

.field private final k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lscala/collection/concurrent/TNode;->k:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/concurrent/TNode;->v:Ljava/lang/Object;

    iput p3, p0, Lscala/collection/concurrent/TNode;->hc:I

    .line 422
    invoke-direct {p0}, Lscala/collection/concurrent/MainNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final cachedSize(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final copy()Lscala/collection/concurrent/TNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 423
    new-instance v0, Lscala/collection/concurrent/TNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->hc()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/concurrent/TNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final copyTombed()Lscala/collection/concurrent/TNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 424
    new-instance v0, Lscala/collection/concurrent/TNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->hc()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/concurrent/TNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final copyUntombed()Lscala/collection/concurrent/SNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/SNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 425
    new-instance v0, Lscala/collection/concurrent/SNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->hc()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final hc()I
    .locals 1

    .line 421
    iget v0, p0, Lscala/collection/concurrent/TNode;->hc:I

    return v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lscala/collection/concurrent/TNode;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final kvPair()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 426
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final string(I)Ljava/lang/String;
    .locals 5

    .line 428
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "  "

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lscala/collection/immutable/StringOps;->$times(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "TNode(%s, %s, %x, !)"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->k()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->v()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/collection/concurrent/TNode;->hc()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lscala/collection/concurrent/TNode;->v:Ljava/lang/Object;

    return-object v0
.end method
