.class public final Lscala/collection/concurrent/CNode;
.super Lscala/collection/concurrent/CNodeBase;
.source "TrieMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/concurrent/CNodeBase<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005ed!B\u0001\u0003\u0005\u0011A!!B\"O_\u0012,\'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000cWcA\u0005\u00119M\u0011\u0001A\u0003\t\u0005\u00171q1$D\u0001\u0003\u0013\ti!AA\u0005D\u001d>$WMQ1tKB\u0011q\u0002\u0005\u0007\u0001\t\u0015\t\u0002A1\u0001\u0014\u0005\u0005Y5\u0001A\t\u0003)a\u0001\"!\u0006\u000c\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\tyA\u0004B\u0003\u001e\u0001\t\u00071CA\u0001W\u0011!y\u0002A!b\u0001\n\u0003\u0001\u0013A\u00022ji6\u000c\u0007/F\u0001\"!\t)\"%\u0003\u0002$\r\t\u0019\u0011J\u001c;\t\u0011\u0015\u0002!\u0011!Q\u0001\n\u0005\nqAY5u[\u0006\u0004\u0008\u0005\u0003\u0005(\u0001\t\u0015\r\u0011\"\u0001)\u0003\u0015\t\'O]1z+\u0005I\u0003cA\u000b+Y%\u00111F\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0003\u00175J!A\u000c\u0002\u0003\u0013\t\u000b7/[2O_\u0012,\u0007\u0002\u0003\u0019\u0001\u0005\u0003\u0005\u000b\u0011B\u0015\u0002\r\u0005\u0014(/Y=!\u0011!\u0011\u0004A!b\u0001\n\u0003\u0019\u0014aA4f]V\tA\u0007\u0005\u0002\u000ck%\u0011aG\u0001\u0002\u0004\u000f\u0016t\u0007\u0002\u0003\u001d\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u001b\u0002\t\u001d,g\u000e\t\u0005\u0006u\u0001!\taO\u0001\u0007y%t\u0017\u000e\u001e \u0015\tqjdh\u0010\t\u0005\u0017\u0001q1\u0004C\u0003 s\u0001\u0007\u0011\u0005C\u0003(s\u0001\u0007\u0011\u0006C\u00033s\u0001\u0007A\u0007C\u0003B\u0001\u0011\u0005!)\u0001\u0006dC\u000eDW\rZ*ju\u0016$\"!I\"\t\u000b\u0011\u0003\u0005\u0019A#\u0002\u0005\r$\u0008CA\u000bG\u0013\t9eA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u0013\u0002!IAS\u0001\u000cG>l\u0007/\u001e;f\'&TX\r\u0006\u0002\"\u0017\")A\t\u0013a\u0001\u0019B!1\"\u0014\u0008\u001c\u0013\tq%AA\u0004Ue&,W*\u00199\t\u000bA\u0003A\u0011A)\u0002\u0013U\u0004H-\u0019;fI\u0006#H\u0003\u0002\u001fS)ZCQaU(A\u0002\u0005\n1\u0001]8t\u0011\u0015)v\n1\u0001-\u0003\tqg\u000eC\u00033\u001f\u0002\u0007A\u0007C\u0003Y\u0001\u0011\u0005\u0011,A\u0005sK6|g/\u001a3BiR!AHW.^\u0011\u0015\u0019v\u000b1\u0001\"\u0011\u0015av\u000b1\u0001\"\u0003\u00111G.Y4\t\u000bI:\u0006\u0019\u0001\u001b\t\u000b}\u0003A\u0011\u00011\u0002\u0015%t7/\u001a:uK\u0012\u000cE\u000fF\u0003=C\n\u001cG\rC\u0003T=\u0002\u0007\u0011\u0005C\u0003]=\u0002\u0007\u0011\u0005C\u0003V=\u0002\u0007A\u0006C\u00033=\u0002\u0007A\u0007C\u0003g\u0001\u0011\u0005q-A\u0004sK:,w/\u001a3\u0015\u0007qB\'\u000eC\u0003jK\u0002\u0007A\'\u0001\u0003oO\u0016t\u0007\"\u0002#f\u0001\u0004a\u0005\"\u00027\u0001\t\u0013i\u0017!\u0003:fgV\u0014(/Z2u)\racn\u001d\u0005\u0006_.\u0004\r\u0001]\u0001\u0006S:|G-\u001a\t\u0005\u0017Et1$\u0003\u0002s\u0005\t)\u0011JT8eK\")Ao\u001ba\u0001\u000b\u0006I\u0011N\\8eK6\u000c\u0017N\u001c\u0005\u0006m\u0002!\ta^\u0001\ri>\u001cuN\u001c;sC\u000e$X\r\u001a\u000b\u0003qn\u0004BaC=\u000f7%\u0011!P\u0001\u0002\t\u001b\u0006LgNT8eK\")A0\u001ea\u0001C\u0005\u0019A.\u001a<\t\u000by\u0004A\u0011A@\u0002\u0019Q|7i\\7qe\u0016\u001c8/\u001a3\u0015\u000fa\u000c\t!a\u0001\u0002\u0006!)A) a\u0001\u0019\")A0 a\u0001C!)!\' a\u0001i!A\u0011\u0011\u0002\u0001\u0005\u0002\t\tY!\u0001\u0004tiJLgn\u001a\u000b\u0005\u0003\u001b\tY\u0002\u0005\u0003\u0002\u0010\u0005UabA\u000b\u0002\u0012%\u0019\u00111\u0003\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\t9\"!\u0007\u0003\rM#(/\u001b8h\u0015\r\t\u0019B\u0002\u0005\u0007y\u0006\u001d\u0001\u0019A\u0011\t\u000f\u0005}\u0001\u0001\"\u0003\u0002\"\u0005a1m\u001c7mK\u000e$X\t\\3ngV\u0011\u00111\u0005\t\u0007\u0003K\t9#a\u000b\u000e\u0003\u0011I1!!\u000b\u0005\u0005\r\u0019V-\u001d\t\u0006+\u00055bbG\u0005\u0004\u0003_1!A\u0002+va2,\'\u0007C\u0004\u00024\u0001!I!!\u000e\u0002#\r|G\u000e\\3di2{7-\u00197FY\u0016l7/\u0006\u0002\u00028A1\u0011QEA\u0014\u0003\u001bAq!a\u000f\u0001\t\u0003\ni$\u0001\u0005u_N#(/\u001b8h)\t\tia\u0002\u0005\u0002B\tA\tAAA\"\u0003\u0015\u0019ej\u001c3f!\rY\u0011Q\t\u0004\u0008\u0003\tA\tAAA$\'\r\t)%\u0012\u0005\u0008u\u0005\u0015C\u0011AA&)\t\t\u0019\u0005\u0003\u0005\u0002P\u0005\u0015C\u0011AA)\u0003\u0011!W/\u00197\u0016\r\u0005M\u0013\u0011LA/)9\t)&a\u0018\u0002j\u00055\u0014\u0011OA;\u0003o\u0002baC=\u0002X\u0005m\u0003cA\u0008\u0002Z\u00111\u0011#!\u0014C\u0002M\u00012aDA/\t\u0019i\u0012Q\nb\u0001\'!A\u0011\u0011MA\'\u0001\u0004\t\u0019\'A\u0001y!\u001dY\u0011QMA,\u00037J1!a\u001a\u0003\u0005\u0015\u0019fj\u001c3f\u0011\u001d\tY\'!\u0014A\u0002\u0005\n1\u0001\u001f5d\u0011!\ty\'!\u0014A\u0002\u0005\r\u0014!A=\t\u000f\u0005M\u0014Q\na\u0001C\u0005\u0019\u0011\u0010[2\t\rq\u000ci\u00051\u0001\"\u0011\u0019\u0011\u0014Q\na\u0001i\u0001"
.end annotation


# instance fields
.field private final array:[Lscala/collection/concurrent/BasicNode;

.field private final bitmap:I

.field private final gen:Lscala/collection/concurrent/Gen;


# direct methods
.method public constructor <init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lscala/collection/concurrent/BasicNode;",
            "Lscala/collection/concurrent/Gen;",
            ")V"
        }
    .end annotation

    .line 451
    iput p1, p0, Lscala/collection/concurrent/CNode;->bitmap:I

    iput-object p2, p0, Lscala/collection/concurrent/CNode;->array:[Lscala/collection/concurrent/BasicNode;

    iput-object p3, p0, Lscala/collection/concurrent/CNode;->gen:Lscala/collection/concurrent/Gen;

    invoke-direct {p0}, Lscala/collection/concurrent/CNodeBase;-><init>()V

    return-void
.end method

.method private collectLocalElems()Lscala/collection/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/collection/concurrent/CNode$$anonfun$collectLocalElems$1;

    invoke-direct {v1, p0}, Lscala/collection/concurrent/CNode$$anonfun$collectLocalElems$1;-><init>(Lscala/collection/concurrent/CNode;)V

    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v3, Lscala/Predef$DummyImplicit$;->MODULE$:Lscala/Predef$DummyImplicit$;

    invoke-virtual {v3}, Lscala/Predef$DummyImplicit$;->dummyImplicit()Lscala/Predef$DummyImplicit;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Array$;->fallbackCanBuildFrom(Lscala/Predef$DummyImplicit;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ArrayOps;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method

.method private computeSize(Lscala/collection/concurrent/TrieMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 474
    invoke-static {}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->current()Lscala/concurrent/forkjoin/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lscala/concurrent/forkjoin/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 476
    :goto_1
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_3

    add-int v3, v1, v0

    .line 477
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    .line 478
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v4

    aget-object v3, v4, v3

    .line 479
    instance-of v4, v3, Lscala/collection/concurrent/SNode;

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 480
    :cond_1
    instance-of v4, v3, Lscala/collection/concurrent/INode;

    if-eqz v4, :cond_2

    check-cast v3, Lscala/collection/concurrent/INode;

    invoke-virtual {v3, p1}, Lscala/collection/concurrent/INode;->cachedSize(Lscala/collection/concurrent/TrieMap;)I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 478
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    return v2
.end method

.method public static dual(Lscala/collection/concurrent/SNode;ILscala/collection/concurrent/SNode;IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/SNode<",
            "TK;TV;>;I",
            "Lscala/collection/concurrent/SNode<",
            "TK;TV;>;II",
            "Lscala/collection/concurrent/Gen;",
            ")",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/CNode$;->MODULE$:Lscala/collection/concurrent/CNode$;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/concurrent/CNode$;->dual(Lscala/collection/concurrent/SNode;ILscala/collection/concurrent/SNode;IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;

    move-result-object p0

    return-object p0
.end method

.method private resurrect(Lscala/collection/concurrent/INode;Ljava/lang/Object;)Lscala/collection/concurrent/BasicNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/concurrent/BasicNode;"
        }
    .end annotation

    .line 532
    instance-of v0, p2, Lscala/collection/concurrent/TNode;

    if-eqz v0, :cond_0

    check-cast p2, Lscala/collection/concurrent/TNode;

    invoke-virtual {p2}, Lscala/collection/concurrent/TNode;->copyUntombed()Lscala/collection/concurrent/SNode;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public array()[Lscala/collection/concurrent/BasicNode;
    .locals 1

    .line 451
    iget-object v0, p0, Lscala/collection/concurrent/CNode;->array:[Lscala/collection/concurrent/BasicNode;

    return-object v0
.end method

.method public bitmap()I
    .locals 1

    .line 451
    iget v0, p0, Lscala/collection/concurrent/CNode;->bitmap:I

    return v0
.end method

.method public cachedSize(Ljava/lang/Object;)I
    .locals 2

    .line 454
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->READ_SIZE()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 457
    :cond_0
    check-cast p1, Lscala/collection/concurrent/TrieMap;

    invoke-direct {p0, p1}, Lscala/collection/concurrent/CNode;->computeSize(Lscala/collection/concurrent/TrieMap;)I

    move-result p1

    .line 458
    :goto_0
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->READ_SIZE()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1, p1}, Lscala/collection/concurrent/CNode;->CAS_SIZE(II)Z

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->READ_SIZE()I

    move-result v0

    :goto_1
    return v0
.end method

.method public gen()Lscala/collection/concurrent/Gen;
    .locals 1

    .line 451
    iget-object v0, p0, Lscala/collection/concurrent/CNode;->gen:Lscala/collection/concurrent/Gen;

    return-object v0
.end method

.method public insertedAt(IILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lscala/collection/concurrent/BasicNode;",
            "Lscala/collection/concurrent/Gen;",
            ")",
            "Lscala/collection/concurrent/CNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v0

    array-length v0, v0

    .line 506
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    .line 507
    new-array v2, v2, [Lscala/collection/concurrent/BasicNode;

    .line 508
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    aput-object p3, v2, p1

    .line 510
    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v4

    add-int/lit8 v7, p1, 0x1

    sub-int v8, v0, p1

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    new-instance p1, Lscala/collection/concurrent/CNode;

    or-int/2addr p2, v1

    invoke-direct {p1, p2, v2, p4}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    return-object p1
.end method

.method public removedAt(IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lscala/collection/concurrent/Gen;",
            ")",
            "Lscala/collection/concurrent/CNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v6

    .line 497
    array-length v7, v6

    add-int/lit8 v0, v7, -0x1

    .line 498
    new-array v8, v0, [Lscala/collection/concurrent/BasicNode;

    .line 499
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v6

    move-object v3, v8

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v7, p1

    add-int/lit8 v5, v7, -0x1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    new-instance p1, Lscala/collection/concurrent/CNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v0

    xor-int/2addr p2, v0

    invoke-direct {p1, p2, v8, p3}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    return-object p1
.end method

.method public renewed(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/CNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/Gen;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/CNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v0

    .line 520
    array-length v1, v0

    .line 521
    new-array v2, v1, [Lscala/collection/concurrent/BasicNode;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 523
    aget-object v4, v0, v3

    .line 524
    instance-of v5, v4, Lscala/collection/concurrent/INode;

    if-eqz v5, :cond_0

    check-cast v4, Lscala/collection/concurrent/INode;

    invoke-virtual {v4, p1, p2}, Lscala/collection/concurrent/INode;->copyToGen(Lscala/collection/concurrent/Gen;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/INode;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 525
    aput-object v4, v2, v3

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v4}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 529
    :cond_2
    new-instance p2, Lscala/collection/concurrent/CNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v0

    invoke-direct {p2, v0, v2, p1}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    return-object p2
.end method

.method public scala$collection$concurrent$CNode$$collectElems()Lscala/collection/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 572
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/collection/concurrent/CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1;

    invoke-direct {v1, p0}, Lscala/collection/concurrent/CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1;-><init>(Lscala/collection/concurrent/CNode;)V

    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v3, Lscala/Predef$DummyImplicit$;->MODULE$:Lscala/Predef$DummyImplicit$;

    invoke-virtual {v3}, Lscala/Predef$DummyImplicit$;->dummyImplicit()Lscala/Predef$DummyImplicit;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Array$;->fallbackCanBuildFrom(Lscala/Predef$DummyImplicit;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ArrayOps;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method

.method public string(I)Ljava/lang/String;
    .locals 8

    .line 569
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "CNode %x\n%s"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v4

    new-instance v5, Lscala/collection/concurrent/CNode$$anonfun$string$1;

    invoke-direct {v5, p0, p1}, Lscala/collection/concurrent/CNode$$anonfun$string$1;-><init>(Lscala/collection/concurrent/CNode;I)V

    sget-object p1, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v6, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v6

    invoke-virtual {p1, v6}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    invoke-interface {v4, v5, p1}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v3, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    const-string v3, "\n"

    invoke-interface {p1, v3}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toCompressed(Lscala/collection/concurrent/TrieMap;ILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;I",
            "Lscala/collection/concurrent/Gen;",
            ")",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result v0

    .line 551
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v1

    .line 552
    array-length v2, v1

    new-array v2, v2, [Lscala/collection/concurrent/BasicNode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 553
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 554
    aget-object v5, v1, v4

    .line 555
    instance-of v6, v5, Lscala/collection/concurrent/INode;

    if-eqz v6, :cond_1

    check-cast v5, Lscala/collection/concurrent/INode;

    .line 557
    invoke-virtual {v5, p1}, Lscala/collection/concurrent/INode;->gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v6

    .line 558
    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7, v8}, Lscala/Predef$;->assert(Z)V

    .line 559
    invoke-direct {p0, v5, v6}, Lscala/collection/concurrent/CNode;->resurrect(Lscala/collection/concurrent/INode;Ljava/lang/Object;)Lscala/collection/concurrent/BasicNode;

    move-result-object v5

    aput-object v5, v2, v4

    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 560
    :cond_1
    instance-of v6, v5, Lscala/collection/concurrent/SNode;

    if-eqz v6, :cond_2

    check-cast v5, Lscala/collection/concurrent/SNode;

    .line 561
    aput-object v5, v2, v4

    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 555
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v5}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 566
    :cond_3
    new-instance p1, Lscala/collection/concurrent/CNode;

    invoke-direct {p1, v0, v2, p3}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    invoke-virtual {p1, p2}, Lscala/collection/concurrent/CNode;->toContracted(I)Lscala/collection/concurrent/MainNode;

    move-result-object p1

    return-object p1
.end method

.method public toContracted(I)Lscala/collection/concurrent/MainNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 538
    instance-of v0, p1, Lscala/collection/concurrent/SNode;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/concurrent/SNode;

    invoke-virtual {p1}, Lscala/collection/concurrent/SNode;->copyTombed()Lscala/collection/concurrent/TNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 587
    invoke-direct {p0}, Lscala/collection/concurrent/CNode;->collectLocalElems()Lscala/collection/Seq;

    move-result-object v0

    .line 588
    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "CNode(sz: %d; %s)"

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Lscala/collection/Seq;->size()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lscala/math/Ordering$String$;->MODULE$:Lscala/math/Ordering$String$;

    invoke-interface {v0, v4}, Lscala/collection/Seq;->sorted(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    const-string v4, ", "

    invoke-interface {v0, v4}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedAt(ILscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)Lscala/collection/concurrent/CNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/concurrent/BasicNode;",
            "Lscala/collection/concurrent/Gen;",
            ")",
            "Lscala/collection/concurrent/CNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v0

    array-length v6, v0

    .line 489
    new-array v0, v6, [Lscala/collection/concurrent/BasicNode;

    .line 490
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    aput-object p2, v0, p1

    .line 492
    new-instance p1, Lscala/collection/concurrent/CNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/CNode;->bitmap()I

    move-result p2

    invoke-direct {p1, p2, v0, p3}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    return-object p1
.end method
