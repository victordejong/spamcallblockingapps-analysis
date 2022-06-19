.class public Lscala/collection/mutable/MutableList;
.super Lscala/collection/mutable/AbstractSeq;
.source "MutableList.scala"

# interfaces
.implements Lscala/collection/mutable/LinearSeq;
.implements Lscala/collection/LinearSeqOptimized;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/mutable/LinearSeq<",
        "TA;>;",
        "Lscala/collection/LinearSeqOptimized<",
        "TA;",
        "Lscala/collection/mutable/MutableList<",
        "TA;>;>;",
        "Lscala/collection/mutable/Builder<",
        "TA;",
        "Lscala/collection/mutable/MutableList<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005=g\u0001B\u0001\u0003\u0001%\u00111\"T;uC\ndW\rT5ti*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\tQ\u0011cE\u0004\u0001\u0017mq2EK\u0017\u0011\u00071iq\"D\u0001\u0003\u0013\tq!AA\u0006BEN$(/Y2u\'\u0016\u000c\u0008C\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011\u0011!Q\t\u0003)a\u0001\"!\u0006\u000c\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\raAdD\u0005\u0003;\t\u0011\u0011\u0002T5oK\u0006\u00148+Z9\u0011\t}\u0001sBI\u0007\u0002\t%\u0011\u0011\u0005\u0002\u0002\u0013\u0019&tW-\u0019:TKF|\u0005\u000f^5nSj,G\rE\u0002\r\u0001=\u0001B\u0001J\u0014\u0010S5\tQE\u0003\u0002\'\t\u00059q-\u001a8fe&\u001c\u0017B\u0001\u0015&\u0005i9UM\\3sS\u000e$&/\u0019<feN\u000c\'\r\\3UK6\u0004H.\u0019;f!\ta\u0001\u0001\u0005\u0003\rW=\u0011\u0013B\u0001\u0017\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!\u0006\u0018\n\u0005=2!\u0001D*fe&\u000cG.\u001b>bE2,\u0007\"B\u0019\u0001\t\u0003\u0011\u0014A\u0002\u001fj]&$h\u0008F\u0001#\u0011\u0015!\u0004\u0001\"\u00116\u0003%\u0019w.\u001c9b]&|g.F\u00017!\r!s\'K\u0005\u0003q\u0015\u0012\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\t\ri\u0002\u0001\u0015\"\u0015<\u0003)qWm\u001e\"vS2$WM]\u000b\u0002U!9Q\u0008\u0001a\u0001\n#q\u0014A\u00024jeN$\u0008\'F\u0001@!\ra\u0001iD\u0005\u0003\u0003\n\u0011!\u0002T5oW\u0016$G*[:u\u0011\u001d\u0019\u0005\u00011A\u0005\u0012\u0011\u000b!BZ5sgR\u0004t\u000cJ3r)\t)\u0005\n\u0005\u0002\u0016\r&\u0011qI\u0002\u0002\u0005+:LG\u000fC\u0004J\u0005\u0006\u0005\t\u0019A \u0002\u0007a$\u0013\u0007\u0003\u0004L\u0001\u0001\u0006KaP\u0001\u0008M&\u00148\u000f\u001e\u0019!\u0011\u001di\u0005\u00011A\u0005\u0012y\nQ\u0001\\1tiBBqa\u0014\u0001A\u0002\u0013E\u0001+A\u0005mCN$\u0008g\u0018\u0013fcR\u0011Q)\u0015\u0005\u0008\u0013:\u000b\t\u00111\u0001@\u0011\u0019\u0019\u0006\u0001)Q\u0005\u007f\u00051A.Y:ua\u0001Bq!\u0016\u0001A\u0002\u0013Ea+A\u0002mK:,\u0012a\u0016\t\u0003+aK!!\u0017\u0004\u0003\u0007%sG\u000fC\u0004\\\u0001\u0001\u0007I\u0011\u0003/\u0002\u000f1,gn\u0018\u0013fcR\u0011Q)\u0018\u0005\u0008\u0013j\u000b\t\u00111\u0001X\u0011\u0019y\u0006\u0001)Q\u0005/\u0006!A.\u001a8!\u0011\u0015\t\u0007\u0001\"\u0001c\u0003\u001d!x.U;fk\u0016,\u0012a\u0019\t\u0004\u0019\u0011|\u0011BA3\u0003\u0005\u0015\tV/Z;f\u0011\u00159\u0007\u0001\"\u0011i\u0003\u001dI7/R7qif,\u0012!\u001b\t\u0003+)L!a\u001b\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\u000e\u0001C!]\u0006!\u0001.Z1e+\u0005y\u0001\"\u00029\u0001\t\u0003\n\u0018\u0001\u0002;bS2,\u0012A\t\u0005\u0006g\u0002!)\u0002^\u0001\ti\u0006LG.S7qYR\u0011Q)\u001e\u0005\u0006mJ\u0004\rAI\u0001\u0003i2DQ\u0001\u001f\u0001\u0005\u0002e\u000ca\u0002\n9mkN$S-\u001d\u0013d_2|g\u000e\u0006\u0002{w6\t\u0001\u0001C\u0003}o\u0002\u0007q\"\u0001\u0003fY\u0016l\u0007\"\u0002@\u0001\t\u00032\u0016A\u00027f]\u001e$\u0008\u000eC\u0004\u0002\u0002\u0001!\t%a\u0001\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\u0007=\t)\u0001\u0003\u0004\u0002\u0008}\u0004\raV\u0001\u0002]\"9\u00111\u0002\u0001\u0005\u0002\u00055\u0011AB;qI\u0006$X\rF\u0003F\u0003\u001f\t\t\u0002C\u0004\u0002\u0008\u0005%\u0001\u0019A,\t\u000f\u0005M\u0011\u0011\u0002a\u0001\u001f\u0005\t\u0001\u0010C\u0004\u0002\u0018\u0001!\t!!\u0007\u0002\u0007\u001d,G\u000f\u0006\u0003\u0002\u001c\u0005\u0005\u0002\u0003B\u000b\u0002\u001e=I1!a\u0008\u0007\u0005\u0019y\u0005\u000f^5p]\"9\u0011qAA\u000b\u0001\u00049\u0006bBA\u0013\u0001\u0011E\u0011qE\u0001\u000caJ,\u0007/\u001a8e\u000b2,W\u000eF\u0002F\u0003SAa\u0001`A\u0012\u0001\u0004y\u0001bBA\u0017\u0001\u0011E\u0011qF\u0001\u000bCB\u0004XM\u001c3FY\u0016lGcA#\u00022!1A0a\u000bA\u0002=Aq!!\u000e\u0001\t\u0003\n9$\u0001\u0005ji\u0016\u0014\u0018\r^8s+\t\tI\u0004\u0005\u0003 \u0003wy\u0011bAA\u001f\t\tA\u0011\n^3sCR|\'\u000f\u0003\u0004\u0002B\u0001!\tE\\\u0001\u0005Y\u0006\u001cH\u000fC\u0004\u0002F\u0001!\t%a\u0012\u0002\rQ|G*[:u+\t\tI\u0005E\u0003\u0002L\u0005Es\"\u0004\u0002\u0002N)\u0019\u0011q\n\u0003\u0002\u0013%lW.\u001e;bE2,\u0017\u0002BA*\u0003\u001b\u0012A\u0001T5ti\"9\u0011q\u000b\u0001\u0005\u0002\tq\u0014\u0001\u0004;p\u0019&t7.\u001a3MSN$\u0008bBA.\u0001\u0011\u0005\u0011QL\u0001\tIAdWo\u001d\u0013fcR\u0019!0a\u0018\t\rq\u000cI\u00061\u0001\u0010\u0011\u001d\t\u0019\u0007\u0001C\u0001\u0003K\nQa\u00197fCJ$\u0012!\u0012\u0005\u0007\u0003S\u0002A\u0011\u0001\u001a\u0002\rI,7/\u001e7u\u0011\u0019\ti\u0007\u0001C!e\u0005)1\r\\8oK\":\u0001!!\u001d\u0002x\u0005e\u0004cA\u000b\u0002t%\u0019\u0011Q\u000f\u0004\u0003!M+\'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004\u0003*j=Kr\u0008Q\u0016a\u0008\u000f\u0005u$\u0001#\u0001\u0002\u0000\u0005YQ*\u001e;bE2,G*[:u!\ra\u0011\u0011\u0011\u0004\u0007\u0003\tA\t!a!\u0014\u000b\u0005\u0005\u0015QQ\u0017\u0011\t\u0011\n9)K\u0005\u0004\u0003\u0013+#AC*fc\u001a\u000b7\r^8ss\"9\u0011\'!!\u0005\u0002\u00055ECAA@\u0011!\t\t*!!\u0005\u0004\u0005M\u0015\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BAK\u0003O+\"!a&\u0011\u0013\u0011\nI*!(\u0002&\u0006%\u0016bAANK\ta1)\u00198Ck&dGM\u0012:p[B!\u0011qTAQ\u001b\t\t\t)C\u0002\u0002$^\u0012AaQ8mYB\u0019\u0001#a*\u0005\rI\tyI1\u0001\u0014!\u0011a\u0001!!*\t\u000fi\n\t\t\"\u0001\u0002.V!\u0011qVA[+\t\t\t\u000c\u0005\u0004\rW\u0005M\u0016q\u0017\t\u0004!\u0005UFA\u0002\n\u0002,\n\u00071\u0003\u0005\u0003\r\u0001\u0005M\u0006BCA^\u0003\u0003\u000b\t\u0011\"\u0003\u0002>\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\ty\u000c\u0005\u0003\u0002B\u0006-WBAAb\u0015\u0011\t)-a2\u0002\t1\u000cgn\u001a\u0006\u0003\u0003\u0013\u000cAA[1wC&!\u0011QZAb\u0005\u0019y%M[3di\u0002"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x52699e327e8056c0L


# instance fields
.field private first0:Lscala/collection/mutable/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation
.end field

.field private last0:Lscala/collection/mutable/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation
.end field

.field private len:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/LinearSeq$class;->$init$(Lscala/collection/mutable/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->$init$(Lscala/collection/LinearSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 42
    new-instance v0, Lscala/collection/mutable/LinkedList;

    invoke-direct {v0}, Lscala/collection/mutable/LinkedList;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/MutableList;->first0:Lscala/collection/mutable/LinkedList;

    .line 43
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/mutable/MutableList;->last0:Lscala/collection/mutable/LinkedList;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lscala/collection/mutable/MutableList;->len:I

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/mutable/MutableList;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0}, Lscala/collection/mutable/MutableList$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/MutableList<",
            "*>;TA;",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0}, Lscala/collection/mutable/MutableList$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/MutableList$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0}, Lscala/collection/mutable/MutableList$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/MutableList$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/MutableList$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/MutableList$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/MutableList$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/MutableList$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/MutableList$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/MutableList$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/MutableList$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/MutableList$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/MutableList$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/MutableList$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/MutableList$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/MutableList$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/MutableList$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;

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

    .line 30
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->appendElem(Ljava/lang/Object;)V

    return-object p0
.end method

.method public $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/MutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->prependElem(Ljava/lang/Object;)V

    return-object p0
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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public appendElem(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->prependElem(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->last0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/LinkedList;

    invoke-direct {v1}, Lscala/collection/mutable/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/LinkedList;->next_$eq(Lscala/collection/mutable/Seq;)V

    .line 108
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->last0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList;->next()Lscala/collection/mutable/Seq;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/LinkedList;

    invoke-virtual {p0, v0}, Lscala/collection/mutable/MutableList;->last0_$eq(Lscala/collection/mutable/LinkedList;)V

    .line 109
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->last0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/LinkedList;->elem_$eq(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->last0()Lscala/collection/mutable/LinkedList;

    move-result-object p1

    new-instance v0, Lscala/collection/mutable/LinkedList;

    invoke-direct {v0}, Lscala/collection/mutable/LinkedList;-><init>()V

    invoke-virtual {p1, v0}, Lscala/collection/mutable/LinkedList;->next_$eq(Lscala/collection/mutable/Seq;)V

    .line 111
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->len_$eq(I)V

    :goto_0
    return-void
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/LinkedList;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 153
    new-instance v0, Lscala/collection/mutable/LinkedList;

    invoke-direct {v0}, Lscala/collection/mutable/LinkedList;-><init>()V

    invoke-virtual {p0, v0}, Lscala/collection/mutable/MutableList;->first0_$eq(Lscala/collection/mutable/LinkedList;)V

    .line 154
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/MutableList;->last0_$eq(Lscala/collection/mutable/LinkedList;)V

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lscala/collection/mutable/MutableList;->len_$eq(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->clone()Lscala/collection/mutable/MutableList;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/MutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 163
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MutableList;

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/MutableList;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lscala/collection/mutable/MutableList$;->MODULE$:Lscala/collection/mutable/MutableList$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->contains(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->drop(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->dropRight(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->dropRight(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->exists(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->find(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public first0()Lscala/collection/mutable/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/mutable/MutableList;->first0:Lscala/collection/mutable/LinkedList;

    return-object v0
.end method

.method public first0_$eq(Lscala/collection/mutable/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lscala/collection/mutable/MutableList;->first0:Lscala/collection/mutable/LinkedList;

    return-void
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

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->foldLeft(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->foldRight(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->forall(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->foreach(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public get(I)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/LinkedList;->get(I)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 30
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->hashCode(Lscala/collection/LinearSeqLike;)I

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

    .line 54
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList;->head()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
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

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 117
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Lscala/collection/mutable/MutableList$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/MutableList$$anon$1;-><init>(Lscala/collection/mutable/MutableList;)V

    :goto_0
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->last0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList;->elem()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "MutableList.empty.last"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public last0()Lscala/collection/mutable/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lscala/collection/mutable/MutableList;->last0:Lscala/collection/mutable/LinkedList;

    return-object v0
.end method

.method public last0_$eq(Lscala/collection/mutable/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lscala/collection/mutable/MutableList;->last0:Lscala/collection/mutable/LinkedList;

    return-void
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

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->lastIndexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public len()I
    .locals 1

    .line 44
    iget v0, p0, Lscala/collection/mutable/MutableList;->len:I

    return v0
.end method

.method public len_$eq(I)V
    .locals 0

    .line 44
    iput p1, p0, Lscala/collection/mutable/MutableList;->len:I

    return-void
.end method

.method public length()I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->lengthCompare(Lscala/collection/LinearSeqOptimized;I)I

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
            "Lscala/collection/mutable/MutableList<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

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
            "Lscala/collection/mutable/MutableList<",
            "TA;>;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lscala/collection/mutable/MutableList;

    invoke-direct {v0}, Lscala/collection/mutable/MutableList;-><init>()V

    return-object v0
.end method

.method public prependElem(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 98
    new-instance v0, Lscala/collection/mutable/LinkedList;

    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/collection/mutable/LinkedList;-><init>(Ljava/lang/Object;Lscala/collection/mutable/LinkedList;)V

    invoke-virtual {p0, v0}, Lscala/collection/mutable/MutableList;->first0_$eq(Lscala/collection/mutable/LinkedList;)V

    .line 99
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->last0_$eq(Lscala/collection/mutable/LinkedList;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->len_$eq(I)V

    return-void
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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->reduceLeft(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->reduceRight(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->result()Lscala/collection/mutable/MutableList;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/MutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;"
        }
    .end annotation

    return-object p0
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

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
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

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinearSeq<",
            "TA;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/mutable/LinearSeq$class;->seq(Lscala/collection/mutable/LinearSeq;)Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 30
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

    .line 30
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

    .line 30
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

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/MutableList;->slice(II)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->slice(Lscala/collection/LinearSeqOptimized;II)Lscala/collection/LinearSeqOptimized;

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
            "Lscala/collection/mutable/MutableList<",
            "TA;>;",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->span(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->tail()Lscala/collection/mutable/MutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->tail()Lscala/collection/mutable/MutableList;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/mutable/MutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lscala/collection/mutable/MutableList;

    invoke-direct {v0}, Lscala/collection/mutable/MutableList;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lscala/collection/mutable/MutableList;->tailImpl(Lscala/collection/mutable/MutableList;)V

    return-object v0
.end method

.method public final tailImpl(Lscala/collection/mutable/MutableList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/MutableList<",
            "TA;>;)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList;->tail()Lscala/collection/mutable/Seq;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/LinkedList;

    invoke-virtual {p1, v0}, Lscala/collection/mutable/MutableList;->first0_$eq(Lscala/collection/mutable/LinkedList;)V

    .line 67
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/MutableList;->len_$eq(I)V

    .line 68
    invoke-virtual {p1}, Lscala/collection/mutable/MutableList;->len()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->last0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lscala/collection/mutable/MutableList;->last0_$eq(Lscala/collection/mutable/LinkedList;)V

    return-void

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "requirement failed: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "tail of empty list"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->take(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->take(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->takeWhile(Lscala/Function1;)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->takeWhile(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/LinearSeq<",
            "TA;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 30
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 30
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 30
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/MutableList;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toLinkedList()Lscala/collection/mutable/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

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

    .line 139
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toQueue()Lscala/collection/mutable/Queue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lscala/collection/mutable/Queue;

    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->last0()Lscala/collection/mutable/LinkedList;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->len()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/mutable/Queue;-><init>(Lscala/collection/mutable/LinkedList;Lscala/collection/mutable/LinkedList;I)V

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->first0()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/collection/mutable/LinkedList;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/MutableList;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lscala/collection/mutable/MutableList;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/MutableList;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
