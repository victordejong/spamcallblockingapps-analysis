.class public Lscala/collection/mutable/TreeSet;
.super Ljava/lang/Object;
.source "TreeSet.scala"

# interfaces
.implements Lscala/collection/mutable/SortedSet;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/SortedSet<",
        "TA;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\u001dv!B\u0001\u0003\u0011\u0003I\u0011a\u0002+sK\u0016\u001cV\r\u001e\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0003\r\u0005!\u0005QBA\u0004Ue\u0016,7+\u001a;\u0014\u0007-qQ\u0007E\u0002\u0010%Qi\u0011\u0001\u0005\u0006\u0003#\u0011\tqaZ3oKJL7-\u0003\u0002\u0014!\t9R*\u001e;bE2,7k\u001c:uK\u0012\u001cV\r\u001e$bGR|\'/\u001f\t\u0003\u0015U1A\u0001\u0004\u0002\u0001-U\u0011q#I\n\u0008+aa\"F\u000c\u001a6!\tI\"$D\u0001\u0007\u0013\tYbA\u0001\u0004B]f\u0014VM\u001a\t\u0004\u0015uy\u0012B\u0001\u0010\u0003\u0005%\u0019vN\u001d;fIN+G\u000f\u0005\u0002!C1\u0001A!\u0002\u0012\u0016\u0005\u0004\u0019#!A!\u0012\u0005\u0011:\u0003CA\r&\u0013\t1cAA\u0004O_RD\u0017N\\4\u0011\u0005eA\u0013BA\u0015\u0007\u0005\r\te.\u001f\t\u0005\u0015-zR&\u0003\u0002-\u0005\t91+\u001a;MS.,\u0007c\u0001\u0006\u0016?A!q\u0006M\u0010.\u001b\u0005!\u0011BA\u0019\u0005\u00055\u0019vN\u001d;fIN+G\u000fT5lKB\u0019!bM\u0010\n\u0005Q\u0012!aA*fiB\u0011\u0011DN\u0005\u0003o\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001\"O\u000b\u0003\u0002\u0003\u0006IAO\u0001\u0008iJ,WMU3g!\rYd\u0008Q\u0007\u0002y)\u0011QHB\u0001\u0008eVtG/[7f\u0013\tyDHA\u0005PE*,7\r\u001e*fMB!\u0011iR\u0010K\u001d\t\u0011U)D\u0001D\u0015\t!E!A\u0005j[6,H/\u00192mK&\u0011aiQ\u0001\r%\u0016$\'\t\\1dWR\u0013X-Z\u0005\u0003\u0011&\u0013A\u0001\u0016:fK*\u0011ai\u0011\t\u00033-K!\u0001\u0014\u0004\u0003\t9+H\u000e\u001c\u0005\t\u001dV\u0011\t\u0011)A\u0005\u001f\u0006!aM]8n!\rI\u0002kH\u0005\u0003#\u001a\u0011aa\u00149uS>t\u0007\u0002C*\u0016\u0005\u0003\u0005\u000b\u0011B(\u0002\u000bUtG/\u001b7\t\u0011U+\"Q1A\u0005\u0004Y\u000b\u0001b\u001c:eKJLgnZ\u000b\u0002/B\u0019\u0001lW\u0010\u000f\u0005eI\u0016B\u0001.\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!\u0001X/\u0003\u0011=\u0013H-\u001a:j]\u001eT!A\u0017\u0004\t\u0011}+\"\u0011!Q\u0001\n]\u000b\u0011b\u001c:eKJLgn\u001a\u0011\t\u000b\u0005,B\u0011\u00022\u0002\rqJg.\u001b;?)\u0011\u0019WMZ4\u0015\u00055\"\u0007\"B+a\u0001\u00089\u0006\"B\u001da\u0001\u0004Q\u0004\"\u0002(a\u0001\u0004y\u0005\"B*a\u0001\u0004y\u0005\"B1\u0016\t\u0003IG#\u00016\u0015\u00055Z\u0007\"B+i\u0001\u00089\u0006\"B7\u0016\t\u0003r\u0017\u0001B:ju\u0016,\u0012a\u001c\t\u00033AL!!\u001d\u0004\u0003\u0007%sG\u000fC\u0003t+\u0011\u0005C/\u0001\u0007tiJLgn\u001a)sK\u001aL\u00070F\u0001v!\t180D\u0001x\u0015\tA\u00180\u0001\u0003mC:<\'\"\u0001>\u0002\t)\u000cg/Y\u0005\u0003y^\u0014aa\u0015;sS:<\u0007\"\u0002@\u0016\t\u0003z\u0018!B3naRLX#A\u0017\t\u000f\u0005\rQ\u0003\"\u0003\u0002\u0006\u0005I\u0001/[2l\u0005>,h\u000e\u001a\u000b\u0008\u001f\u0006\u001d\u0011\u0011CA\u000b\u0011!\tI!!\u0001A\u0002\u0005-\u0011AC2p[B\u000c\'/[:p]B1\u0011$!\u0004 ?}I1!a\u0004\u0007\u0005%1UO\\2uS>t\'\u0007C\u0004\u0002\u0014\u0005\u0005\u0001\u0019A(\u0002\u0011=dGMQ8v]\u0012Dq!a\u0006\u0002\u0002\u0001\u0007q*\u0001\u0005oK^\u0014u.\u001e8e\u0011\u001d\tY\"\u0006C!\u0003;\t\u0011B]1oO\u0016LU\u000e\u001d7\u0015\u000b5\ny\"a\t\t\u000f\u0005\u0005\u0012\u0011\u0004a\u0001\u001f\u00069aM]8n\u0003J<\u0007bBA\u0013\u00033\u0001\raT\u0001\tk:$\u0018\u000e\\!sO\"9\u0011\u0011F\u000b\u0005B\u0005-\u0012!\u0003\u0013nS:,8\u000fJ3r)\u0011\ti#a\u000c\u000e\u0003UAq!!\r\u0002(\u0001\u0007q$\u0001\u0003fY\u0016l\u0007bBA\u001b+\u0011\u0005\u0013qG\u0001\tIAdWo\u001d\u0013fcR!\u0011QFA\u001d\u0011\u001d\t\t$a\rA\u0002}Aq!!\u0010\u0016\t\u0003\ny$A\u0003dY>tW\rF\u0001.\u0011%\t\u0019%\u0006b\u0001\n\u0013\t)%A\u0007o_R\u0004&o\u001c6fGRLwN\\\u000b\u0003\u0003\u000f\u00022!GA%\u0013\r\tYE\u0002\u0002\u0008\u0005>|G.Z1o\u0011!\ty%\u0006Q\u0001\n\u0005\u001d\u0013A\u00048piB\u0013xN[3di&|g\u000e\t\u0005\u0008\u0003\'*B\u0011IA+\u0003!\u0019wN\u001c;bS:\u001cH\u0003BA$\u0003/Bq!!\r\u0002R\u0001\u0007q\u0004C\u0004\u0002\\U!\t%!\u0018\u0002\u0011%$XM]1u_J,\"!a\u0018\u0011\t=\n\tgH\u0005\u0004\u0003G\"!\u0001C%uKJ\u000cGo\u001c:\t\u000f\u0005\u001dT\u0003\"\u0011\u0002j\u0005\u00012.Z=t\u0013R,\'/\u0019;pe\u001a\u0013x.\u001c\u000b\u0005\u0003?\nY\u0007C\u0004\u0002n\u0005\u0015\u0004\u0019A\u0010\u0002\u000bM$\u0018M\u001d;\t\u000f\u0005ET\u0003\"\u0003\u0002t\u0005a\u0011\u000e^3sCR|\'O\u0012:p[R!\u0011qLA;\u0011\u001d\ti\'a\u001cA\u0002=Cs!FA=\u0003\u007f\n\u0019\tE\u0002\u001a\u0003wJ1!! \u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\u000c#!!!\u0002sQ\u0013X-Z*fi\u0002J7\u000f\t8pi\u0002\"Wm]5h]\u0016$\u0007\u0005^8!K:\u000c\'\r\\3![\u0016\u000cg.\u001b8hMVd\u0007e];cG2\u000c7o]5oO:\n#!!\"\u0002\rIr\u0013\'\r\u00181\u0011\u0019\t7\u0002\"\u0001\u0002\nR\t\u0011\u0002\u0003\u0004\u007f\u0017\u0011\u0005\u0011QR\u000b\u0005\u0003\u001f\u000b)\n\u0006\u0003\u0002\u0012\u0006]\u0005\u0003\u0002\u0006\u0016\u0003\'\u00032\u0001IAK\t\u0019\u0011\u00131\u0012b\u0001G!9Q+a#A\u0004\u0005e\u0005\u0003\u0002-\\\u0003\'C\u0011\"!(\u000c\u0003\u0003%I!a(\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0003C\u00032A^AR\u0013\r\t)k\u001e\u0002\u0007\u001f\nTWm\u0019;"
.end annotation


# instance fields
.field private final from:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final notProjection:Z

.field private final ordering:Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final treeRef:Lscala/runtime/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/runtime/ObjectRef<",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;",
            "Lscala/runtime/Null$;",
            ">;>;"
        }
    .end annotation
.end field

.field private final until:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/math/Ordering;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 48
    new-instance v0, Lscala/runtime/ObjectRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/ObjectRef;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {p0, v0, v1, v2, p1}, Lscala/collection/mutable/TreeSet;-><init>(Lscala/runtime/ObjectRef;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)V

    return-void
.end method

.method private constructor <init>(Lscala/runtime/ObjectRef;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/ObjectRef<",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;",
            "Lscala/runtime/Null$;",
            ">;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    iput-object p2, p0, Lscala/collection/mutable/TreeSet;->from:Lscala/Option;

    iput-object p3, p0, Lscala/collection/mutable/TreeSet;->until:Lscala/Option;

    iput-object p4, p0, Lscala/collection/mutable/TreeSet;->ordering:Lscala/math/Ordering;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/Traversable$class;->$init$(Lscala/collection/Traversable;)V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/IterableLike$class;->$init$(Lscala/collection/IterableLike;)V

    invoke-static {p0}, Lscala/collection/Iterable$class;->$init$(Lscala/collection/Iterable;)V

    invoke-static {p0}, Lscala/collection/GenSetLike$class;->$init$(Lscala/collection/GenSetLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericSetTemplate$class;->$init$(Lscala/collection/generic/GenericSetTemplate;)V

    invoke-static {p0}, Lscala/collection/GenSet$class;->$init$(Lscala/collection/GenSet;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/SetLike$class;->$init$(Lscala/collection/SetLike;)V

    invoke-static {p0}, Lscala/collection/Set$class;->$init$(Lscala/collection/Set;)V

    invoke-static {p0}, Lscala/collection/generic/Sorted$class;->$init$(Lscala/collection/generic/Sorted;)V

    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->$init$(Lscala/collection/SortedSetLike;)V

    invoke-static {p0}, Lscala/collection/SortedSet$class;->$init$(Lscala/collection/SortedSet;)V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/mutable/SetLike$class;->$init$(Lscala/collection/mutable/SetLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Set$class;->$init$(Lscala/collection/mutable/Set;)V

    invoke-static {p0}, Lscala/collection/mutable/SortedSet$class;->$init$(Lscala/collection/mutable/SortedSet;)V

    const-string p1, "ordering must not be null"

    .line 46
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p2}, Lscala/Option;->isDefined()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lscala/Option;->isDefined()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lscala/collection/mutable/TreeSet;->notProjection:Z

    return-void
.end method

.method private iteratorFrom(Lscala/Option;)Lscala/collection/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 110
    sget-object v0, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    iget-object v1, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/RedBlackTree$Tree;

    new-instance v2, Lscala/collection/mutable/TreeSet$$anonfun$3;

    invoke-direct {v2, p0}, Lscala/collection/mutable/TreeSet$$anonfun$3;-><init>(Lscala/collection/mutable/TreeSet;)V

    iget-object v3, p0, Lscala/collection/mutable/TreeSet;->from:Lscala/Option;

    invoke-direct {p0, v2, v3, p1}, Lscala/collection/mutable/TreeSet;->pickBound(Lscala/Function2;Lscala/Option;Lscala/Option;)Lscala/Option;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lscala/collection/immutable/RedBlackTree$;->keysIterator(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)Lscala/collection/Iterator;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lscala/collection/mutable/TreeSet;->until:Lscala/Option;

    .line 112
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    new-instance v1, Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1;-><init>(Lscala/collection/mutable/TreeSet;Lscala/Some;)V

    invoke-interface {p1, v1}, Lscala/collection/Iterator;->takeWhile(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    :goto_0
    return-object p1

    .line 111
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private final leftAcceptable$1(Ljava/lang/Object;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lscala/collection/mutable/TreeSet;->from:Lscala/Option;

    .line 92
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v1

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lscala/math/Ordering;->gteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public static newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "*>;TA;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/TreeSet$;->MODULE$:Lscala/collection/mutable/TreeSet$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/TreeSet$;->newCanBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    return-object p0
.end method

.method private notProjection()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lscala/collection/mutable/TreeSet;->notProjection:Z

    return v0
.end method

.method private pickBound(Lscala/Function2;Lscala/Option;Lscala/Option;)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TA;TA;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p3, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/Some;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lscala/Some;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Some;

    new-instance p3, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p3

    :goto_1
    return-object p2
.end method

.method private final rightAcceptable$1(Ljava/lang/Object;)Z
    .locals 2

    .line 96
    iget-object v0, p0, Lscala/collection/mutable/TreeSet;->until:Lscala/Option;

    .line 97
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v1

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lscala/math/Ordering;->lt(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public $amp(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$amp(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $amp$tilde(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$amp$tilde(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $bar(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$bar(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$colon$bslash(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $less$less(Lscala/collection/script/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/script/Message<",
            "TA;>;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->$less$less(Lscala/collection/mutable/SetLike;Lscala/collection/script/Message;)V

    return-void
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/TreeSet;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->$minus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/SetLike$class;->$minus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Shrinkable$class;->$minus$eq(Lscala/collection/generic/Shrinkable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/TreeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    sget-object v1, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    iget-object v2, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    iget-object v2, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/RedBlackTree$Tree;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lscala/collection/immutable/RedBlackTree$;->delete(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->$minus$minus(Lscala/collection/mutable/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/Shrinkable$class;->$minus$minus$eq(Lscala/collection/generic/Shrinkable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/TreeSet;->$plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->$plus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/SetLike$class;->$plus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/TreeSet;

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

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/TreeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    sget-object v1, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    iget-object v2, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    iget-object v2, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/RedBlackTree$Tree;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/RedBlackTree$;->update(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Ordering;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object p0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->$plus$plus(Lscala/collection/mutable/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Traversable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->add(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TB;>;",
            "Lscala/Function2<",
            "TB;TA;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TA;>;)",
            "Lscala/Function1<",
            "TA;TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->andThen(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->apply(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 0

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/SetLike$class;->clear(Lscala/collection/mutable/SetLike;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->clone()Lscala/collection/mutable/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Set;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->clone()Lscala/collection/mutable/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/TreeSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lscala/collection/mutable/TreeSet;

    new-instance v1, Lscala/runtime/ObjectRef;

    iget-object v2, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    iget-object v2, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lscala/runtime/ObjectRef;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lscala/collection/mutable/TreeSet;->from:Lscala/Option;

    iget-object v3, p0, Lscala/collection/mutable/TreeSet;->until:Lscala/Option;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/collection/mutable/TreeSet;-><init>(Lscala/runtime/ObjectRef;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->collect(Lscala/collection/TraversableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/Set;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/Set$class;->companion(Lscala/collection/mutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lscala/collection/mutable/TreeSet;->notProjection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/TreeSet;->leftAcceptable$1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lscala/collection/mutable/TreeSet;->rightAcceptable$1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    sget-object v0, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    iget-object v1, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/RedBlackTree$Tree;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lscala/collection/immutable/RedBlackTree$;->contains(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;Lscala/math/Ordering;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IterableLike$class;->copyToArray(Lscala/collection/IterableLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->diff(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->drop(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->dropRight(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->dropWhile(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->empty()Lscala/collection/mutable/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->empty()Lscala/collection/mutable/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/SortedSet;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->empty()Lscala/collection/mutable/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/SortedSet;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->empty()Lscala/collection/mutable/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/TreeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lscala/collection/mutable/TreeSet$;->MODULE$:Lscala/collection/mutable/TreeSet$;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/TreeSet$;->empty(Lscala/math/Ordering;)Lscala/collection/mutable/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->equals(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->exists(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filter(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filterNot(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->find(Lscala/collection/IterableLike;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->firstKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->flatten(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->foldRight(Lscala/collection/IterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->forall(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->foreach(Lscala/collection/IterableLike;Lscala/Function1;)V

    return-void
.end method

.method public from(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->from(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->from(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TB;",
            "Lscala/collection/mutable/Set<",
            "TB;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TK;>;)",
            "Lscala/collection/immutable/Map<",
            "TK;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->groupBy(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public grouped(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->grouped(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public hasAll(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->hasAll(Lscala/collection/generic/Sorted;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->hasDefiniteSize(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/GenSetLike$class;->hashCode(Lscala/collection/GenSetLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->headOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public init()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inits()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->inits(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public intersect(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->intersect(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SetLike$class;->isEmpty(Lscala/collection/SetLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isTraversableAgain(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {p0, v0}, Lscala/collection/mutable/TreeSet;->iteratorFrom(Lscala/Option;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->iteratorFrom(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Lscala/collection/SortedSet;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->keySet(Lscala/collection/SortedSetLike;)Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lscala/collection/mutable/TreeSet;->iteratorFrom(Lscala/Option;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->lastKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->lastOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SetLike$class;->map(Lscala/collection/SetLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/SetLike$class;->newBuilder(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public ordering()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lscala/collection/mutable/TreeSet;->ordering:Lscala/math/Ordering;

    return-object v0
.end method

.method public par()Lscala/collection/Parallel;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/Parallelizable$class;->par(Lscala/collection/Parallelizable;)Lscala/collection/Parallel;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/mutable/ParSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/SetLike$class;->parCombiner(Lscala/collection/mutable/SetLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->partition(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->product(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SortedSetLike$class;->range(Lscala/collection/SortedSetLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/TreeSet;->range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/TreeSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/TreeSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/mutable/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/mutable/TreeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/Option<",
            "TA;>;)",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lscala/collection/mutable/TreeSet$$anonfun$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/TreeSet$$anonfun$1;-><init>(Lscala/collection/mutable/TreeSet;)V

    iget-object v1, p0, Lscala/collection/mutable/TreeSet;->from:Lscala/Option;

    invoke-direct {p0, v0, p1, v1}, Lscala/collection/mutable/TreeSet;->pickBound(Lscala/Function2;Lscala/Option;Lscala/Option;)Lscala/Option;

    move-result-object p1

    .line 64
    new-instance v0, Lscala/collection/mutable/TreeSet$$anonfun$2;

    invoke-direct {v0, p0}, Lscala/collection/mutable/TreeSet$$anonfun$2;-><init>(Lscala/collection/mutable/TreeSet;)V

    iget-object v1, p0, Lscala/collection/mutable/TreeSet;->until:Lscala/Option;

    invoke-direct {p0, v0, p2, v1}, Lscala/collection/mutable/TreeSet;->pickBound(Lscala/Function2;Lscala/Option;Lscala/Option;)Lscala/Option;

    move-result-object p2

    .line 66
    new-instance v0, Lscala/collection/mutable/TreeSet;

    iget-object v1, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lscala/collection/mutable/TreeSet;-><init>(Lscala/runtime/ObjectRef;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)V

    return-object v0
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduce(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TA;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)",
            "Lscala/Option<",
            "TA1;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->remove(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->repr(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->result()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/Set;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/SetLike$class;->result(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public retain(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/mutable/SetLike$class;->retain(Lscala/collection/mutable/SetLike;Lscala/Function1;)V

    return-void
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$SetLike$$super$map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$SortedSetLike$$super$subsetOf(Lscala/collection/GenSet;)Z
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scan(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scanLeft(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scanRight(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/Set$class;->seq(Lscala/collection/mutable/Set;)Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 5

    .line 50
    sget-object v0, Lscala/collection/immutable/RedBlackTree$;->MODULE$:Lscala/collection/immutable/RedBlackTree$;

    iget-object v1, p0, Lscala/collection/mutable/TreeSet;->treeRef:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/RedBlackTree$Tree;

    iget-object v2, p0, Lscala/collection/mutable/TreeSet;->from:Lscala/Option;

    iget-object v3, p0, Lscala/collection/mutable/TreeSet;->until:Lscala/Option;

    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lscala/collection/immutable/RedBlackTree$;->countInRange(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/Option;Lscala/math/Ordering;)I

    move-result v0

    return v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 41
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

    .line 41
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

    .line 41
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

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->slice(Lscala/collection/IterableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownDelta(III)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliding(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sliding(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->sliding(Lscala/collection/IterableLike;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->span(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->splitAt(Lscala/collection/TraversableLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "TreeSet"

    return-object v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)Z"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->subsetOf(Lscala/collection/SortedSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public subsets()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SetLike$class;->subsets(Lscala/collection/SetLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public subsets(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->subsets(Lscala/collection/SetLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tails()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tails(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->take(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->takeRight(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->takeWhile(Lscala/collection/IterableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public thisCollection()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IterableLike$class;->thisCollection(Lscala/collection/IterableLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            "TA;TCol;>;)TCol;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SetLike$class;->toBuffer(Lscala/collection/SetLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->toCollection(Lscala/collection/IterableLike;Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterable(Lscala/collection/IterableLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterator(Lscala/collection/IterableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "TA;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/SetLike$class;->toSeq(Lscala/collection/SetLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->toSet()Lscala/collection/immutable/Set;

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

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {p0}, Lscala/collection/SetLike$class;->toString(Lscala/collection/SetLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toTraversable(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TA;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public union(Lscala/collection/GenSet;)Lscala/collection/Set;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->union(Lscala/collection/SetLike;Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public until(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->until(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/mutable/TreeSet;->until(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public unzip(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/Set<",
            "TA1;>;",
            "Lscala/collection/mutable/Set<",
            "TA2;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public unzip3(Lscala/Function1;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "Lscala/collection/mutable/Set<",
            "TA1;>;",
            "Lscala/collection/mutable/Set<",
            "TA2;>;",
            "Lscala/collection/mutable/Set<",
            "TA3;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)V"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/SetLike$class;->update(Lscala/collection/mutable/SetLike;Ljava/lang/Object;Z)V

    return-void
.end method

.method public view()Lscala/collection/IterableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IterableLike$class;->view(Lscala/collection/IterableLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/IterableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/IterableView<",
            "TA;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->view(Lscala/collection/IterableLike;II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/TreeSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/TreeSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/FilterMonadic<",
            "TA;",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->withFilter(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/IterableLike$class;->zipAll(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->zipWithIndex(Lscala/collection/IterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
