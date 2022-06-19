.class public Lscala/collection/mutable/ArrayBuffer;
.super Lscala/collection/mutable/AbstractBuffer;
.source "ArrayBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/mutable/ResizableArray;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractBuffer<",
        "TA;>;",
        "Lscala/collection/mutable/Builder<",
        "TA;",
        "Lscala/collection/mutable/ArrayBuffer<",
        "TA;>;>;",
        "Lscala/collection/mutable/ResizableArray<",
        "TA;>;",
        "Lscala/collection/CustomParallelizable<",
        "TA;",
        "Lscala/collection/parallel/mutable/ParArray<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005Ee\u0001B\u0001\u0003\u0001%\u00111\"\u0011:sCf\u0014UO\u001a4fe*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\tQ\u0011c\u0005\u0006\u0001\u0017mqR%\u000b\u00170eu\u00022\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\u0008\u0003\u00059\t%m\u001d;sC\u000e$()\u001e4gKJ\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001\'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\u0005\t1!)\u001e4gKJ\u0004Ba\u0008\u0012\u0010I5\t\u0001E\u0003\u0002\"\t\u00059q-\u001a8fe&\u001c\u0017BA\u0012!\u0005i9UM\\3sS\u000e$&/\u0019<feN\u000c\'\r\\3UK6\u0004H.\u0019;f!\ta\u0001\u0001\u0005\u0003\rM=A\u0013BA\u0014\u0003\u0005)\u0011UO\u001a4fe2K7.\u001a\t\u0004\u0019\u0001y\u0001\u0003\u0002\u0007+\u001f!J!a\u000b\u0002\u0003\'%sG-\u001a=fIN+\u0017o\u00149uS6L\'0\u001a3\u0011\t1is\u0002K\u0005\u0003]\t\u0011qAQ;jY\u0012,\'\u000fE\u0002\ra=I!!\r\u0002\u0003\u001dI+7/\u001b>bE2,\u0017I\u001d:bsB!1\u0007N\u00087\u001b\u0005!\u0011BA\u001b\u0005\u0005Q\u0019Uo\u001d;p[B\u000b\'/\u00197mK2L\'0\u00192mKB\u0019qgO\u0008\u000e\u0003aR!aA\u001d\u000b\u0005i\"\u0011\u0001\u00039be\u0006dG.\u001a7\n\u0005qB$\u0001\u0003)be\u0006\u0013(/Y=\u0011\u0005Uq\u0014BA \u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!\t\u0005A!b\u0001\n#\u0012\u0015aC5oSRL\u0017\r\\*ju\u0016,\u0012a\u0011\t\u0003+\u0011K!!\u0012\u0004\u0003\u0007%sG\u000f\u0003\u0005H\u0001\t\u0005\t\u0015!\u0003D\u00031Ig.\u001b;jC2\u001c\u0016N_3!\u0011\u0015I\u0005\u0001\"\u0001K\u0003\u0019a\u0014N\\5u}Q\u0011\u0001f\u0013\u0005\u0006\u0003\"\u0003\ra\u0011\u0005\u0006\u001b\u0002!\tET\u0001\nG>l\u0007/\u00198j_:,\u0012a\u0014\t\u0004?A#\u0013BA)!\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u0003J\u0001\u0011\u00051\u000bF\u0001)\u0011\u0015)\u0006\u0001\"\u0001W\u0003\u0015\u0019G.Z1s)\u00059\u0006CA\u000bY\u0013\tIfA\u0001\u0003V]&$\u0008\"B.\u0001\t\u0003b\u0016\u0001C:ju\u0016D\u0015N\u001c;\u0015\u0005]k\u0006\"\u00020[\u0001\u0004\u0019\u0015a\u00017f]\")\u0001\r\u0001C!C\u0006\u0019\u0001/\u0019:\u0016\u0003YBQa\u0019\u0001\u0005\u0002\u0011\u000c\u0001\u0002\n9mkN$S-\u001d\u000b\u0003K\u001al\u0011\u0001\u0001\u0005\u0006O\n\u0004\raD\u0001\u0005K2,W\u000eC\u0003j\u0001\u0011\u0005#.A\u0007%a2,8\u000f\n9mkN$S-\u001d\u000b\u0003K.DQ\u0001\u001c5A\u00025\u000c!\u0001_:\u0011\u0007Mrw\"\u0003\u0002p\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003r\u0001\u0011\u0005!/\u0001\u0008%a2,8\u000fJ3rI\r|Gn\u001c8\u0015\u0005\u0015\u001c\u0008\"B4q\u0001\u0004y\u0001\"B;\u0001\t\u00032\u0018a\u0005\u0013qYV\u001cH\u0005\u001d7vg\u0012*\u0017\u000fJ2pY>tGCA3x\u0011\u0015aG\u000f1\u0001n\u0011\u0015I\u0008\u0001\"\u0001{\u0003%Ign]3si\u0006cG\u000eF\u0002XwvDQ\u0001 =A\u0002\r\u000b\u0011A\u001c\u0005\u0006}b\u0004\ra`\u0001\u0004g\u0016\u000c\u0008\u0003B\u001a\u0002\u0002=I1!a\u0001\u0005\u0005-!&/\u0019<feN\u000c\'\r\\3\t\u000f\u0005\u001d\u0001\u0001\"\u0011\u0002\n\u00051!/Z7pm\u0016$RaVA\u0006\u0003\u001bAa\u0001`A\u0003\u0001\u0004\u0019\u0005bBA\u0008\u0003\u000b\u0001\raQ\u0001\u0006G>,h\u000e\u001e\u0005\u0008\u0003\u000f\u0001A\u0011AA\n)\ry\u0011Q\u0003\u0005\u0007y\u0006E\u0001\u0019A\"\t\r\u0005e\u0001\u0001\"\u0001T\u0003\u0019\u0011Xm];mi\"9\u0011Q\u0004\u0001\u0005B\u0005}\u0011\u0001D:ue&tw\r\u0015:fM&DXCAA\u0011!\u0011\t\u0019#!\u000b\u000f\u0007U\t)#C\u0002\u0002(\u0019\ta\u0001\u0015:fI\u00164\u0017\u0002BA\u0016\u0003[\u0011aa\u0015;sS:<\'bAA\u0014\r!:\u0001!!\r\u00028\u0005e\u0002cA\u000b\u00024%\u0019\u0011Q\u0007\u0004\u0003!M+\'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004C\u000b9aO\u001b)Qd:\u0008\u000f\u0005u\"\u0001#\u0001\u0002@\u0005Y\u0011I\u001d:bs\n+hMZ3s!\ra\u0011\u0011\t\u0004\u0007\u0003\tA\t!a\u0011\u0014\u000b\u0005\u0005\u0013QI\u001f\u0011\t}\t9\u0005J\u0005\u0004\u0003\u0013\u0002#AC*fc\u001a\u000b7\r^8ss\"9\u0011*!\u0011\u0005\u0002\u00055CCAA \u0011!\t\t&!\u0011\u0005\u0004\u0005M\u0013\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BA+\u0003O*\"!a\u0016\u0011\u0013}\tI&!\u0018\u0002f\u0005%\u0014bAA.A\ta1)\u00198Ck&dGM\u0012:p[B!\u0011qLA1\u001b\t\t\t%C\u0002\u0002dA\u0013AaQ8mYB\u0019\u0001#a\u001a\u0005\rI\tyE1\u0001\u0014!\u0011a\u0001!!\u001a\t\u0011\u00055\u0014\u0011\tC\u0001\u0003_\n!B\\3x\u0005VLG\u000eZ3s+\u0011\t\t(a\u001e\u0016\u0005\u0005M\u0004C\u0002\u0007.\u0003k\nI\u0008E\u0002\u0011\u0003o\"aAEA6\u0005\u0004\u0019\u0002\u0003\u0002\u0007\u0001\u0003kB!\"! \u0002B\u0005\u0005I\u0011BA@\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005\u0005\u0005\u0003BAB\u0003\u001bk!!!\"\u000b\t\u0005\u001d\u0015\u0011R\u0001\u0005Y\u0006twM\u0003\u0002\u0002\u000c\u0006!!.\u0019<b\u0013\u0011\ty)!\"\u0003\r=\u0013\'.Z2u\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1538b05383828e73L


# instance fields
.field private array:[Ljava/lang/Object;

.field private final initialSize:I

.field private size0:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v0, 0x10

    .line 63
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    iput p1, p0, Lscala/collection/mutable/ArrayBuffer;->initialSize:I

    .line 49
    invoke-direct {p0}, Lscala/collection/mutable/AbstractBuffer;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->$init$(Lscala/collection/mutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/ResizableArray$class;->$init$(Lscala/collection/mutable/ResizableArray;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/mutable/ArrayBuffer;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/ArrayBuffer<",
            "*>;TA;",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ArrayBuffer$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/ArrayBuffer$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/ArrayBuffer$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ArrayBuffer$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArrayBuffer$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/ArrayBuffer$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArrayBuffer$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ArrayBuffer$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArrayBuffer$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/ArrayBuffer$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/ArrayBuffer$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ArrayBuffer$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArrayBuffer$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/ArrayBuffer$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ArrayBuffer$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/ArrayBuffer;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->ensureSize(I)V

    .line 85
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    aput-object p1, v0, v1

    .line 86
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->size0_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->ensureSize(I)V

    .line 116
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lscala/collection/mutable/ArrayBuffer;->copy(III)V

    .line 117
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v0

    aput-object p1, v0, v2

    .line 118
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->size0_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 96
    instance-of v0, p1, Lscala/collection/IndexedSeqLike;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/IndexedSeqLike;

    .line 98
    invoke-interface {p1}, Lscala/collection/IndexedSeqLike;->length()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lscala/collection/mutable/ArrayBuffer;->ensureSize(I)V

    .line 100
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v2

    invoke-interface {p1, v1, v2, v0}, Lscala/collection/IndexedSeqLike;->copyToArray(Ljava/lang/Object;II)V

    .line 101
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->size0_$eq(I)V

    move-object p1, p0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ArrayBuffer;

    :goto_0
    return-object p1
.end method

.method public $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toTraversable()Lscala/collection/Traversable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lscala/collection/mutable/ArrayBuffer;->insertAll(ILscala/collection/Traversable;)V

    return-object p0
.end method

.method public bridge synthetic $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->apply(Lscala/collection/mutable/ResizableArray;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public array()[Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuffer;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public array_$eq([Ljava/lang/Object;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuffer;->array:[Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->reduceToSize(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/ArrayBuffer;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    return-object v0
.end method

.method public copy(III)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/ResizableArray$class;->copy(Lscala/collection/mutable/ResizableArray;III)V

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

    .line 48
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/ResizableArray$class;->copyToArray(Lscala/collection/mutable/ResizableArray;Ljava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Lscala/collection/GenSeq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->endsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public ensureSize(I)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->ensureSize(Lscala/collection/mutable/ResizableArray;I)V

    return-void
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

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
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

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->find(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Option;

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

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldRight(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

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

    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->foreach(Lscala/collection/mutable/ResizableArray;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

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

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public init()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->init(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initialSize()I
    .locals 1

    .line 48
    iget v0, p0, Lscala/collection/mutable/ArrayBuffer;->initialSize:I

    return v0
.end method

.method public insertAll(ILscala/collection/Traversable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable<",
            "TA;>;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 140
    invoke-interface {p2}, Lscala/collection/Traversable;->size()I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    add-int/2addr v1, v0

    .line 142
    invoke-virtual {p0, v1}, Lscala/collection/mutable/ArrayBuffer;->ensureSize(I)V

    add-int/2addr v0, p1

    .line 144
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p0, p1, v0, v2}, Lscala/collection/mutable/ArrayBuffer;->copy(III)V

    .line 145
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;I)V

    .line 146
    invoke-virtual {p0, v1}, Lscala/collection/mutable/ArrayBuffer;->size0_$eq(I)V

    return-void

    .line 139
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

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

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/ResizableArray$class;->length(Lscala/collection/mutable/ResizableArray;)I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->par()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/mutable/ParArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TA;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/parallel/mutable/ParArray$;->handoff(Ljava/lang/Object;I)Lscala/collection/parallel/mutable/ParArray;

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
            "Lscala/collection/parallel/mutable/ParArray<",
            "TA;>;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
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

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

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

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceRight(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceToSize(I)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->reduceToSize(Lscala/collection/mutable/ResizableArray;I)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {p0, p1, v1}, Lscala/collection/mutable/ArrayBuffer;->remove(II)V

    return-object v0
.end method

.method public remove(II)V
    .locals 2

    .line 157
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_1

    add-int v0, p1, p2

    .line 159
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, p1, v1}, Lscala/collection/mutable/ArrayBuffer;->copy(III)V

    .line 160
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->reduceToSize(I)V

    return-void

    .line 158
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v0, "requirement failed: "

    invoke-virtual {p2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    const-string v0, "removing negative number of elements"

    invoke-virtual {p2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->result()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/ArrayBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverse(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;

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

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->seq(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public size0()I
    .locals 1

    .line 48
    iget v0, p0, Lscala/collection/mutable/ArrayBuffer;->size0:I

    return v0
.end method

.method public size0_$eq(I)V
    .locals 0

    .line 48
    iput p1, p0, Lscala/collection/mutable/ArrayBuffer;->size0:I

    return-void
.end method

.method public sizeHint(I)V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 69
    new-array p1, p1, [Ljava/lang/Object;

    .line 70
    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->array_$eq([Ljava/lang/Object;)V

    :cond_0
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

    .line 48
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

    .line 48
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

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;

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
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->span(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->splitAt(Lscala/collection/IndexedSeqOptimized;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Lscala/collection/GenSeq;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->startsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ArrayBuffer"

    return-object v0
.end method

.method public swap(II)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/ResizableArray$class;->swap(Lscala/collection/mutable/ResizableArray;II)V

    return-void
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/IndexedSeq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->thisCollection(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
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

    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqLike$class;->toCollection(Lscala/collection/mutable/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/ResizableArray$class;->update(Lscala/collection/mutable/ResizableArray;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayBuffer;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/SeqView;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/SeqView;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayBuffer;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayBuffer;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/mutable/IndexedSeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->view(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqLike$class;->view(Lscala/collection/mutable/IndexedSeqLike;II)Lscala/collection/mutable/IndexedSeqView;

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
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
