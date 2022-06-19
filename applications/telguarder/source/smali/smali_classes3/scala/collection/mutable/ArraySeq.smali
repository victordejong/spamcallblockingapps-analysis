.class public Lscala/collection/mutable/ArraySeq;
.super Lscala/collection/mutable/AbstractSeq;
.source "ArraySeq.scala"

# interfaces
.implements Lscala/collection/mutable/IndexedSeq;
.implements Lscala/collection/mutable/IndexedSeqOptimized;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/mutable/IndexedSeq<",
        "TA;>;",
        "Lscala/collection/mutable/IndexedSeqOptimized<",
        "TA;",
        "Lscala/collection/mutable/ArraySeq<",
        "TA;>;>;",
        "Lscala/collection/CustomParallelizable<",
        "TA;",
        "Lscala/collection/parallel/mutable/ParArray<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00055d\u0001B\u0001\u0003\u0001%\u0011\u0001\"\u0011:sCf\u001cV-\u001d\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M9\u0001aC\u000e\u001fK%\"\u0004c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\tY\u0011IY:ue\u0006\u001cGoU3r!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003\u0005\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\r9=I!!\u0008\u0002\u0003\u0015%sG-\u001a=fIN+\u0017\u000f\u0005\u0003 E=!S\"\u0001\u0011\u000b\u0005\u0005\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003G\u0001\u0012!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004\"\u0001\u0004\u0001\u0011\t11s\u0002K\u0005\u0003O\t\u00111#\u00138eKb,GmU3r\u001fB$\u0018.\\5{K\u0012\u00042\u0001\u0004\u0001\u0010!\u0011Q3fD\u0017\u000e\u0003\u0011I!\u0001\u000c\u0003\u0003)\r+8\u000f^8n!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\rq#gD\u0007\u0002_)\u00111\u0001\r\u0006\u0003c\u0011\t\u0001\u0002]1sC2dW\r\\\u0005\u0003g=\u0012\u0001\u0002U1s\u0003J\u0014\u0018-\u001f\t\u0003+UJ!A\u000e\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u0011a\u0002!Q1A\u0005Be\na\u0001\\3oORDW#\u0001\u001e\u0011\u0005UY\u0014B\u0001\u001f\u0007\u0005\rIe\u000e\u001e\u0005\t}\u0001\u0011\t\u0011)A\u0005u\u00059A.\u001a8hi\"\u0004\u0003\"\u0002!\u0001\t\u0003\t\u0015A\u0002\u001fj]&$h\u0008\u0006\u0002)\u0005\")\u0001h\u0010a\u0001u!)A\t\u0001C!\u000b\u0006I1m\\7qC:LwN\\\u000b\u0002\rB\u0019qd\u0012\u0013\n\u0005!\u0003#\u0001E$f]\u0016\u0014\u0018nY\"p[B\u000cg.[8o\u0011\u001dQ\u0005A1A\u0005\u0002-\u000bQ!\u0019:sCf,\u0012\u0001\u0014\t\u0004+5{\u0015B\u0001(\u0007\u0005\u0015\t%O]1z!\t)\u0002+\u0003\u0002R\r\t1\u0011I\\=SK\u001aDaa\u0015\u0001!\u0002\u0013a\u0015AB1se\u0006L\u0008\u0005C\u0003V\u0001\u0011\u0005c+A\u0002qCJ,\u0012!\u000c\u0005\u00061\u0002!\t!W\u0001\u0006CB\u0004H.\u001f\u000b\u0003\u001fiCQaW,A\u0002i\n1!\u001b3y\u0011\u0015i\u0006\u0001\"\u0001_\u0003\u0019)\u0008\u000fZ1uKR\u0019qLY2\u0011\u0005U\u0001\u0017BA1\u0007\u0005\u0011)f.\u001b;\t\u000bmc\u0006\u0019\u0001\u001e\t\u000b\u0011d\u0006\u0019A\u0008\u0002\t\u0015dW-\u001c\u0005\u0006M\u0002!\teZ\u0001\u0008M>\u0014X-Y2i+\tAw\u000e\u0006\u0002`S\")!.\u001aa\u0001W\u0006\ta\r\u0005\u0003\u0016Y>q\u0017BA7\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\u0011_\u0012)\u0001/\u001ab\u0001\'\t\tQ\u000bC\u0003s\u0001\u0011\u00053/A\u0006d_BLHk\\!se\u0006LXC\u0001;z)\u0011yV\u000f @\t\u000bY\u000c\u0008\u0019A<\u0002\u0005a\u001c\u0008cA\u000bNqB\u0011\u0001#\u001f\u0003\u0006uF\u0014\ra\u001f\u0002\u0002\u0005F\u0011q\u0002\u0007\u0005\u0006{F\u0004\rAO\u0001\u0006gR\u000c\'\u000f\u001e\u0005\u0006\u007fF\u0004\rAO\u0001\u0004Y\u0016t\u0007bBA\u0002\u0001\u0011\u0005\u0013QA\u0001\u0006G2|g.\u001a\u000b\u0002Q!:\u0001!!\u0003\u0002\u0010\u0005E\u0001cA\u000b\u0002\u000c%\u0019\u0011Q\u0002\u0004\u0003!M+\'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004C\u000b={IG\u0013JD:\u0008\u000f\u0005U!\u0001#\u0001\u0002\u0018\u0005A\u0011I\u001d:bsN+\u0017\u000fE\u0002\r\u000331a!\u0001\u0002\t\u0002\u0005m1#BA\r\u0003;!\u0004\u0003B\u0010\u0002 \u0011J1!!\t!\u0005)\u0019V-\u001d$bGR|\'/\u001f\u0005\u0008\u0001\u0006eA\u0011AA\u0013)\t\t9\u0002\u0003\u0005\u0002*\u0005eA1AA\u0016\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0011\ti#a\u0010\u0016\u0005\u0005=\u0002#C\u0010\u00022\u0005U\u0012QHA!\u0013\r\t\u0019\u0004\t\u0002\r\u0007\u0006t\')^5mI\u001a\u0013x.\u001c\t\u0005\u0003o\tI$\u0004\u0002\u0002\u001a%\u0019\u00111H$\u0003\t\r{G\u000e\u001c\t\u0004!\u0005}BA\u0002\n\u0002(\t\u00071\u0003\u0005\u0003\r\u0001\u0005u\u0002\u0002CA#\u00033!\t!a\u0012\u0002\u00159,wOQ;jY\u0012,\'/\u0006\u0003\u0002J\u0005MSCAA&!\u001da\u0011QJA)\u0003+J1!a\u0014\u0003\u0005\u001d\u0011U/\u001b7eKJ\u00042\u0001EA*\t\u0019\u0011\u00121\tb\u0001\'A!A\u0002AA)\u0011)\tI&!\u0007\u0002\u0002\u0013%\u00111L\u0001\u000ce\u0016\u000cGMU3t_24X\r\u0006\u0002\u0002^A!\u0011qLA5\u001b\t\t\tG\u0003\u0003\u0002d\u0005\u0015\u0014\u0001\u00027b]\u001eT!!a\u001a\u0002\t)\u000cg/Y\u0005\u0005\u0003W\n\tG\u0001\u0004PE*,7\r\u001e"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x153c3dd228490e73L


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    iput p1, p0, Lscala/collection/mutable/ArraySeq;->length:I

    .line 47
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->$init$(Lscala/collection/mutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 57
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ArraySeq;->array:[Ljava/lang/Object;

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/mutable/ArraySeq;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArraySeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/ArraySeq<",
            "*>;TA;",
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArraySeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ArraySeq$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArraySeq$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/ArraySeq$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/ArraySeq$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ArraySeq$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArraySeq$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/ArraySeq$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArraySeq$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ArraySeq$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArraySeq$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/ArraySeq$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/ArraySeq$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ArraySeq$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ArraySeq$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/ArraySeq$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ArraySeq$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public array()[Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lscala/collection/mutable/ArraySeq;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->clone()Lscala/collection/mutable/ArraySeq;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/ArraySeq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 95
    new-instance v1, Lscala/collection/mutable/ArraySeq$$anon$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/mutable/ArraySeq$$anon$1;-><init>(Lscala/collection/mutable/ArraySeq;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/ArraySeq;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lscala/collection/mutable/ArraySeq$;->MODULE$:Lscala/collection/mutable/ArraySeq$;

    return-object v0
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 89
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v1, p3, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->length()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v7

    .line 90
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 46
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

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->endsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;)Z

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

    .line 46
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

    .line 46
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

    .line 46
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

    .line 46
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

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 46
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

    .line 46
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

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public init()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->init(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 46
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 46
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

    .line 46
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

    .line 46
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

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 46
    iget v0, p0, Lscala/collection/mutable/ArraySeq;->length:I

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->par()Lscala/collection/parallel/mutable/ParArray;

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

    .line 59
    sget-object v0, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->length()I

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

    .line 46
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

    .line 46
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

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceRight(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .line 46
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

    .line 46
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

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 46
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

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

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

    .line 46
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->seq(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 0

    .line 46
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
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;",
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 46
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
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;",
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 46
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

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->startsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/IndexedSeq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->thisCollection()Lscala/collection/mutable/IndexedSeq;

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

    .line 46
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

    .line 46
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqLike$class;->toCollection(Lscala/collection/mutable/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->toTraversable()Lscala/collection/Traversable;

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

    .line 67
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    return-void

    .line 67
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArraySeq;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/SeqView;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/SeqView;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArraySeq;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/mutable/ArraySeq;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArraySeq;->view(II)Lscala/collection/mutable/IndexedSeqView;

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

    .line 46
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
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 46
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
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
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
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
