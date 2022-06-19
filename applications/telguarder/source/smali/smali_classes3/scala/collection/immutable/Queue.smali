.class public Lscala/collection/immutable/Queue;
.super Lscala/collection/AbstractSeq;
.source "Queue.scala"

# interfaces
.implements Lscala/collection/immutable/LinearSeq;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/Queue$EmptyQueue$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/immutable/LinearSeq<",
        "TA;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\u001da\u0001B\u0001\u0003\u0001%\u0011Q!U;fk\u0016T!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012\'\u0019\u00011bG\u0010\'UA\u0019A\"D\u0008\u000e\u0003\u0011I!A\u0004\u0003\u0003\u0017\u0005\u00137\u000f\u001e:bGR\u001cV-\u001d\t\u0003!Ea\u0001\u0001\u0002\u0004\u0013\u0001\u0011\u0015\ra\u0005\u0002\u0002\u0003F\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\u0008c\u0001\u000f\u001e\u001f5\t!!\u0003\u0002\u001f\u0005\tIA*\u001b8fCJ\u001cV-\u001d\t\u0005A\rzQ%D\u0001\"\u0015\t\u0011C!A\u0004hK:,\'/[2\n\u0005\u0011\n#AG$f]\u0016\u0014\u0018n\u0019+sCZ,\'o]1cY\u0016$V-\u001c9mCR,\u0007C\u0001\u000f\u0001!\u0011aqeD\u0015\n\u0005!\"!!\u0004\'j]\u0016\u000c\'oU3r\u0019&\\W\rE\u0002\u001d\u0001=\u0001\"!F\u0016\n\u000512!\u0001D*fe&\u000cG.\u001b>bE2,\u0007\u0002\u0003\u0018\u0001\u0005\u000b\u0007I\u0011C\u0018\u0002\u0005%tW#\u0001\u0019\u0011\u0007q\tt\"\u0003\u00023\u0005\t!A*[:u\u0011!!\u0004A!A!\u0002\u0013\u0001\u0014aA5oA!Aa\u0007\u0001BC\u0002\u0013Eq&A\u0002pkRD\u0001\u0002\u000f\u0001\u0003\u0002\u0003\u0006I\u0001M\u0001\u0005_V$\u0008\u0005C\u0003;\u0001\u0011E1(\u0001\u0004=S:LGO\u0010\u000b\u0004Sqj\u0004\"\u0002\u0018:\u0001\u0004\u0001\u0004\"\u0002\u001c:\u0001\u0004\u0001\u0004\"B \u0001\t\u0003\u0002\u0015!C2p[B\u000cg.[8o+\u0005\t\u0005c\u0001\u0011CK%\u00111)\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DQ!\u0012\u0001\u0005B\u0019\u000bQ!\u00199qYf$\"aD$\t\u000b!#\u0005\u0019A%\u0002\u00039\u0004\"!\u0006&\n\u0005-3!aA%oi\")Q\n\u0001C!\u001d\u0006A\u0011\u000e^3sCR|\'/F\u0001P!\ra\u0001kD\u0005\u0003#\u0012\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006\'\u0002!\t\u0005V\u0001\u0008SN,U\u000e\u001d;z+\u0005)\u0006CA\u000bW\u0013\t9fAA\u0004C_>dW-\u00198\t\u000be\u0003A\u0011\t.\u0002\t!,\u0017\rZ\u000b\u0002\u001f!)A\u000c\u0001C!;\u0006!A/Y5m+\u0005I\u0003\"B0\u0001\t\u0003\u0002\u0017A\u00027f]\u001e$\u0008.F\u0001J\u0011\u0015\u0011\u0007\u0001\"\u0011d\u0003-!\u0003\u000f\\;tI\r|Gn\u001c8\u0016\u0007\u0011|w\r\u0006\u0002feR\u0011a-\u001b\t\u0003!\u001d$Q\u0001[1C\u0002M\u0011A\u0001\u00165bi\")!.\u0019a\u0002W\u0006\u0011!M\u001a\t\u0006A1LcNZ\u0005\u0003[\u0006\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u0004\"\u0001E8\u0005\u000bA\u000c\'\u0019A9\u0003\u0003\t\u000b\"a\u0004\r\t\u000bM\u000c\u0007\u0019\u00018\u0002\t\u0015dW-\u001c\u0005\u0006k\u0002!\tE^\u0001\u000cI\r|Gn\u001c8%a2,8/F\u0002x}j$\"\u0001_@\u0015\u0005e\\\u0008C\u0001\t{\t\u0015AGO1\u0001\u0014\u0011\u0015QG\u000fq\u0001}!\u0015\u0001C.K?z!\t\u0001b\u0010B\u0003qi\n\u0007\u0011\u000fC\u0003ti\u0002\u0007Q\u0010C\u0004\u0002\u0004\u0001!\t!!\u0002\u0002\u000f\u0015t\u0017/^3vKV!\u0011qAA\u0007)\u0011\tI!a\u0004\u0011\tq\u0001\u00111\u0002\t\u0004!\u00055AA\u00029\u0002\u0002\t\u0007\u0011\u000fC\u0004t\u0003\u0003\u0001\r!a\u0003\t\u000f\u0005\r\u0001\u0001\"\u0001\u0002\u0014U!\u0011QCA\u000e)\u0011\t9\"!\u0008\u0011\tq\u0001\u0011\u0011\u0004\t\u0004!\u0005mAA\u00029\u0002\u0012\t\u0007\u0011\u000f\u0003\u0005\u0002 \u0005E\u0001\u0019AA\u0011\u0003\u0011IG/\u001a:\u0011\u000bq\t\u0019#!\u0007\n\u0007\u0005\u0015\"A\u0001\u0005Ji\u0016\u0014\u0018M\u00197f\u0011\u001d\tI\u0003\u0001C\u0001\u0003W\tq\u0001Z3rk\u0016,X-\u0006\u0002\u0002.A)Q#a\u000c\u0010S%\u0019\u0011\u0011\u0007\u0004\u0003\rQ+\u0008\u000f\\33\u0011\u001d\t)\u0004\u0001C\u0001\u0003o\tQ\u0002Z3rk\u0016,Xm\u00149uS>tWCAA\u001d!\u0015)\u00121HA\u0017\u0013\r\tiD\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\r\u0005\u0005\u0003\u0001\"\u0001[\u0003\u00151\'o\u001c8u\u0011\u001d\t)\u0005\u0001C!\u0003\u000f\n\u0001\u0002^8TiJLgn\u001a\u000b\u0003\u0003\u0013\u0002B!a\u0013\u0002R9\u0019Q#!\u0014\n\u0007\u0005=c!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003\'\n)F\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003\u001f2\u0001f\u0002\u0001\u0002Z\u0005}\u00131\r\t\u0004+\u0005m\u0013bAA/\r\t)B-\u001a9sK\u000e\u000cG/\u001a3J]\",\'/\u001b;b]\u000e,\u0017EAA1\u0003A#\u0006.\u001a\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I\u0016$\u0018-\u001b7tA=4\u0007%[7nkR\u000c\'\r\\3!cV,W/Z:![\u0006\\W\rI5oQ\u0016\u0014\u0018\u000e^5oO\u00022\'o\\7!i\",W\u000eI;oo&\u001cXML\u0011\u0003\u0003K\naA\r\u00182c9\u0002\u0004f\u0002\u0001\u0002j\u0005=\u0014\u0011\u000f\t\u0004+\u0005-\u0014bAA7\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\t-W\u001a_unU,C\u001f9\u0011Q\u000f\u0002\t\u0002\u0005]\u0014!B)vKV,\u0007c\u0001\u000f\u0002z\u00191\u0011A\u0001E\u0001\u0003w\u001aR!!\u001f\u0002~)\u0002B\u0001IA@K%\u0019\u0011\u0011Q\u0011\u0003\u0015M+\u0017OR1di>\u0014\u0018\u0010C\u0004;\u0003s\"\t!!\"\u0015\u0005\u0005]\u0004\u0002CAE\u0003s\"\u0019!a#\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\t\u00055\u00151T\u000b\u0003\u0003\u001f\u0003\u0002\u0002\t7\u0002\u0012\u0006e\u0015Q\u0014\t\u0005\u0003\'\u000b)*\u0004\u0002\u0002z%\u0019\u0011q\u0013\"\u0003\t\r{G\u000e\u001c\t\u0004!\u0005mEA\u0002\n\u0002\u0008\n\u00071\u0003\u0005\u0003\u001d\u0001\u0005e\u0005\u0002CAQ\u0003s\"\t!a)\u0002\u00159,wOQ;jY\u0012,\'/\u0006\u0003\u0002&\u0006UVCAAT!!\tI+a,\u00024\u0006]VBAAV\u0015\r\ti\u000bB\u0001\u0008[V$\u0018M\u00197f\u0013\u0011\t\t,a+\u0003\u000f\t+\u0018\u000e\u001c3feB\u0019\u0001#!.\u0005\rI\tyJ1\u0001\u0014!\u0011a\u0002!a-\t\u0011\u0005m\u0016\u0011\u0010C!\u0003{\u000bQ!Z7qif,B!a0\u0002FV\u0011\u0011\u0011\u0019\t\u00059\u0001\t\u0019\rE\u0002\u0011\u0003\u000b$aAEA]\u0005\u0004\u0019\u0002bB#\u0002z\u0011\u0005\u0013\u0011Z\u000b\u0005\u0003\u0017\u000c\t\u000e\u0006\u0003\u0002N\u0006M\u0007\u0003\u0002\u000f\u0001\u0003\u001f\u00042\u0001EAi\t\u0019\u0011\u0012q\u0019b\u0001\'!A\u0011Q[Ad\u0001\u0004\t9.\u0001\u0002ygB)Q#!7\u0002P&\u0019\u00111\u001c\u0004\u0003\u0015q\u0012X\r]3bi\u0016$gh\u0002\u0005\u0002`\u0006e\u0004\u0012BAq\u0003))U\u000e\u001d;z#V,W/\u001a\t\u0005\u0003\'\u000b\u0019O\u0002\u0005\u0002f\u0006e\u0004\u0012BAt\u0005))U\u000e\u001d;z#V,W/Z\n\u0005\u0003G\u000cI\u000fE\u0002\u001d\u0001QAqAOAr\t\u0003\ti\u000f\u0006\u0002\u0002b\"Q\u0011\u0011_Ar\u0003\u0003%I!a=\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0003k\u0004B!a>\u0003\u00025\u0011\u0011\u0011 \u0006\u0005\u0003w\u000ci0\u0001\u0003mC:<\'BAA\u0000\u0003\u0011Q\u0017M^1\n\t\t\r\u0011\u0011 \u0002\u0007\u001f\nTWm\u0019;\t\u0015\u0005E\u0018\u0011PA\u0001\n\u0013\t\u0019\u0010"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x69ca1c5a4856d45fL


# instance fields
.field private final in:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final out:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lscala/collection/immutable/Queue;->in:Lscala/collection/immutable/List;

    iput-object p2, p0, Lscala/collection/immutable/Queue;->out:Lscala/collection/immutable/List;

    .line 43
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->$init$(Lscala/collection/immutable/LinearSeq;)V

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/immutable/Queue;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0}, Lscala/collection/immutable/Queue$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/immutable/Queue<",
            "*>;TA;",
            "Lscala/collection/immutable/Queue<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0}, Lscala/collection/immutable/Queue$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Queue$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lscala/collection/immutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Queue<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Queue$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Queue$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Queue$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Queue$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Queue$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Queue$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Queue$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Queue$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Queue$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Queue$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Queue$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Queue$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Queue$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Queue$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public $colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Queue<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 98
    instance-of v0, p2, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue;->enqueue(Ljava/lang/Object;)Lscala/collection/immutable/Queue;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Queue<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 93
    instance-of v0, p2, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    if-eqz v0, :cond_0

    new-instance p2, Lscala/collection/immutable/Queue;

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    .line 63
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 65
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "index out of range"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Queue;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

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

    .line 42
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public dequeue()Lscala/Tuple2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;",
            "Lscala/collection/immutable/Queue<",
            "TA;>;>;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    .line 128
    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/Queue;

    sget-object v4, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    invoke-direct {v3, v4, v0}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    invoke-direct {v1, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_0
    instance-of v1, v0, Lscala/collection/immutable/$colon$colon;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/$colon$colon;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/Queue;

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v4

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    invoke-direct {v1, v2, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v1

    .line 130
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "dequeue on empty queue"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dequeueOption()Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TA;",
            "Lscala/collection/immutable/Queue<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->dequeue()Lscala/Tuple2;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public enqueue(Ljava/lang/Object;)Lscala/collection/immutable/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/Queue<",
            "TB;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lscala/collection/immutable/Queue;

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public enqueue(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/Iterable<",
            "TB;>;)",
            "Lscala/collection/immutable/Queue<",
            "TB;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lscala/collection/immutable/Queue;

    invoke-interface {p1}, Lscala/collection/immutable/Iterable;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List;->reverse_$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public front()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->head()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->hashCode(Lscala/collection/LinearSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->last()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "head on empty queue"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public in()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/immutable/Queue;->in:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1, v0}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 91
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->length()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public out()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/immutable/Queue;->out:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->parCombiner(Lscala/collection/immutable/Seq;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LinearSeq<",
            "TA;>;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->seq(Lscala/collection/immutable/LinearSeq;)Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->tail()Lscala/collection/immutable/Queue;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/immutable/Queue;

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->out()Lscala/collection/immutable/List;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lscala/collection/immutable/Queue;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->in()Lscala/collection/immutable/List;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Queue;-><init>(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)V

    :goto_0
    return-object v0

    .line 87
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "tail on empty queue"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->thisCollection()Lscala/collection/LinearSeq;

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

    .line 42
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 42
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 42
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 42
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Queue;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Queue("

    const-string v1, ", "

    const-string v2, ")"

    .line 150
    invoke-virtual {p0, v0, v1, v2}, Lscala/collection/immutable/Queue;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Queue;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/Queue;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Queue;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
