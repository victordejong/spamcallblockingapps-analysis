.class public final Lscala/collection/concurrent/INode;
.super Lscala/collection/concurrent/INodeBase;
.source "TrieMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/concurrent/INodeBase<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005]g!B\u0001\u0003\u0005\u0011A!!B%O_\u0012,\'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000cWcA\u0005\u00119M\u0011\u0001A\u0003\t\u0005\u00171q1$D\u0001\u0003\u0013\ti!AA\u0005J\u001d>$WMQ1tKB\u0011q\u0002\u0005\u0007\u0001\t\u0015\t\u0002A1\u0001\u0014\u0005\u0005Y5\u0001A\t\u0003)a\u0001\"!\u0006\u000c\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\tyA\u0004B\u0003\u001e\u0001\t\u00071CA\u0001W\u0011!y\u0002A!A!\u0002\u0013\u0001\u0013A\u00012o!\u0011Y\u0011ED\u000e\n\u0005\t\u0012!\u0001C\'bS:tu\u000eZ3\t\u0011\u0011\u0002!\u0011!Q\u0001\n\u0015\n\u0011a\u001a\t\u0003\u0017\u0019J!a\n\u0002\u0003\u0007\u001d+g\u000eC\u0003*\u0001\u0011\u0005!&\u0001\u0004=S:LGO\u0010\u000b\u0004W1j\u0003\u0003B\u0006\u0001\u001dmAQa\u0008\u0015A\u0002\u0001BQ\u0001\n\u0015A\u0002\u0015BQ!\u000b\u0001\u0005\u0002=\"\"a\u000b\u0019\t\u000b\u0011r\u0003\u0019A\u0013\t\u000bI\u0002A\u0011A\u001a\u0002\u000b]\u0013\u0016\nV#\u0015\u0005Q:\u0004CA\u000b6\u0013\t1dA\u0001\u0003V]&$\u0008\"\u0002\u001d2\u0001\u0004\u0001\u0013\u0001\u00028wC2DQA\u000f\u0001\u0005\u0002m\n1aQ!T)\rat(\u0011\t\u0003+uJ!A\u0010\u0004\u0003\u000f\t{w\u000e\\3b]\")\u0001)\u000fa\u0001A\u0005\u0019q\u000e\u001c3\t\u000b\tK\u0004\u0019\u0001\u0011\u0002\u00039DQ\u0001\u0012\u0001\u0005\u0002\u0015\u000b\u0001bZ2bgJ+\u0017\r\u001a\u000b\u0003A\u0019CQaR\"A\u0002!\u000b!a\u0019;\u0011\t-IebG\u0005\u0003\u0015\n\u0011q\u0001\u0016:jK6\u000b\u0007\u000fC\u0003M\u0001\u0011\u0005Q*A\u0005H\u0007\u0006\u001bvLU#B\tR\u0011\u0001E\u0014\u0005\u0006\u000f.\u0003\r\u0001\u0013\u0005\u0006!\u0002!I!U\u0001\u000e\u000f\u000e\u000b5kX\"p[BdW\r^3\u0015\u0007\u0001\u0012F\u000bC\u0003T\u001f\u0002\u0007\u0001%A\u0001n\u0011\u00159u\n1\u0001IQ\tye\u000b\u0005\u0002X56\t\u0001L\u0003\u0002Z\r\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005mC&a\u0002;bS2\u0014Xm\u0019\u0005\u0006;\u0002!\tAX\u0001\u0005\u000f\u000e\u000b5\u000b\u0006\u0003=?\u0002\u000c\u0007\"\u0002!]\u0001\u0004\u0001\u0003\"\u0002\"]\u0001\u0004\u0001\u0003\"B$]\u0001\u0004A\u0005\"B2\u0001\t\u0013!\u0017!B3rk\u0006dG\u0003\u0002\u001ffO&DQA\u001a2A\u00029\t!a[\u0019\t\u000b!\u0014\u0007\u0019\u0001\u0008\u0002\u0005-\u0014\u0004\"B$c\u0001\u0004A\u0005\"B6\u0001\t\u0013a\u0017!B5o_\u0012,GCA\u0016n\u0011\u0015q\'\u000e1\u0001!\u0003\t\u0019g\u000eC\u0003q\u0001\u0011\u0005\u0011/A\u0005d_BLHk\\$f]R\u00191F\u001d;\t\u000bM|\u0007\u0019A\u0013\u0002\t9<WM\u001c\u0005\u0006\u000f>\u0004\r\u0001\u0013\u0005\u0006m\u0002!\ta^\u0001\u000be\u0016\u001cw,\u001b8tKJ$H\u0003\u0004\u001fyur\u000c\u0019!a\u0002\u0002\u000c\u0005=\u0001\"B=v\u0001\u0004q\u0011!A6\t\u000bm,\u0008\u0019A\u000e\u0002\u0003YDQ!`;A\u0002y\u000c!\u0001[2\u0011\u0005Uy\u0018bAA\u0001\r\t\u0019\u0011J\u001c;\t\r\u0005\u0015Q\u000f1\u0001\u007f\u0003\raWM\u001e\u0005\u0007\u0003\u0013)\u0008\u0019A\u0016\u0002\rA\u000c\'/\u001a8u\u0011\u0019\ti!\u001ea\u0001K\u0005A1\u000f^1si\u001e,g\u000eC\u0003Hk\u0002\u0007\u0001\n\u000b\u0002v-\"9\u0011Q\u0003\u0001\u0005\u0002\u0005]\u0011\u0001\u0004:fG~Kgn]3si&4GCEA\r\u0003?\t\t#a\t\u0002&\u0005=\u0012\u0011GA\u001a\u0003k\u0001B!FA\u000e7%\u0019\u0011Q\u0004\u0004\u0003\r=\u0003H/[8o\u0011\u0019I\u00181\u0003a\u0001\u001d!110a\u0005A\u0002mAa!`A\n\u0001\u0004q\u0008\u0002CA\u0014\u0003\'\u0001\r!!\u000b\u0002\t\r|g\u000e\u001a\t\u0004+\u0005-\u0012bAA\u0017\r\t1\u0011I\\=SK\u001aDq!!\u0002\u0002\u0014\u0001\u0007a\u0010C\u0004\u0002\n\u0005M\u0001\u0019A\u0016\t\u000f\u00055\u00111\u0003a\u0001K!1q)a\u0005A\u0002!C3!a\u0005W\u0011\u001d\tY\u0004\u0001C\u0001\u0003{\t!B]3d?2|wn[;q)9\tI#a\u0010\u0002B\u0005\r\u0013QIA$\u0003\u0013Ba!_A\u001d\u0001\u0004q\u0001BB?\u0002:\u0001\u0007a\u0010C\u0004\u0002\u0006\u0005e\u0002\u0019\u0001@\t\u000f\u0005%\u0011\u0011\u0008a\u0001W!9\u0011QBA\u001d\u0001\u0004)\u0003BB$\u0002:\u0001\u0007\u0001\nK\u0002\u0002:YCq!a\u0014\u0001\t\u0003\t\t&\u0001\u0006sK\u000e|&/Z7pm\u0016$\u0002#!\u0007\u0002T\u0005U\u0013qKA-\u00037\ni&a\u0018\t\re\u000ci\u00051\u0001\u000f\u0011\u0019Y\u0018Q\na\u00017!1Q0!\u0014A\u0002yDq!!\u0002\u0002N\u0001\u0007a\u0010C\u0004\u0002\n\u00055\u0003\u0019A\u0016\t\u000f\u00055\u0011Q\na\u0001K!1q)!\u0014A\u0002!Cq!a\u0019\u0001\t\u0013\t)\'A\u0003dY\u0016\u000cg\u000eF\u00045\u0003O\nY\'!\u001c\t\u000f\u0005%\u0014\u0011\ra\u0001W\u0005\u0011a\u000e\u001a\u0005\u0007\u000f\u0006\u0005\u0004\u0019\u0001%\t\u000f\u0005\u0015\u0011\u0011\ra\u0001}\"9\u0011\u0011\u000f\u0001\u0005\u0002\u0005M\u0014aC5t\u001dVdG.\u00138pI\u0016$2\u0001PA;\u0011\u00199\u0015q\u000ea\u0001\u0011\"9\u0011\u0011\u0010\u0001\u0005\u0002\u0005m\u0014AC2bG\",GmU5{KR\u0019a0! \t\r\u001d\u000b9\u00081\u0001I\u0011\u001d\t\t\t\u0001C\u0001\u0003\u0007\u000baa\u001d;sS:<G\u0003BAC\u0003\'\u0003B!a\"\u0002\u000e:\u0019Q#!#\n\u0007\u0005-e!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003\u001f\u000b\tJ\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003\u00173\u0001bBA\u0003\u0003\u007f\u0002\rA`\u0004\t\u0003/\u0013\u0001\u0012\u0001\u0002\u0002\u001a\u0006)\u0011JT8eKB\u00191\"a\'\u0007\u000f\u0005\u0011\u0001\u0012\u0001\u0002\u0002\u001eN!\u00111TA\u0015\u0011\u001dI\u00131\u0014C\u0001\u0003C#\"!!\'\t\u0015\u0005\u0015\u00161\u0014b\u0001\n\u0003\t9+A\u0006L\u000bf{\u0006KU#T\u000b:#VCAAU!\u0011\tY+!.\u000e\u0005\u00055&\u0002BAX\u0003c\u000bA\u0001\\1oO*\u0011\u00111W\u0001\u0005U\u00064\u0018-\u0003\u0003\u00028\u00065&AB(cU\u0016\u001cG\u000fC\u0005\u0002<\u0006m\u0005\u0015!\u0003\u0002*\u0006a1*R-`!J+5+\u0012(UA!Q\u0011qXAN\u0005\u0004%\t!a*\u0002\u0015-+\u0015lX!C\'\u0016sE\u000bC\u0005\u0002D\u0006m\u0005\u0015!\u0003\u0002*\u0006Y1*R-`\u0003\n\u001bVI\u0014+!\u0011!\t9-a\'\u0005\u0002\u0005%\u0017a\u00038foJ{w\u000e\u001e(pI\u0016,b!a3\u0002R\u0006UWCAAg!\u0019Y\u0001!a4\u0002TB\u0019q\"!5\u0005\rE\t)M1\u0001\u0014!\ry\u0011Q\u001b\u0003\u0007;\u0005\u0015\'\u0019A\n"
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/concurrent/Gen;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/Gen;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, p1}, Lscala/collection/concurrent/INode;-><init>(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/Gen;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/Gen;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/Gen;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p2}, Lscala/collection/concurrent/INodeBase;-><init>(Lscala/collection/concurrent/Gen;)V

    .line 25
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/INode;->WRITE(Lscala/collection/concurrent/MainNode;)V

    return-void
.end method

.method private GCAS_Complete(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_2

    .line 44
    :cond_1
    iget-object v1, p1, Lscala/collection/concurrent/MainNode;->prev:Lscala/collection/concurrent/MainNode;

    const/4 v2, 0x1

    .line 45
    invoke-virtual {p2, v2}, Lscala/collection/concurrent/TrieMap;->readRoot(Z)Lscala/collection/concurrent/INode;

    move-result-object v2

    if-nez v1, :cond_2

    goto :goto_1

    .line 50
    :cond_2
    instance-of v3, v1, Lscala/collection/concurrent/FailedNode;

    if-eqz v3, :cond_4

    check-cast v1, Lscala/collection/concurrent/FailedNode;

    .line 51
    iget-object v0, v1, Lscala/collection/concurrent/FailedNode;->prev:Lscala/collection/concurrent/MainNode;

    invoke-virtual {p0, p1, v0}, Lscala/collection/concurrent/INode;->CAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v1, Lscala/collection/concurrent/FailedNode;->prev:Lscala/collection/concurrent/MainNode;

    goto :goto_1

    .line 52
    :cond_3
    iget-object p1, p0, Lscala/collection/concurrent/INode;->mainnode:Lscala/collection/concurrent/MainNode;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    .line 62
    iget-object v2, v2, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    iget-object v3, p0, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v2, v3, :cond_5

    invoke-virtual {p2}, Lscala/collection/concurrent/TrieMap;->nonReadOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    invoke-virtual {p1, v1, v0}, Lscala/collection/concurrent/MainNode;->CAS_PREV(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    move-object v0, p1

    :goto_2
    return-object v0

    .line 68
    :cond_5
    new-instance v0, Lscala/collection/concurrent/FailedNode;

    invoke-direct {v0, v1}, Lscala/collection/concurrent/FailedNode;-><init>(Lscala/collection/concurrent/MainNode;)V

    invoke-virtual {p1, v1, v0}, Lscala/collection/concurrent/MainNode;->CAS_PREV(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;)Z

    .line 69
    iget-object p1, p0, Lscala/collection/concurrent/INode;->mainnode:Lscala/collection/concurrent/MainNode;

    goto :goto_0

    .line 47
    :cond_6
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static KEY_ABSENT()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v0}, Lscala/collection/concurrent/INode$;->KEY_ABSENT()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static KEY_PRESENT()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v0}, Lscala/collection/concurrent/INode$;->KEY_PRESENT()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private clean(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/TrieMap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 357
    invoke-virtual {p1, p2}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    .line 358
    instance-of v1, v0, Lscala/collection/concurrent/CNode;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/concurrent/CNode;

    iget-object v1, p0, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v0, p2, p3, v1}, Lscala/collection/concurrent/CNode;->toCompressed(Lscala/collection/concurrent/TrieMap;ILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;

    move-result-object p3

    invoke-virtual {p1, v0, p3, p2}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 360
    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-void
.end method

.method private final cleanParent$1(Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)V
    .locals 5

    .line 309
    :cond_0
    invoke-virtual {p4, p6}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    .line 310
    instance-of v1, v0, Lscala/collection/concurrent/CNode;

    if-eqz v1, :cond_6

    check-cast v0, Lscala/collection/concurrent/CNode;

    add-int/lit8 v1, p3, -0x5

    ushr-int v2, p2, v1

    and-int/lit8 v2, v2, 0x1f

    .line 313
    invoke-virtual {v0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v3

    const/4 v4, 0x1

    shl-int v2, v4, v2

    and-int v4, v3, v2

    if-nez v4, :cond_1

    .line 315
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    .line 317
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 318
    invoke-virtual {v0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v3

    aget-object v3, v3, v2

    if-ne v3, p0, :cond_5

    .line 320
    instance-of v3, p1, Lscala/collection/concurrent/TNode;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lscala/collection/concurrent/TNode;

    .line 321
    invoke-virtual {v3}, Lscala/collection/concurrent/TNode;->copyUntombed()Lscala/collection/concurrent/SNode;

    move-result-object v3

    iget-object v4, p0, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v0, v2, v3, v4}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lscala/collection/concurrent/CNode;->toContracted(I)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    .line 322
    invoke-virtual {p4, v0, v1, p6}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p6}, Lscala/collection/concurrent/TrieMap;->readRoot$default$1()Z

    move-result v0

    invoke-virtual {p6, v0}, Lscala/collection/concurrent/TrieMap;->readRoot(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    iget-object v0, v0, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-nez v0, :cond_3

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 319
    :cond_4
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_5
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 326
    :cond_6
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 310
    :goto_2
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private final cleanReadOnly$1(Lscala/collection/concurrent/TNode;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/TrieMap;)Ljava/lang/Object;
    .locals 1

    .line 262
    invoke-virtual {p6}, Lscala/collection/concurrent/TrieMap;->nonReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p4, p4, -0x5

    .line 263
    invoke-direct {p0, p5, p6, p4}, Lscala/collection/concurrent/INode;->clean(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/TrieMap;I)V

    .line 264
    sget-object p1, Lscala/collection/concurrent/INodeBase;->RESTART:Ljava/lang/Object;

    goto :goto_1

    .line 266
    :cond_0
    invoke-virtual {p1}, Lscala/collection/concurrent/TNode;->hc()I

    move-result p4

    if-ne p4, p3, :cond_5

    invoke-virtual {p1}, Lscala/collection/concurrent/TNode;->k()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of p4, p3, Ljava/lang/Number;

    if-eqz p4, :cond_3

    check-cast p3, Ljava/lang/Number;

    invoke-static {p3, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_3
    instance-of p4, p3, Ljava/lang/Character;

    if-eqz p4, :cond_4

    check-cast p3, Ljava/lang/Character;

    invoke-static {p3, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lscala/collection/concurrent/TNode;->v()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 82
    invoke-virtual {p3}, Lscala/collection/concurrent/TrieMap;->equality()Lscala/math/Equiv;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lscala/math/Equiv;->equiv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private inode(Lscala/collection/concurrent/MainNode;)Lscala/collection/concurrent/INode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lscala/collection/concurrent/INode;

    iget-object v1, p0, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-direct {v0, v1}, Lscala/collection/concurrent/INode;-><init>(Lscala/collection/concurrent/Gen;)V

    .line 86
    invoke-virtual {v0, p1}, Lscala/collection/concurrent/INode;->WRITE(Lscala/collection/concurrent/MainNode;)V

    return-object v0
.end method

.method private final insertln$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;Lscala/collection/concurrent/LNode;)Z
    .locals 0

    .line 207
    invoke-virtual {p4, p1, p2}, Lscala/collection/concurrent/LNode;->inserted(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/concurrent/LNode;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p4, p1, p3}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result p1

    return p1
.end method

.method public static newRootNode()Lscala/collection/concurrent/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v0}, Lscala/collection/concurrent/INode$;->newRootNode()Lscala/collection/concurrent/INode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 31
    sget-object v0, Lscala/collection/concurrent/INodeBase;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 75
    invoke-virtual {p2, p1}, Lscala/collection/concurrent/MainNode;->WRITE_PREV(Lscala/collection/concurrent/MainNode;)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/concurrent/INode;->CAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0, p2, p3}, Lscala/collection/concurrent/INode;->GCAS_Complete(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    .line 78
    iget-object p1, p2, Lscala/collection/concurrent/MainNode;->prev:Lscala/collection/concurrent/MainNode;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lscala/collection/concurrent/INode;->mainnode:Lscala/collection/concurrent/MainNode;

    .line 37
    iget-object v1, v0, Lscala/collection/concurrent/MainNode;->prev:Lscala/collection/concurrent/MainNode;

    if-nez v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, v0, p1}, Lscala/collection/concurrent/INode;->GCAS_Complete(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public WRITE(Lscala/collection/concurrent/MainNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 29
    sget-object v0, Lscala/collection/concurrent/INodeBase;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public cachedSize(Lscala/collection/concurrent/TrieMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Lscala/collection/concurrent/MainNode;->cachedSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public copyToGen(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/Gen;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lscala/collection/concurrent/INode;

    invoke-direct {v0, p1}, Lscala/collection/concurrent/INode;-><init>(Lscala/collection/concurrent/Gen;)V

    .line 92
    invoke-virtual {p0, p2}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Lscala/collection/concurrent/INode;->WRITE(Lscala/collection/concurrent/MainNode;)V

    return-object v0
.end method

.method public gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object p1

    return-object p1
.end method

.method public isNullInode(Lscala/collection/concurrent/TrieMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 364
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public rec_insert(Ljava/lang/Object;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/Gen;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v2, p6

    move-object/from16 v7, p7

    move-object v8, p0

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {v8, v7}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v6

    .line 104
    instance-of v9, v6, Lscala/collection/concurrent/CNode;

    const/4 v10, 0x0

    if-eqz v9, :cond_8

    move-object v9, v6

    check-cast v9, Lscala/collection/concurrent/CNode;

    ushr-int v6, v4, v3

    and-int/lit8 v6, v6, 0x1f

    const/4 v11, 0x1

    shl-int v6, v11, v6

    .line 108
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v11

    add-int/lit8 v12, v6, -0x1

    and-int/2addr v12, v11

    .line 110
    invoke-static {v12}, Ljava/lang/Integer;->bitCount(I)I

    move-result v12

    and-int/2addr v11, v6

    if-eqz v11, :cond_6

    .line 113
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v6

    aget-object v6, v6, v12

    .line 114
    instance-of v11, v6, Lscala/collection/concurrent/INode;

    if-eqz v11, :cond_2

    check-cast v6, Lscala/collection/concurrent/INode;

    .line 115
    iget-object v11, v6, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v2, v11, :cond_1

    add-int/lit8 v3, v3, 0x5

    move-object v5, v8

    move-object v8, v6

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v9, v2, v7}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v6

    invoke-virtual {v8, v9, v6, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 120
    :cond_2
    instance-of v2, v6, Lscala/collection/concurrent/SNode;

    if-eqz v2, :cond_5

    move-object v2, v6

    check-cast v2, Lscala/collection/concurrent/SNode;

    .line 121
    invoke-virtual {v2}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v5

    if-ne v5, v4, :cond_3

    invoke-virtual {v2}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v8, v5, v0, v7}, Lscala/collection/concurrent/INode;->equal(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Lscala/collection/concurrent/SNode;

    invoke-direct {v2, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v12, v2, v0}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    :goto_1
    move v10, v0

    goto/16 :goto_4

    .line 123
    :cond_3
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->gen()Lscala/collection/concurrent/Gen;

    move-result-object v5

    iget-object v6, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v5, v6, :cond_4

    move-object v10, v9

    goto :goto_2

    :cond_4
    iget-object v5, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v5, v7}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v5

    move-object v10, v5

    .line 124
    :goto_2
    sget-object v5, Lscala/collection/concurrent/CNode$;->MODULE$:Lscala/collection/concurrent/CNode$;

    invoke-virtual {v2}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v6

    new-instance v11, Lscala/collection/concurrent/SNode;

    invoke-direct {v11, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v13, v3, 0x5

    iget-object v14, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    move-object v0, v5

    move-object v1, v2

    move v2, v6

    move-object v3, v11

    move/from16 v4, p3

    move v5, v13

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lscala/collection/concurrent/CNode$;->dual(Lscala/collection/concurrent/SNode;ILscala/collection/concurrent/SNode;IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    invoke-direct {v8, v0}, Lscala/collection/concurrent/INode;->inode(Lscala/collection/concurrent/MainNode;)Lscala/collection/concurrent/INode;

    move-result-object v0

    iget-object v1, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v10, v12, v0, v1}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    .line 125
    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    goto :goto_1

    .line 113
    :cond_5
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v6}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 129
    :cond_6
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->gen()Lscala/collection/concurrent/Gen;

    move-result-object v2

    iget-object v3, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v2, v3, :cond_7

    move-object v2, v9

    goto :goto_3

    :cond_7
    iget-object v2, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v2, v7}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v2

    .line 130
    :goto_3
    new-instance v3, Lscala/collection/concurrent/SNode;

    invoke-direct {v3, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v2, v12, v6, v3, v0}, Lscala/collection/concurrent/CNode;->insertedAt(IILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    .line 131
    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    goto :goto_1

    .line 133
    :cond_8
    instance-of v2, v6, Lscala/collection/concurrent/TNode;

    if-eqz v2, :cond_9

    add-int/lit8 v3, v3, -0x5

    .line 134
    invoke-direct {v8, v5, v7, v3}, Lscala/collection/concurrent/INode;->clean(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/TrieMap;I)V

    goto :goto_4

    .line 136
    :cond_9
    instance-of v2, v6, Lscala/collection/concurrent/LNode;

    if-eqz v2, :cond_a

    check-cast v6, Lscala/collection/concurrent/LNode;

    .line 137
    invoke-virtual {v6, v0, v1}, Lscala/collection/concurrent/LNode;->inserted(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/concurrent/LNode;

    move-result-object v0

    .line 138
    invoke-virtual {v8, v6, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v10

    :goto_4
    return v10

    .line 104
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v6}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public rec_insertif(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/Option;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/lang/Object;",
            "I",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/Gen;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p0

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 148
    :cond_0
    :goto_0
    invoke-virtual {v8, v7}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v9

    .line 150
    instance-of v10, v9, Lscala/collection/concurrent/CNode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_27

    check-cast v9, Lscala/collection/concurrent/CNode;

    ushr-int v10, v4, v5

    and-int/lit8 v10, v10, 0x1f

    shl-int v10, v13, v10

    .line 154
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v14

    add-int/lit8 v15, v10, -0x1

    and-int/2addr v15, v14

    .line 156
    invoke-static {v15}, Ljava/lang/Integer;->bitCount(I)I

    move-result v15

    and-int/2addr v14, v10

    if-eqz v14, :cond_19

    .line 159
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v10

    aget-object v10, v10, v15

    .line 160
    instance-of v14, v10, Lscala/collection/concurrent/INode;

    if-eqz v14, :cond_2

    check-cast v10, Lscala/collection/concurrent/INode;

    .line 161
    iget-object v11, v10, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v3, v11, :cond_1

    add-int/lit8 v5, v5, 0x5

    move-object v6, v8

    move-object v8, v10

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v9, v3, v7}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_f

    .line 166
    :cond_2
    instance-of v3, v10, Lscala/collection/concurrent/SNode;

    if-eqz v3, :cond_18

    move-object v3, v10

    check-cast v3, Lscala/collection/concurrent/SNode;

    if-nez v2, :cond_5

    .line 168
    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2, v0, v7}, Lscala/collection/concurrent/INode;->equal(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    new-instance v2, Lscala/collection/concurrent/SNode;

    invoke-direct {v2, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v15, v2, v0}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v12, Lscala/Some;

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v12, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 171
    :cond_3
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->gen()Lscala/collection/concurrent/Gen;

    move-result-object v2

    iget-object v6, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v2, v6, :cond_4

    move-object v10, v9

    goto :goto_1

    :cond_4
    iget-object v2, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v2, v7}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v2

    move-object v10, v2

    .line 172
    :goto_1
    sget-object v2, Lscala/collection/concurrent/CNode$;->MODULE$:Lscala/collection/concurrent/CNode$;

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v6

    new-instance v11, Lscala/collection/concurrent/SNode;

    invoke-direct {v11, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v5, v5, 0x5

    iget-object v13, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    move-object v0, v2

    move-object v1, v3

    move v2, v6

    move-object v3, v11

    move/from16 v4, p3

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lscala/collection/concurrent/CNode$;->dual(Lscala/collection/concurrent/SNode;ILscala/collection/concurrent/SNode;IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    invoke-direct {v8, v0}, Lscala/collection/concurrent/INode;->inode(Lscala/collection/concurrent/MainNode;)Lscala/collection/concurrent/INode;

    move-result-object v0

    iget-object v1, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v10, v15, v0, v1}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    .line 173
    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_f

    .line 176
    :cond_5
    sget-object v6, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v6}, Lscala/collection/concurrent/INode$;->KEY_ABSENT()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    if-nez v6, :cond_7

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    instance-of v10, v6, Ljava/lang/Number;

    if-eqz v10, :cond_8

    check-cast v6, Ljava/lang/Number;

    invoke-static {v6, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_8
    instance-of v10, v6, Ljava/lang/Character;

    if-eqz v10, :cond_9

    check-cast v6, Ljava/lang/Character;

    invoke-static {v6, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_9
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-eqz v6, :cond_c

    .line 177
    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v2

    if-ne v2, v4, :cond_a

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2, v0, v7}, Lscala/collection/concurrent/INode;->equal(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v12, Lscala/Some;

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v12, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 179
    :cond_a
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->gen()Lscala/collection/concurrent/Gen;

    move-result-object v2

    iget-object v6, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v2, v6, :cond_b

    move-object v10, v9

    goto :goto_3

    :cond_b
    iget-object v2, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v2, v7}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v2

    move-object v10, v2

    .line 180
    :goto_3
    sget-object v2, Lscala/collection/concurrent/CNode$;->MODULE$:Lscala/collection/concurrent/CNode$;

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v6

    new-instance v11, Lscala/collection/concurrent/SNode;

    invoke-direct {v11, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v5, v5, 0x5

    iget-object v13, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    move-object v0, v2

    move-object v1, v3

    move v2, v6

    move-object v3, v11

    move/from16 v4, p3

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lscala/collection/concurrent/CNode$;->dual(Lscala/collection/concurrent/SNode;ILscala/collection/concurrent/SNode;IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    invoke-direct {v8, v0}, Lscala/collection/concurrent/INode;->inode(Lscala/collection/concurrent/MainNode;)Lscala/collection/concurrent/INode;

    move-result-object v0

    iget-object v1, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v10, v15, v0, v1}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    .line 181
    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_f

    .line 184
    :cond_c
    sget-object v5, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v5}, Lscala/collection/concurrent/INode$;->KEY_PRESENT()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_d

    const/4 v5, 0x1

    goto :goto_4

    :cond_d
    if-nez v5, :cond_e

    const/4 v5, 0x0

    goto :goto_4

    :cond_e
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_f

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_4

    :cond_f
    instance-of v6, v5, Ljava/lang/Character;

    if-eqz v6, :cond_10

    check-cast v5, Ljava/lang/Character;

    invoke-static {v5, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_4

    :cond_10
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_4
    if-eqz v5, :cond_12

    .line 185
    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v2

    if-ne v2, v4, :cond_11

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v8, v2, v0, v7}, Lscala/collection/concurrent/INode;->equal(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 186
    new-instance v2, Lscala/collection/concurrent/SNode;

    invoke-direct {v2, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v15, v2, v0}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v12, Lscala/Some;

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v12, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 187
    :cond_11
    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_f

    .line 189
    :cond_12
    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v5

    if-ne v5, v4, :cond_17

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v8, v5, v0, v7}, Lscala/collection/concurrent/INode;->equal(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_13

    const/4 v11, 0x1

    goto :goto_5

    :cond_13
    if-nez v5, :cond_14

    goto :goto_5

    :cond_14
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_15

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_5

    :cond_15
    instance-of v6, v5, Ljava/lang/Character;

    if-eqz v6, :cond_16

    check-cast v5, Ljava/lang/Character;

    invoke-static {v5, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_5

    :cond_16
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    :goto_5
    if-eqz v11, :cond_17

    .line 190
    new-instance v2, Lscala/collection/concurrent/SNode;

    invoke-direct {v2, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v15, v2, v0}, Lscala/collection/concurrent/CNode;->updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v12, Lscala/Some;

    invoke-virtual {v3}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v12, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 191
    :cond_17
    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_f

    .line 159
    :cond_18
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v10}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_19
    if-nez v2, :cond_1a

    :goto_6
    const/4 v3, 0x1

    goto :goto_8

    .line 194
    :cond_1a
    sget-object v3, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v3}, Lscala/collection/concurrent/INode$;->KEY_ABSENT()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1b

    const/4 v3, 0x1

    goto :goto_7

    :cond_1b
    if-nez v3, :cond_1c

    const/4 v3, 0x0

    goto :goto_7

    :cond_1c
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_1d

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7

    :cond_1d
    instance-of v5, v3, Ljava/lang/Character;

    if-eqz v5, :cond_1e

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7

    :cond_1e
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_7
    if-eqz v3, :cond_1f

    goto :goto_6

    :cond_1f
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_21

    .line 196
    invoke-virtual {v9}, Lscala/collection/concurrent/CNode;->gen()Lscala/collection/concurrent/Gen;

    move-result-object v2

    iget-object v3, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v2, v3, :cond_20

    move-object v2, v9

    goto :goto_9

    :cond_20
    iget-object v2, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v9, v2, v7}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v2

    .line 197
    :goto_9
    new-instance v3, Lscala/collection/concurrent/SNode;

    invoke-direct {v3, v0, v1, v4}, Lscala/collection/concurrent/SNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v2, v15, v10, v3, v0}, Lscala/collection/concurrent/CNode;->insertedAt(IILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v0

    .line 198
    invoke-virtual {v8, v9, v0, v7}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_f

    .line 199
    :cond_21
    sget-object v0, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v0}, Lscala/collection/concurrent/INode$;->KEY_PRESENT()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_22

    const/4 v11, 0x1

    goto :goto_a

    :cond_22
    if-nez v0, :cond_23

    goto :goto_a

    :cond_23
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_24

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_a

    :cond_24
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_25

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_a

    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    :goto_a
    if-eqz v11, :cond_26

    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_f

    .line 200
    :cond_26
    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_f

    .line 202
    :cond_27
    instance-of v3, v9, Lscala/collection/concurrent/TNode;

    if-eqz v3, :cond_28

    add-int/lit8 v5, v5, -0x5

    .line 203
    invoke-direct {v8, v6, v7, v5}, Lscala/collection/concurrent/INode;->clean(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/TrieMap;I)V

    goto/16 :goto_f

    .line 205
    :cond_28
    instance-of v3, v9, Lscala/collection/concurrent/LNode;

    if-eqz v3, :cond_3e

    check-cast v9, Lscala/collection/concurrent/LNode;

    if-nez v2, :cond_2a

    .line 212
    invoke-virtual {v9, v0}, Lscala/collection/concurrent/LNode;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v2

    .line 213
    invoke-direct {v8, v0, v1, v7, v9}, Lscala/collection/concurrent/INode;->insertln$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;Lscala/collection/concurrent/LNode;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_29
    :goto_b
    move-object v12, v2

    goto/16 :goto_f

    .line 214
    :cond_2a
    sget-object v3, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v3}, Lscala/collection/concurrent/INode$;->KEY_ABSENT()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2b

    const/4 v3, 0x1

    goto :goto_c

    :cond_2b
    if-nez v3, :cond_2c

    const/4 v3, 0x0

    goto :goto_c

    :cond_2c
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_2d

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_c

    :cond_2d
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_2e

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_c

    :cond_2e
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_c
    if-eqz v3, :cond_30

    .line 215
    invoke-virtual {v9, v0}, Lscala/collection/concurrent/LNode;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v2

    .line 216
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-direct {v8, v0, v1, v7, v9}, Lscala/collection/concurrent/INode;->insertln$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;Lscala/collection/concurrent/LNode;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    :cond_2f
    move-object v2, v12

    goto :goto_b

    .line 219
    :cond_30
    sget-object v3, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    invoke-virtual {v3}, Lscala/collection/concurrent/INode$;->KEY_PRESENT()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_31

    const/4 v3, 0x1

    goto :goto_d

    :cond_31
    if-nez v3, :cond_32

    const/4 v3, 0x0

    goto :goto_d

    :cond_32
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_33

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_d

    :cond_33
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_34

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_d

    :cond_34
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_d
    if-eqz v3, :cond_37

    .line 220
    invoke-virtual {v9, v0}, Lscala/collection/concurrent/LNode;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v2

    .line 221
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_35

    check-cast v2, Lscala/Some;

    invoke-direct {v8, v0, v1, v7, v9}, Lscala/collection/concurrent/INode;->insertln$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;Lscala/collection/concurrent/LNode;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v12, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v12, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_f

    .line 222
    :cond_35
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_f

    .line 220
    :cond_36
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 225
    :cond_37
    invoke-virtual {v9, v0}, Lscala/collection/concurrent/LNode;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v3

    .line 226
    instance-of v4, v3, Lscala/Some;

    if-eqz v4, :cond_3c

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_38

    const/4 v11, 0x1

    goto :goto_e

    :cond_38
    if-nez v3, :cond_39

    goto :goto_e

    :cond_39
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_3a

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_e

    :cond_3a
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_3b

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_e

    :cond_3b
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    :goto_e
    if-eqz v11, :cond_3c

    invoke-direct {v8, v0, v1, v7, v9}, Lscala/collection/concurrent/INode;->insertln$1(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;Lscala/collection/concurrent/LNode;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v12, Lscala/Some;

    invoke-direct {v12, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_f

    .line 227
    :cond_3c
    sget-object v12, Lscala/None$;->MODULE$:Lscala/None$;

    :cond_3d
    :goto_f
    return-object v12

    .line 150
    :cond_3e
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v9}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public rec_lookup(Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/Gen;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move v4, p3

    move-object v5, p4

    .line 238
    :cond_0
    :goto_0
    invoke-virtual {v0, p6}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object p3

    .line 240
    instance-of p4, p3, Lscala/collection/concurrent/CNode;

    const/4 v1, 0x0

    if-eqz p4, :cond_7

    check-cast p3, Lscala/collection/concurrent/CNode;

    ushr-int p4, p2, v4

    and-int/lit8 p4, p4, 0x1f

    const/4 v2, 0x1

    shl-int/2addr v2, p4

    .line 244
    invoke-virtual {p3}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v3

    and-int v6, v3, v2

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    and-int p4, v3, v2

    .line 247
    invoke-static {p4}, Ljava/lang/Integer;->bitCount(I)I

    move-result p4

    .line 248
    :goto_1
    invoke-virtual {p3}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v2

    aget-object p4, v2, p4

    .line 249
    instance-of v2, p4, Lscala/collection/concurrent/INode;

    if-eqz v2, :cond_5

    check-cast p4, Lscala/collection/concurrent/INode;

    .line 251
    invoke-virtual {p6}, Lscala/collection/concurrent/TrieMap;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p4, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne p5, v1, :cond_3

    goto :goto_3

    .line 253
    :cond_3
    invoke-virtual {p3, p5, p6}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object p4

    invoke-virtual {v0, p3, p4, p6}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 254
    sget-object p1, Lscala/collection/concurrent/INodeBase;->RESTART:Ljava/lang/Object;

    :goto_2
    move-object v1, p1

    goto/16 :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x5

    move-object v5, v0

    move-object v0, p4

    goto :goto_0

    .line 256
    :cond_5
    instance-of p3, p4, Lscala/collection/concurrent/SNode;

    if-eqz p3, :cond_6

    check-cast p4, Lscala/collection/concurrent/SNode;

    .line 257
    invoke-virtual {p4}, Lscala/collection/concurrent/SNode;->hc()I

    move-result p3

    if-ne p3, p2, :cond_a

    invoke-virtual {p4}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p6}, Lscala/collection/concurrent/TrieMap;->equality()Lscala/math/Equiv;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lscala/math/Equiv;->equiv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p4}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 249
    :cond_6
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p4}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 261
    :cond_7
    instance-of p4, p3, Lscala/collection/concurrent/TNode;

    if-eqz p4, :cond_8

    move-object v1, p3

    check-cast v1, Lscala/collection/concurrent/TNode;

    move-object v2, p1

    move v3, p2

    move-object v6, p6

    .line 269
    invoke-direct/range {v0 .. v6}, Lscala/collection/concurrent/INode;->cleanReadOnly$1(Lscala/collection/concurrent/TNode;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/TrieMap;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 270
    :cond_8
    instance-of p2, p3, Lscala/collection/concurrent/LNode;

    if-eqz p2, :cond_b

    check-cast p3, Lscala/collection/concurrent/LNode;

    .line 271
    invoke-virtual {p3}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    sget-object p2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p2}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object p2

    new-instance p3, Lscala/Option$$anonfun$orNull$1;

    invoke-direct {p3, p1, p2}, Lscala/Option$$anonfun$orNull$1;-><init>(Lscala/Option;Lscala/Predef$$less$colon$less;)V

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p3, Lscala/Option$$anonfun$orNull$1;->ev$1:Lscala/Predef$$less$colon$less;

    invoke-virtual {p1, v1}, Lscala/Predef$$less$colon$less;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_a
    :goto_4
    return-object v1

    .line 240
    :cond_b
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public rec_remove(Ljava/lang/Object;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/Option;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/Gen;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 281
    invoke-virtual {v8, v13}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    .line 283
    instance-of v3, v0, Lscala/collection/concurrent/CNode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    check-cast v0, Lscala/collection/concurrent/CNode;

    ushr-int v3, v9, v10

    and-int/lit8 v3, v3, 0x1f

    .line 286
    invoke-virtual {v0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v7

    shl-int v3, v5, v3

    and-int v14, v7, v3

    if-nez v14, :cond_0

    .line 288
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    move-object v6, v0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v14, v3, -0x1

    and-int/2addr v7, v14

    .line 290
    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v7

    .line 291
    invoke-virtual {v0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v14

    aget-object v14, v14, v7

    .line 292
    instance-of v15, v14, Lscala/collection/concurrent/INode;

    if-eqz v15, :cond_3

    move-object v3, v14

    check-cast v3, Lscala/collection/concurrent/INode;

    .line 294
    iget-object v4, v3, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    if-ne v12, v4, :cond_1

    add-int/lit8 v4, v10, 0x5

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lscala/collection/concurrent/INode;->rec_remove(Ljava/lang/Object;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/Option;

    move-result-object v6

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {v0, v12, v13}, Lscala/collection/concurrent/CNode;->renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;

    move-result-object v3

    invoke-virtual {v8, v0, v3, v13}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p7}, Lscala/collection/concurrent/INode;->rec_remove(Ljava/lang/Object;Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/Option;

    move-result-object v6

    :cond_2
    :goto_0
    move-object v7, v6

    goto :goto_2

    .line 299
    :cond_3
    instance-of v15, v14, Lscala/collection/concurrent/SNode;

    if-eqz v15, :cond_d

    check-cast v14, Lscala/collection/concurrent/SNode;

    .line 300
    invoke-virtual {v14}, Lscala/collection/concurrent/SNode;->hc()I

    move-result v15

    if-ne v15, v9, :cond_9

    invoke-virtual {v14}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v8, v15, v1, v13}, Lscala/collection/concurrent/INode;->equal(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {v14}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_6
    instance-of v4, v1, Ljava/lang/Character;

    if-eqz v4, :cond_7

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_9

    .line 301
    :cond_8
    iget-object v1, v8, Lscala/collection/concurrent/INode;->gen:Lscala/collection/concurrent/Gen;

    invoke-virtual {v0, v7, v3, v1}, Lscala/collection/concurrent/CNode;->removedAt(IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;

    move-result-object v1

    invoke-virtual {v1, v10}, Lscala/collection/concurrent/CNode;->toContracted(I)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    .line 302
    invoke-virtual {v8, v0, v1, v13}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Lscala/Some;

    invoke-virtual {v14}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    :cond_9
    sget-object v6, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 292
    :goto_2
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez v7, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_3
    if-nez v7, :cond_b

    goto :goto_4

    :cond_b
    if-eqz v11, :cond_c

    .line 331
    invoke-virtual {v8, v13}, Lscala/collection/concurrent/INode;->GCAS_READ(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    .line 332
    instance-of v0, v1, Lscala/collection/concurrent/TNode;

    if-eqz v0, :cond_c

    move-object/from16 v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 333
    invoke-direct/range {v0 .. v6}, Lscala/collection/concurrent/INode;->cleanParent$1(Ljava/lang/Object;IILscala/collection/concurrent/INode;Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)V

    :cond_c
    :goto_4
    move-object v6, v7

    goto/16 :goto_6

    .line 292
    :cond_d
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v14}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 339
    :cond_e
    instance-of v3, v0, Lscala/collection/concurrent/TNode;

    if-eqz v3, :cond_f

    add-int/lit8 v0, v10, -0x5

    .line 340
    invoke-direct {v8, v11, v13, v0}, Lscala/collection/concurrent/INode;->clean(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/TrieMap;I)V

    goto :goto_6

    .line 342
    :cond_f
    instance-of v3, v0, Lscala/collection/concurrent/LNode;

    if-eqz v3, :cond_17

    check-cast v0, Lscala/collection/concurrent/LNode;

    if-nez v2, :cond_10

    .line 344
    invoke-virtual {v0, v1}, Lscala/collection/concurrent/LNode;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v2

    .line 345
    invoke-virtual {v0, v1, v13}, Lscala/collection/concurrent/LNode;->removed(Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    .line 346
    invoke-virtual {v8, v0, v1, v13}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v6, v2

    goto :goto_6

    .line 347
    :cond_10
    invoke-virtual {v0, v1}, Lscala/collection/concurrent/LNode;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v3

    .line 348
    instance-of v7, v3, Lscala/Some;

    if-eqz v7, :cond_15

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_11

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    if-nez v7, :cond_12

    goto :goto_5

    :cond_12
    instance-of v4, v7, Ljava/lang/Number;

    if-eqz v4, :cond_13

    check-cast v7, Ljava/lang/Number;

    invoke-static {v7, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_5

    :cond_13
    instance-of v4, v7, Ljava/lang/Character;

    if-eqz v4, :cond_14

    check-cast v7, Ljava/lang/Character;

    invoke-static {v7, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_5

    :cond_14
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_5
    if-eqz v4, :cond_15

    .line 349
    invoke-virtual {v0, v1, v13}, Lscala/collection/concurrent/LNode;->removed(Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v1

    .line 350
    invoke-virtual {v8, v0, v1, v13}, Lscala/collection/concurrent/INode;->GCAS(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/TrieMap;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v6, v3

    goto :goto_6

    .line 351
    :cond_15
    sget-object v6, Lscala/None$;->MODULE$:Lscala/None$;

    :cond_16
    :goto_6
    return-object v6

    .line 283
    :cond_17
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public string(I)Ljava/lang/String;
    .locals 10

    .line 372
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "%sINode -> %s"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, "  "

    invoke-direct {v4, v5}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lscala/collection/immutable/StringOps;->$times(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lscala/collection/concurrent/INode;->mainnode:Lscala/collection/concurrent/MainNode;

    const/4 v6, 0x1

    if-nez v4, :cond_0

    const-string p1, "<null>"

    goto :goto_0

    .line 374
    :cond_0
    instance-of v7, v4, Lscala/collection/concurrent/TNode;

    if-eqz v7, :cond_1

    check-cast v4, Lscala/collection/concurrent/TNode;

    new-instance p1, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v7, "TNode(%s, %s, %d, !)"

    invoke-direct {p1, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lscala/collection/concurrent/TNode;->k()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v4}, Lscala/collection/concurrent/TNode;->v()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-virtual {v4}, Lscala/collection/concurrent/TNode;->hc()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-virtual {v7, v8}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {p1, v2}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 375
    :cond_1
    instance-of v2, v4, Lscala/collection/concurrent/CNode;

    if-eqz v2, :cond_2

    check-cast v4, Lscala/collection/concurrent/CNode;

    invoke-virtual {v4, p1}, Lscala/collection/concurrent/CNode;->string(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 376
    :cond_2
    instance-of v2, v4, Lscala/collection/concurrent/LNode;

    if-eqz v2, :cond_3

    check-cast v4, Lscala/collection/concurrent/LNode;

    invoke-virtual {v4, p1}, Lscala/collection/concurrent/LNode;->string(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 377
    :cond_3
    new-instance p1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "<elem: %s>"

    invoke-direct {p1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v5

    invoke-virtual {v2, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {p1, v2}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v3, v6

    .line 372
    invoke-virtual {v1, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
