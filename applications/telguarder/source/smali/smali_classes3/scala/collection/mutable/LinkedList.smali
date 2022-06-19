.class public Lscala/collection/mutable/LinkedList;
.super Lscala/collection/mutable/AbstractSeq;
.source "LinkedList.scala"

# interfaces
.implements Lscala/collection/mutable/LinearSeq;
.implements Lscala/collection/mutable/LinkedListLike;
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
        "Lscala/collection/mutable/LinkedListLike<",
        "TA;",
        "Lscala/collection/mutable/LinkedList<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\u0015a\u0001B\u0001\u0003\u0001%\u0011!\u0002T5oW\u0016$G*[:u\u0015\t\u0019A!A\u0004nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0002\u0001\u000c7y)\u0013\u0006E\u0002\r\u001b=i\u0011AA\u0005\u0003\u001d\t\u00111\"\u00112tiJ\u000c7\r^*fcB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0004\u0019qy\u0011BA\u000f\u0003\u0005%a\u0015N\\3beN+\u0017\u000f\u0005\u0003 E=!S\"\u0001\u0011\u000b\u0005\u0005\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003G\u0001\u0012!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004\"\u0001\u0004\u0001\u0011\t11s\u0002K\u0005\u0003O\t\u0011a\u0002T5oW\u0016$G*[:u\u0019&\\W\rE\u0002\r\u0001=\u0001\"!\u0006\u0016\n\u0005-2!\u0001D*fe&\u000cG.\u001b>bE2,\u0007\"B\u0017\u0001\t\u0003q\u0013A\u0002\u001fj]&$h\u0008F\u0001)\u0011\u0015i\u0003\u0001\"\u00011)\rA\u0013g\r\u0005\u0006e=\u0002\raD\u0001\u0005K2,W\u000eC\u00035_\u0001\u0007\u0001&\u0001\u0003oKb$\u0008\"\u0002\u001c\u0001\t\u0003:\u0014!C2p[B\u000cg.[8o+\u0005A\u0004cA\u0010:I%\u0011!\u0008\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DC\u0001\u0001\u001f@\u0003B\u0011Q#P\u0005\u0003}\u0019\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005\u0001\u0015!\u0019\'po6bWM^3mA1Lgn[3eA1L7\u000f^:!CJ,\u0007\u0005Z3qe\u0016\u001c\u0017\r^3eA\u0011,X\r\t;pA%$\u0017n\\:z]\u000e\u0014\u0018m]5fg\u0002Jg\u000eI5oi\u0016\u0014h-Y2fA\u0005tG\rI5oG>l\u0007\u000f\\3uK\u00022W-\u0019;ve\u0016\u001ch&I\u0001C\u0003\u0019\u0011d&M\u0019/a!\"\u0001\u0001R$I!\t)R)\u0003\u0002G\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\t5OMo9CI[$\u001e)!J\u0001E\u0001\u0017\u0006QA*\u001b8lK\u0012d\u0015n\u001d;\u0011\u00051ae!B\u0001\u0003\u0011\u0003i5c\u0001\'OSA\u0019qd\u0014\u0013\n\u0005A\u0003#AC*fc\u001a\u000b7\r^8ss\")Q\u0006\u0014C\u0001%R\t1\nC\u0003U\u0019\u0012\u0005S+A\u0003f[B$\u00180\u0006\u0002W3V\tq\u000bE\u0002\r\u0001a\u0003\"\u0001E-\u0005\u000bI\u0019&\u0019A\n\t\u000bmcE1\u0001/\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\u0005u3W#\u00010\u0011\u000b}y\u0016-Z4\n\u0005\u0001\u0004#\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u00012d\u001b\u0005a\u0015B\u00013:\u0005\u0011\u0019u\u000e\u001c7\u0011\u0005A1G!\u0002\n[\u0005\u0004\u0019\u0002c\u0001\u0007\u0001K\")\u0011\u000e\u0014C\u0001U\u0006Qa.Z<Ck&dG-\u001a:\u0016\u0005-\u0004X#\u00017\u0011\t1iw.]\u0005\u0003]\n\u0011qAQ;jY\u0012,\'\u000f\u0005\u0002\u0011a\u0012)!\u0003\u001bb\u0001\'A\u0019A\u0002A8\t\u000fMd\u0015\u0011!C\u0005i\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\u0005)\u0008C\u0001<|\u001b\u00059(B\u0001=z\u0003\u0011a\u0017M\\4\u000b\u0003i\u000cAA[1wC&\u0011Ap\u001e\u0002\u0007\u001f\nTWm\u0019;)\t1cd0Q\u0011\u0002\u007f\u00061Cj\\<.Y\u00164X\r\u001c\u0011mS:\\W\r\u001a\u0011mSN$8\u000fI1sK\u0002\"W\r\u001d:fG\u0006$X\r\u001a\u0018)\t1ct(\u0011\u0015\u0005\u0013rr\u0018\t"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x656c1639f66e25afL


# instance fields
.field private elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private next:Lscala/collection/mutable/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Seq;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/LinearSeq$class;->$init$(Lscala/collection/mutable/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/LinkedListLike$class;->$init$(Lscala/collection/mutable/LinkedListLike;)V

    .line 85
    invoke-virtual {p0, p0}, Lscala/collection/mutable/LinkedList;->next_$eq(Lscala/collection/mutable/Seq;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lscala/collection/mutable/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lscala/collection/mutable/LinkedList;-><init>()V

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList;->elem_$eq(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0, p2}, Lscala/collection/mutable/LinkedList;->next_$eq(Lscala/collection/mutable/Seq;)V

    :cond_0
    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/mutable/LinkedList;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/LinkedList<",
            "*>;TA;",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/LinkedList$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lscala/collection/mutable/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/LinkedList<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedList$;->empty()Lscala/collection/mutable/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/LinkedList$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/LinkedList$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/LinkedList$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/LinkedList$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/LinkedList$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/LinkedList$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/LinkedList$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/LinkedList$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/LinkedList$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/LinkedList$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/LinkedList$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/LinkedList$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/LinkedList$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/LinkedList$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public append(Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/LinkedListLike$class;->append(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;

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

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/LinkedListLike$class;->apply(Lscala/collection/mutable/LinkedListLike;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->clone()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Seq;
    .locals 1

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/LinkedListLike$class;->clone(Lscala/collection/mutable/LinkedListLike;)Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/LinkedList;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v0, Lscala/collection/mutable/LinkedList$;->MODULE$:Lscala/collection/mutable/LinkedList$;

    return-object v0
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

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList;->drop(I)Lscala/collection/mutable/Seq;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/mutable/Seq;
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/LinkedListLike$class;->drop(Lscala/collection/mutable/LinkedListLike;I)Lscala/collection/mutable/Seq;

    move-result-object p1

    return-object p1
.end method

.method public elem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lscala/collection/mutable/LinkedList;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method public elem_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lscala/collection/mutable/LinkedList;->elem:Ljava/lang/Object;

    return-void
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

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/LinkedListLike$class;->foreach(Lscala/collection/mutable/LinkedListLike;Lscala/Function1;)V

    return-void
.end method

.method public get(I)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/LinkedListLike$class;->get(Lscala/collection/mutable/LinkedListLike;I)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 80
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

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/LinkedListLike$class;->head(Lscala/collection/mutable/LinkedListLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lscala/collection/mutable/Seq;)V
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/LinkedListLike$class;->insert(Lscala/collection/mutable/LinkedListLike;Lscala/collection/mutable/Seq;)V

    return-void
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/LinkedListLike$class;->isEmpty(Lscala/collection/mutable/LinkedListLike;)Z

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

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/LinkedListLike$class;->iterator(Lscala/collection/mutable/LinkedListLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/LinkedListLike$class;->length(Lscala/collection/mutable/LinkedListLike;)I

    move-result v0

    return v0
.end method

.method public next()Lscala/collection/mutable/Seq;
    .locals 1

    .line 80
    iget-object v0, p0, Lscala/collection/mutable/LinkedList;->next:Lscala/collection/mutable/Seq;

    return-object v0
.end method

.method public next_$eq(Lscala/collection/mutable/Seq;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lscala/collection/mutable/LinkedList;->next:Lscala/collection/mutable/Seq;

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

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

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/LinearSeq$class;->seq(Lscala/collection/mutable/LinearSeq;)Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->seq()Lscala/collection/mutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->tail()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/mutable/Seq;
    .locals 1

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/LinkedListLike$class;->tail(Lscala/collection/mutable/LinkedListLike;)Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->thisCollection()Lscala/collection/LinearSeq;

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

    .line 80
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedList;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->toTraversable()Lscala/collection/Traversable;

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

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/LinkedListLike$class;->update(Lscala/collection/mutable/LinkedListLike;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedList;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedList;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedList;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
