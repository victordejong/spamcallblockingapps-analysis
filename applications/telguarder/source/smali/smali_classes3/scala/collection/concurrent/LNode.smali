.class public final Lscala/collection/concurrent/LNode;
.super Lscala/collection/concurrent/MainNode;
.source "TrieMap.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/concurrent/MainNode<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001)4Q!\u0001\u0002\u0003\t!\u0011Q\u0001\u0014(pI\u0016T!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGO\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,2!\u0003\t\u001d\'\t\u0001!\u0002\u0005\u0003\u000c\u00199YR\"\u0001\u0002\n\u00055\u0011!\u0001C\'bS:tu\u000eZ3\u0011\u0005=\u0001B\u0002\u0001\u0003\u0006#\u0001\u0011\ra\u0005\u0002\u0002\u0017\u000e\u0001\u0011C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0003\u001fq!Q!\u0008\u0001C\u0002M\u0011\u0011A\u0016\u0005\t?\u0001\u0011)\u0019!C\u0003A\u00059A.[:u[\u0006\u0004X#A\u0011\u0011\t\t*cbG\u0007\u0002G)\u0011A\u0005B\u0001\nS6lW\u000f^1cY\u0016L!AJ\u0012\u0003\u000f1K7\u000f^\'ba\"A\u0001\u0006\u0001B\u0001B\u00035\u0011%\u0001\u0005mSN$X.\u00199!\u0011\u0015Q\u0003\u0001\"\u0001,\u0003\u0019a\u0014N\\5u}Q\u0011A&\u000c\t\u0005\u0017\u0001q1\u0004C\u0003 S\u0001\u0007\u0011\u0005C\u0003+\u0001\u0011\u0005q\u0006F\u0002-aIBQ!\r\u0018A\u00029\t\u0011a\u001b\u0005\u0006g9\u0002\raG\u0001\u0002m\")!\u0006\u0001C\u0001kQ)AF\u000e\u001d;y!)q\u0007\u000ea\u0001\u001d\u0005\u00111.\r\u0005\u0006sQ\u0002\raG\u0001\u0003mFBQa\u000f\u001bA\u00029\t!a\u001b\u001a\t\u000bu\"\u0004\u0019A\u000e\u0002\u0005Y\u0014\u0004\"B \u0001\t\u0003\u0001\u0015\u0001C5og\u0016\u0014H/\u001a3\u0015\u00071\n%\tC\u00032}\u0001\u0007a\u0002C\u00034}\u0001\u00071\u0004C\u0003E\u0001\u0011\u0005Q)A\u0004sK6|g/\u001a3\u0015\u0007)1u\tC\u00032\u0007\u0002\u0007a\u0002C\u0003I\u0007\u0002\u0007\u0011*\u0001\u0002diB!1B\u0013\u0008\u001c\u0013\tY%AA\u0004Ue&,W*\u00199\t\u000b5\u0003A\u0011\u0001(\u0002\u0007\u001d,G\u000f\u0006\u0002P%B\u0019Q\u0003U\u000e\n\u0005E3!AB(qi&|g\u000eC\u00032\u0019\u0002\u0007a\u0002C\u0003U\u0001\u0011\u0005Q+\u0001\u0006dC\u000eDW\rZ*ju\u0016$\"AV-\u0011\u0005U9\u0016B\u0001-\u0007\u0005\rIe\u000e\u001e\u0005\u0006\u0011N\u0003\rA\u0017\t\u0003+mK!\u0001\u0018\u0004\u0003\r\u0005s\u0017PU3g\u0011\u0015q\u0006\u0001\"\u0001`\u0003\u0019\u0019HO]5oOR\u0011\u0001\r\u001b\t\u0003C\u001al\u0011A\u0019\u0006\u0003G\u0012\u000cA\u0001\\1oO*\tQ-\u0001\u0003kCZ\u000c\u0017BA4c\u0005\u0019\u0019FO]5oO\")\u0011.\u0018a\u0001-\u0006\u0019A.\u001a<"
.end annotation


# instance fields
.field private final listmap:Lscala/collection/immutable/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/ListMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 434
    sget-object v0, Lscala/collection/immutable/ListMap$;->MODULE$:Lscala/collection/immutable/ListMap$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Lscala/Tuple2;

    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v3, p1}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v3, Lscala/Tuple2;

    invoke-direct {v3, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/ListMap;

    invoke-direct {p0, p1}, Lscala/collection/concurrent/LNode;-><init>(Lscala/collection/immutable/ListMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    .line 435
    sget-object v0, Lscala/collection/immutable/ListMap$;->MODULE$:Lscala/collection/immutable/ListMap$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Lscala/Tuple2;

    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v3, p1}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v3, Lscala/Tuple2;

    invoke-direct {v3, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    sget-object p1, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1, p3}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lscala/Tuple2;

    invoke-direct {p2, p1, p4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object p2, v2, p1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/ListMap;

    invoke-direct {p0, p1}, Lscala/collection/concurrent/LNode;-><init>(Lscala/collection/immutable/ListMap;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/immutable/ListMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lscala/collection/concurrent/LNode;->listmap:Lscala/collection/immutable/ListMap;

    .line 433
    invoke-direct {p0}, Lscala/collection/concurrent/MainNode;-><init>()V

    return-void
.end method


# virtual methods
.method public cachedSize(Ljava/lang/Object;)I
    .locals 0

    .line 446
    invoke-virtual {p0}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->size()I

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public inserted(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/concurrent/LNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/collection/concurrent/LNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 436
    new-instance v0, Lscala/collection/concurrent/LNode;

    invoke-virtual {p0}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object v1

    new-instance v2, Lscala/Tuple2;

    invoke-direct {v2, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lscala/collection/immutable/ListMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/concurrent/LNode;-><init>(Lscala/collection/immutable/ListMap;)V

    return-object v0
.end method

.method public final listmap()Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lscala/collection/concurrent/LNode;->listmap:Lscala/collection/immutable/ListMap;

    return-object v0
.end method

.method public removed(Ljava/lang/Object;Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance p2, Lscala/collection/concurrent/LNode;

    invoke-direct {p2, p1}, Lscala/collection/concurrent/LNode;-><init>(Lscala/collection/immutable/ListMap;)V

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    if-eqz p1, :cond_1

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    .line 442
    new-instance v1, Lscala/collection/concurrent/TNode;

    invoke-virtual {p2, p1}, Lscala/collection/concurrent/TrieMap;->computeHash(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {v1, p1, v0, p2}, Lscala/collection/concurrent/TNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object p2, v1

    :goto_0
    return-object p2

    .line 441
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public string(I)Ljava/lang/String;
    .locals 5

    .line 447
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, " "

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lscala/collection/immutable/StringOps;->$times(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "LNode(%s)"

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Lscala/collection/immutable/ListMap;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

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
