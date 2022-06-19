.class public abstract Lscala/collection/immutable/BitSet;
.super Lscala/collection/AbstractSet;
.source "BitSet.scala"

# interfaces
.implements Lscala/collection/immutable/SortedSet;
.implements Lscala/collection/BitSet;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/BitSet$BitSet1;,
        Lscala/collection/immutable/BitSet$BitSet2;,
        Lscala/collection/immutable/BitSet$BitSetN;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSet<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/SortedSet<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/BitSet;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005Md!B\u0001\u0003\u0003\u0003I!A\u0002\"jiN+GO\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\n\u0007\u0001)\u0011b\u0003\u0007\u000f\u0011\u0007-aa\"D\u0001\u0005\u0013\tiAAA\u0006BEN$(/Y2u\'\u0016$\u0008CA\u0008\u0011\u001b\u00051\u0011BA\t\u0007\u0005\rIe\u000e\u001e\t\u0004\'QqQ\"\u0001\u0002\n\u0005U\u0011!!C*peR,GmU3u!\tYq#\u0003\u0002\u0002\tA\u00191\"G\u000e\n\u0005i!!A\u0003\"jiN+G\u000fT5lKB\u00111\u0003\u0001\t\u0003\u001fuI!A\u0008\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u000b\u0001\u0002A\u0011A\u0011\u0002\rqJg.\u001b;?)\u0005Y\u0002\"B\u0012\u0001\t\u0003\"\u0013!B3naRLX#A\u000e\t\u000b\u0019\u0002A\u0011C\u0014\u0002#\u0019\u0014x.\u001c\"ji6\u000b7o\u001b(p\u0007>\u0004\u0018\u0010\u0006\u0002\u001cQ!)\u0011&\na\u0001U\u0005)Q\r\\3ngB\u0019qbK\u0017\n\u000512!!B!se\u0006L\u0008CA\u0008/\u0013\tycA\u0001\u0003M_:<\u0007\"B\u0019\u0001\r#\u0011\u0014AC;qI\u0006$XmV8sIR\u00191dM\u001b\t\u000bQ\u0002\u0004\u0019\u0001\u0008\u0002\u0007%$\u0007\u0010C\u00037a\u0001\u0007Q&A\u0001x\u0011\u0015A\u0004\u0001\"\u0001:\u0003\u0015!\u0003\u000f\\;t)\tY\"\u0008C\u0003<o\u0001\u0007a\"\u0001\u0003fY\u0016l\u0007\"B\u001f\u0001\t\u0003q\u0014A\u0002\u0013nS:,8\u000f\u0006\u0002\u001c\u007f!)1\u0008\u0010a\u0001\u001d!\"\u0001!\u0011#F!\ty!)\u0003\u0002D\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\t-qK0\'4vG\u0016 )qI\u0001E\u0001\u0011\u00061!)\u001b;TKR\u0004\"aE%\u0007\u000b\u0005\u0011\u0001\u0012\u0001&\u0014\t%[e\n\u0008\t\u0003\u001f1K!!\u0014\u0004\u0003\r\u0005s\u0017PU3g!\ry%kG\u0007\u0002!*\u0011\u0011\u000bB\u0001\u0008O\u0016tWM]5d\u0013\t\u0019\u0006KA\u0007CSR\u001cV\r\u001e$bGR|\'/\u001f\u0005\u0006A%#\t!\u0016\u000b\u0002\u0011\"91%\u0013b\u0001\n\u0003!\u0003B\u0002-JA\u0003%1$\u0001\u0004f[B$\u0018\u0010\t\u0005\u00065&#\taW\u0001\u000b]\u0016<()^5mI\u0016\u0014X#\u0001/\u0011\tu\u0003gbG\u0007\u0002=*\u0011q\u000cB\u0001\u0008[V$\u0018M\u00197f\u0013\t\tgLA\u0004Ck&dG-\u001a:\t\u000b\rLE1\u00013\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\u0003\u0015\u0004Ra\u00144\u001c\u001dmI!a\u001a)\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\t\u000b%LE\u0011\u00016\u0002\u0017\u0019\u0014x.\u001c\"ji6\u000b7o\u001b\u000b\u00037-DQ!\u000b5A\u0002)BQAJ%\u0005\u00025$\"a\u00078\t\u000b%b\u0007\u0019\u0001\u0016\u0007\tAL\u0005!\u001d\u0002\u0008\u0005&$8+\u001a;2\'\ty7\u0004\u0003\u0005*_\n\u0015\r\u0011\"\u0001t+\u0005i\u0003\u0002C;p\u0005\u0003\u0005\u000b\u0011B\u0017\u0002\r\u0015dW-\\:!\u0011\u0015\u0001s\u000e\"\u0001x)\tA(\u0010\u0005\u0002z_6\t\u0011\nC\u0003*m\u0002\u0007Q\u0006C\u0003}_\u0012EQ0\u0001\u0004oo>\u0014Hm]\u000b\u0002\u001d!1qp\u001cC\t\u0003\u0003\tAa^8sIR\u0019Q&a\u0001\t\u000bQr\u0008\u0019\u0001\u0008\t\rEzG\u0011CA\u0004)\u0015Y\u0012\u0011BA\u0006\u0011\u0019!\u0014Q\u0001a\u0001\u001d!1a\'!\u0002A\u000252a!a\u0004J\u0001\u0005E!a\u0002\"jiN+GOM\n\u0004\u0003\u001bY\u0002BCA\u000b\u0003\u001b\u0011)\u0019!C\u0001g\u00061Q\r\\3ngBB!\"!\u0007\u0002\u000e\t\u0005\t\u0015!\u0003.\u0003\u001d)G.Z7ta\u0001B!\"!\u0008\u0002\u000e\t\u0005\t\u0015!\u0003.\u0003\u0019)G.Z7tc!9\u0001%!\u0004\u0005\u0002\u0005\u0005BCBA\u0012\u0003K\t9\u0003E\u0002z\u0003\u001bAq!!\u0006\u0002 \u0001\u0007Q\u0006C\u0004\u0002\u001e\u0005}\u0001\u0019A\u0017\t\rq\u000ci\u0001\"\u0005~\u0011\u001dy\u0018Q\u0002C\t\u0003[!2!LA\u0018\u0011\u0019!\u00141\u0006a\u0001\u001d!9\u0011\'!\u0004\u0005\u0012\u0005MB#B\u000e\u00026\u0005]\u0002B\u0002\u001b\u00022\u0001\u0007a\u0002\u0003\u00047\u0003c\u0001\r!\u000c\u0004\u0007\u0003wI\u0005!!\u0010\u0003\u000f\tKGoU3u\u001dN\u0019\u0011\u0011H\u000e\t\u0015%\nID!b\u0001\n\u0003\t\t%F\u0001+\u0011%)\u0018\u0011\u0008B\u0001B\u0003%!\u0006C\u0004!\u0003s!\t!a\u0012\u0015\t\u0005%\u00131\n\t\u0004s\u0006e\u0002BB\u0015\u0002F\u0001\u0007!\u0006\u0003\u0004}\u0003s!\t\" \u0005\u0008\u007f\u0006eB\u0011CA))\ri\u00131\u000b\u0005\u0007i\u0005=\u0003\u0019\u0001\u0008\t\u000fE\nI\u0004\"\u0005\u0002XQ)1$!\u0017\u0002\\!1A\'!\u0016A\u00029AaANA+\u0001\u0004i\u0003\"CA0\u0013\u0006\u0005I\u0011BA1\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005\r\u0004\u0003BA3\u0003_j!!a\u001a\u000b\t\u0005%\u00141N\u0001\u0005Y\u0006twM\u0003\u0002\u0002n\u0005!!.\u0019<b\u0013\u0011\t\t(a\u001a\u0003\r=\u0013\'.Z2u\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x165cf932cdeac6caL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    invoke-static {p0}, Lscala/collection/generic/Sorted$class;->$init$(Lscala/collection/generic/Sorted;)V

    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->$init$(Lscala/collection/SortedSetLike;)V

    invoke-static {p0}, Lscala/collection/SortedSet$class;->$init$(Lscala/collection/SortedSet;)V

    invoke-static {p0}, Lscala/collection/immutable/SortedSet$class;->$init$(Lscala/collection/immutable/SortedSet;)V

    invoke-static {p0}, Lscala/collection/BitSetLike$class;->$init$(Lscala/collection/BitSetLike;)V

    invoke-static {p0}, Lscala/collection/BitSet$class;->$init$(Lscala/collection/BitSet;)V

    return-void
.end method

.method public static bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/BitSet$;->bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/BitSet;",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/BitSet;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/BitSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static fromBitMask([J)Lscala/collection/immutable/BitSet;
    .locals 1

    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/BitSet$;->fromBitMask([J)Lscala/collection/immutable/BitSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public $amp(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$amp(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public $amp$tilde(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$amp$tilde(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public $bar(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$bar(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->$minus(I)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->$minus(I)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->$minus(I)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(I)Lscala/collection/immutable/BitSet;
    .locals 5

    .line 55
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    .line 58
    invoke-virtual {p0, v0}, Lscala/collection/immutable/BitSet;->word(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    not-long v3, v3

    and-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lscala/collection/immutable/BitSet;->updateWord(IJ)Lscala/collection/immutable/BitSet;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :goto_1
    return-object p1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "requirement failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "bitset element must be >= 0"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->$plus(I)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->$plus(I)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(I)Lscala/collection/immutable/BitSet;
    .locals 5

    .line 44
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    shr-int/lit8 v0, p1, 0x6

    .line 48
    invoke-virtual {p0, v0}, Lscala/collection/immutable/BitSet;->word(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lscala/collection/immutable/BitSet;->updateWord(IJ)Lscala/collection/immutable/BitSet;

    move-result-object p1

    :goto_1
    return-object p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "requirement failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "bitset element must be >= 0"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public $up(Lscala/collection/BitSet;)Lscala/collection/BitSetLike;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->$up(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/BitSetLike$class;->addString(Lscala/collection/BitSetLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Set;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public contains(I)Z
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->contains(Lscala/collection/BitSetLike;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/BitSet;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/BitSetLike;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/SortedSet;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/BitSet;
    .locals 1

    .line 33
    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/BitSet$;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/SortedSet;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->empty()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->firstKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TB;>;)V"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->foreach(Lscala/collection/BitSetLike;Lscala/Function1;)V

    return-void
.end method

.method public from(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->from(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->from(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fromBitMaskNoCopy([J)Lscala/collection/BitSetLike;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;
    .locals 1

    .line 35
    sget-object v0, Lscala/collection/immutable/BitSet$;->MODULE$:Lscala/collection/immutable/BitSet$;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/BitSet$;->fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hasAll(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->hasAll(Lscala/collection/generic/Sorted;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 28
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->isEmpty(Lscala/collection/BitSetLike;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->iterator(Lscala/collection/BitSetLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->iteratorFrom(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Lscala/collection/SortedSet;
    .locals 1

    .line 28
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->keySet(Lscala/collection/SortedSetLike;)Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keysIteratorFrom(I)Lscala/collection/AbstractIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/AbstractIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->keysIteratorFrom(Lscala/collection/BitSetLike;I)Lscala/collection/AbstractIterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0

    .line 28
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->keysIteratorFrom(I)Lscala/collection/AbstractIterator;

    move-result-object p1

    return-object p1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->lastKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ordering()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->ordering(Lscala/collection/BitSetLike;)Lscala/math/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Ljava/lang/Object;",
            "Lscala/collection/parallel/immutable/ParSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->parCombiner(Lscala/collection/immutable/Set;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lscala/collection/SortedSetLike$class;->range(Lscala/collection/SortedSetLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/BitSet;->range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lscala/collection/BitSetLike$class;->rangeImpl(Lscala/collection/BitSetLike;Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/BitSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;

    move-result-object p1

    check-cast p1, Lscala/collection/SortedSet;

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/BitSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public synthetic scala$collection$SortedSetLike$$super$subsetOf(Lscala/collection/GenSet;)Z
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 28
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->size(Lscala/collection/BitSetLike;)I

    move-result v0

    return v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->stringPrefix(Lscala/collection/BitSetLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subsetOf(Lscala/collection/BitSet;)Z
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/BitSetLike$class;->subsetOf(Lscala/collection/BitSetLike;Lscala/collection/BitSet;)Z

    move-result p1

    return p1
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->subsetOf(Lscala/collection/SortedSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public toBitMask()[J
    .locals 1

    .line 28
    invoke-static {p0}, Lscala/collection/BitSetLike$class;->toBitMask(Lscala/collection/BitSetLike;)[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->toSet(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public until(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->until(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet;->until(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public abstract updateWord(IJ)Lscala/collection/immutable/BitSet;
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/BitSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
