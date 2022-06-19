.class public final Lscala/collection/concurrent/SNode;
.super Lscala/collection/concurrent/BasicNode;
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
        "Lscala/collection/concurrent/BasicNode;",
        "Lscala/collection/concurrent/KVNode<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001a3Q!\u0001\u0002\u0003\t!\u0011Qa\u0015(pI\u0016T!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGO\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,2!C\n \'\r\u0001!B\u0004\t\u0003\u00171i\u0011AA\u0005\u0003\u001b\t\u0011\u0011BQ1tS\u000etu\u000eZ3\u0011\t-y\u0011CH\u0005\u0003!\t\u0011aa\u0013,O_\u0012,\u0007C\u0001\n\u0014\u0019\u0001!Q\u0001\u0006\u0001C\u0002Y\u0011\u0011aS\u0002\u0001#\t92\u0004\u0005\u0002\u001935\ta!\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\r\u001d\u0013\tibAA\u0002B]f\u0004\"AE\u0010\u0005\u000b\u0001\u0002!\u0019\u0001\u000c\u0003\u0003YC\u0001B\t\u0001\u0003\u0006\u0004%)aI\u0001\u0002WV\t\u0011\u0003\u0003\u0005&\u0001\t\u0005\t\u0015!\u0004\u0012\u0003\tY\u0007\u0005\u0003\u0005(\u0001\t\u0015\r\u0011\"\u0002)\u0003\u00051X#\u0001\u0010\t\u0011)\u0002!\u0011!Q\u0001\u000ey\t!A\u001e\u0011\t\u00111\u0002!Q1A\u0005\u00065\n!\u0001[2\u0016\u00039\u0002\"\u0001G\u0018\n\u0005A2!aA%oi\"A!\u0007\u0001B\u0001B\u00035a&A\u0002iG\u0002BQ\u0001\u000e\u0001\u0005\u0002U\na\u0001P5oSRtD\u0003\u0002\u001c8qe\u0002Ba\u0003\u0001\u0012=!)!e\ra\u0001#!)qe\ra\u0001=!)Af\ra\u0001]!)1\u0008\u0001C\u0003y\u0005!1m\u001c9z+\u00051\u0004\"\u0002 \u0001\t\u000by\u0014AC2paf$v.\u001c2fIV\t\u0001\t\u0005\u0003\u000c\u0003Fq\u0012B\u0001\"\u0003\u0005\u0015!fj\u001c3f\u0011\u0015!\u0005\u0001\"\u0002=\u00031\u0019w\u000e]=V]R|WNY3e\u0011\u00151\u0005\u0001\"\u0002H\u0003\u0019Yg\u000fU1jeV\t\u0001\n\u0005\u0003\u0019\u0013Fq\u0012B\u0001&\u0007\u0005\u0019!V\u000f\u001d7fe!)A\n\u0001C\u0003\u001b\u000611\u000f\u001e:j]\u001e$\"A\u0014,\u0011\u0005=#V\"\u0001)\u000b\u0005E\u0013\u0016\u0001\u00027b]\u001eT\u0011aU\u0001\u0005U\u00064\u0018-\u0003\u0002V!\n11\u000b\u001e:j]\u001eDQaV&A\u00029\n1\u0001\\3w\u0001"
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

    .line 411
    iput-object p1, p0, Lscala/collection/concurrent/SNode;->k:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/concurrent/SNode;->v:Ljava/lang/Object;

    iput p3, p0, Lscala/collection/concurrent/SNode;->hc:I

    .line 412
    invoke-direct {p0}, Lscala/collection/concurrent/BasicNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lscala/collection/concurrent/SNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/SNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 413
    new-instance v0, Lscala/collection/concurrent/SNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

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

    .line 414
    new-instance v0, Lscala/collection/concurrent/TNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->hc()I

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

    .line 415
    new-instance v0, Lscala/collection/concurrent/SNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final hc()I
    .locals 1

    .line 411
    iget v0, p0, Lscala/collection/concurrent/SNode;->hc:I

    return v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lscala/collection/concurrent/SNode;->k:Ljava/lang/Object;

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

    .line 416
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final string(I)Ljava/lang/String;
    .locals 5

    .line 417
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

    const-string v1, "SNode(%s, %s, %x)"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/collection/concurrent/SNode;->hc()I

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

    .line 411
    iget-object v0, p0, Lscala/collection/concurrent/SNode;->v:Ljava/lang/Object;

    return-object v0
.end method
