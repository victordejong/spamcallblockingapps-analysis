.class public Lscala/collection/mutable/Stack;
.super Lscala/collection/mutable/AbstractSeq;
.source "Stack.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/Stack$StackBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSeq<",
        "TA;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\rq!B\u0001\u0003\u0011\u0003I\u0011!B*uC\u000e\\\'BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001\u0001\"AC\u0006\u000e\u0003\t1Q\u0001\u0004\u0002\t\u00025\u0011Qa\u0015;bG.\u001c2a\u0003\u00085!\ry!\u0003F\u0007\u0002!)\u0011\u0011\u0003B\u0001\u0008O\u0016tWM]5d\u0013\t\u0019\u0002C\u0001\u0006TKF4\u0015m\u0019;pef\u0004\"AC\u000b\u0007\t1\u0011\u0001AF\u000b\u0003/u\u0019r!\u0006\r(U9\nD\u0007E\u0002\u000b3mI!A\u0007\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGR\u001cV-\u001d\t\u00039ua\u0001\u0001B\u0003\u001f+\t\u0007qDA\u0001B#\t\u0001C\u0005\u0005\u0002\"E5\ta!\u0003\u0002$\r\t9aj\u001c;iS:<\u0007CA\u0011&\u0013\t1cAA\u0002B]f\u00042A\u0003\u0015\u001c\u0013\tI#AA\u0002TKF\u0004BAC\u0016\u001c[%\u0011AF\u0001\u0002\u0008\'\u0016\u000cH*[6f!\rQQc\u0007\t\u0005\u001f=ZB#\u0003\u00021!\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB\u0019!BM\u0017\n\u0005M\u0012!!C\"m_:,\u0017M\u00197f!\t\tS\'\u0003\u00027\r\ta1+\u001a:jC2L\'0\u00192mK\"A\u0001(\u0006BA\u0002\u0013\u0005\u0011(A\u0003fY\u0016l7/F\u0001;!\rYdhG\u0007\u0002y)\u0011Q\u0008B\u0001\nS6lW\u000f^1cY\u0016L!a\u0010\u001f\u0003\t1K7\u000f\u001e\u0005\t\u0003V\u0011\t\u0019!C\u0001\u0005\u0006IQ\r\\3ng~#S-\u001d\u000b\u0003\u0007\u001a\u0003\"!\t#\n\u0005\u00153!\u0001B+oSRDqa\u0012!\u0002\u0002\u0003\u0007!(A\u0002yIEB\u0001\"S\u000b\u0003\u0002\u0003\u0006KAO\u0001\u0007K2,Wn\u001d\u0011\t\u000b-+B\u0011\u0002\'\u0002\rqJg.\u001b;?)\tiS\nC\u00039\u0015\u0002\u0007!\u0008C\u0003L+\u0011\u0005q\nF\u0001.\u0011\u0015\tV\u0003\"\u0011S\u0003%\u0019w.\u001c9b]&|g.F\u0001T\u001d\tQ\u0001\u0001C\u0003V+\u0011\u0005c+A\u0004jg\u0016k\u0007\u000f^=\u0016\u0003]\u0003\"!\t-\n\u0005e3!a\u0002\"p_2,\u0017M\u001c\u0005\u00067V!\t\u0005X\u0001\u0007Y\u0016tw\r\u001e5\u0016\u0003u\u0003\"!\t0\n\u0005}3!aA%oi\")\u0011-\u0006C!E\u0006)\u0011\r\u001d9msR\u00111d\u0019\u0005\u0006I\u0002\u0004\r!X\u0001\u0006S:$W\r\u001f\u0005\u0006MV!\taZ\u0001\u0007kB$\u0017\r^3\u0015\u0007\rC\'\u000eC\u0003jK\u0002\u0007Q,A\u0001o\u0011\u0015YW\r1\u0001\u001c\u0003\u001dqWm^3mK6DQ!\\\u000b\u0005\u00029\u000cA\u0001];tQR\u0011q\u000e]\u0007\u0002+!)\u0011\u000f\u001ca\u00017\u0005!Q\r\\3n\u0011\u0015iW\u0003\"\u0001t)\u0011yGO\u001e=\t\u000bU\u0014\u0008\u0019A\u000e\u0002\u000b\u0015dW-\\\u0019\t\u000b]\u0014\u0008\u0019A\u000e\u0002\u000b\u0015dW-\u001c\u001a\t\u000ba\u0012\u0008\u0019A=\u0011\u0007\u0005R8$\u0003\u0002|\r\tQAH]3qK\u0006$X\r\u001a \t\u000bu,B\u0011\u0001@\u0002\u000fA,8\u000f[!mYR\u0011qn \u0005\u0008\u0003\u0003a\u0008\u0019AA\u0002\u0003\tA8\u000fE\u0003\u0002\u0006\u0005\u001d1$D\u0001\u0005\u0013\r\tI\u0001\u0002\u0002\u0010)J\u000cg/\u001a:tC\ndWm\u00148dK\"9\u0011QB\u000b\u0005\u0002\u0005=\u0011a\u0001;paV\t1\u0004C\u0004\u0002\u0014U!\t!!\u0006\u0002\u0007A|\u0007\u000fF\u0001\u001c\u0011\u001d\tI\"\u0006C\u0001\u00037\tQa\u00197fCJ$\u0012a\u0011\u0005\u0008\u0003?)B\u0011IA\u0011\u0003!IG/\u001a:bi>\u0014XCAA\u0012!\u0015\t)!!\n\u001c\u0013\r\t9\u0003\u0002\u0002\t\u0013R,\'/\u0019;pe\"B\u0011QDA\u0016\u0003o\tY\u0004\u0005\u0003\u0002.\u0005MRBAA\u0018\u0015\r\t\tDB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002BA\u001b\u0003_\u0011\u0011\"\\5he\u0006$\u0018n\u001c8\"\u0005\u0005e\u0012a\t1ji\u0016\u0014\u0018\r^8sA\u0002\"(/\u0019<feN,7\u000fI5oA\u0019Kei\u0014\u0011pe\u0012,\'OL\u0011\u0003\u0003{\tQA\r\u00189]ABa!!\u0011\u0016\t\u0003J\u0014A\u0002;p\u0019&\u001cH\u000f\u000b\u0005\u0002@\u0005-\u0012QIA\u001eC\t\t9%A\u0011ai>d\u0015n\u001d;aAQ\u0014\u0018M^3sg\u0016\u001c\u0008%\u001b8!\r&3u\nI8sI\u0016\u0014h\u0006C\u0004\u0002LU!\t%!\u0014\u0002\u000f\u0019|\'/Z1dQV!\u0011qJA/)\r\u0019\u0015\u0011\u000b\u0005\t\u0003\'\nI\u00051\u0001\u0002V\u0005\ta\r\u0005\u0004\"\u0003/Z\u00121L\u0005\u0004\u000332!!\u0003$v]\u000e$\u0018n\u001c82!\ra\u0012Q\u000c\u0003\u0008\u0003?\nIE1\u0001 \u0005\u0005)\u0006\u0006CA%\u0003W\t\u0019\'a\u000f\"\u0005\u0005\u0015\u0014A\t1g_J,\u0017m\u00195aAQ\u0014\u0018M^3sg\u0016\u001c\u0008%\u001b8!\r&3u\nI8sI\u0016\u0014h\u0006\u0003\u0004\u0002jU!\teT\u0001\u0006G2|g.\u001a\u0005\u0007\u0017.!\t!!\u001c\u0015\u0003%1a!!\u001d\u000c\u0001\u0005M$\u0001D*uC\u000e\\\')^5mI\u0016\u0014X\u0003BA;\u0003\u000b\u001bb!a\u001c\u0002x\u0005u\u0004cA\u0011\u0002z%\u0019\u00111\u0010\u0004\u0003\r\u0005s\u0017PU3g!\u001dQ\u0011qPAB\u0003\u000fK1!!!\u0003\u0005\u001d\u0011U/\u001b7eKJ\u00042\u0001HAC\t\u0019q\u0012q\u000eb\u0001?A!!\"FAB\u0011\u001dY\u0015q\u000eC\u0001\u0003\u0017#\"!!$\u0011\r\u0005=\u0015qNAB\u001b\u0005Y\u0001BCAJ\u0003_\u0012\r\u0011\"\u0001\u0002\u0016\u0006)ANY;gMV\u0011\u0011q\u0013\t\u0006\u0015\u0005e\u00151Q\u0005\u0004\u00037\u0013!A\u0003\'jgR\u0014UO\u001a4fe\"I\u0011qTA8A\u0003%\u0011qS\u0001\u0007Y\n,hM\u001a\u0011\t\u0011\u0005\r\u0016q\u000eC\u0001\u0003K\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0005\u0003O\u000bI+\u0004\u0002\u0002p!9\u0011/!)A\u0002\u0005\r\u0005\u0002CA\r\u0003_\"\t!a\u0007\t\u0011\u0005=\u0016q\u000eC\u0001\u0003c\u000baA]3tk2$HCAAD\u0011\u001d\t)l\u0003C\u0002\u0003o\u000bAbY1o\u0005VLG\u000e\u001a$s_6,B!!/\u0002NV\u0011\u00111\u0018\t\n\u001f\u0005u\u0016\u0011YAf\u0003\u001fL1!a0\u0011\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\u0011\ty)a1\n\t\u0005\u0015\u0017q\u0019\u0002\u0005\u0007>dG.C\u0002\u0002JB\u0011\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\u0011\u0007q\ti\r\u0002\u0004\u001f\u0003g\u0013\ra\u0008\t\u0005\u0015U\tY\rC\u0004\u0002T.!\t!!6\u0002\u00159,wOQ;jY\u0012,\'/\u0006\u0003\u0002X\u0006uWCAAm!\u001dQ\u0011qPAn\u0003?\u00042\u0001HAo\t\u0019q\u0012\u0011\u001bb\u0001?A!!\"FAn\u0011%\t\u0019o\u0003b\u0001\n\u0003\t)/A\u0003f[B$\u00180\u0006\u0002\u0002hB\u0019!\"\u0006\u0011\t\u0011\u0005-8\u0002)A\u0005\u0003O\u000ca!Z7qif\u0004\u0003\"CAx\u0017\u0005\u0005I\u0011BAy\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005M\u0008\u0003BA{\u0003\u007fl!!a>\u000b\t\u0005e\u00181`\u0001\u0005Y\u0006twM\u0003\u0002\u0002~\u0006!!.\u0019<b\u0013\u0011\u0011\t!a>\u0003\r=\u0013\'.Z2u\u0001"
.end annotation


# instance fields
.field private elems:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, v0}, Lscala/collection/mutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lscala/collection/mutable/Stack;->elems:Lscala/collection/immutable/List;

    .line 58
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/mutable/Stack;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0}, Lscala/collection/mutable/Stack$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/mutable/Stack<",
            "*>;TA;",
            "Lscala/collection/mutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0}, Lscala/collection/mutable/Stack$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/Stack$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0}, Lscala/collection/mutable/Stack$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lscala/collection/mutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Stack<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0}, Lscala/collection/mutable/Stack$;->empty()Lscala/collection/mutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/Stack$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/Stack$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/Stack$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/Stack$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/Stack$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/Stack$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/Stack$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/Stack$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/Stack$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/Stack$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/Stack$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/Stack$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/Stack$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/Stack$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

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

    .line 86
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 149
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0, v0}, Lscala/collection/mutable/Stack;->elems_$eq(Lscala/collection/immutable/List;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->clone()Lscala/collection/mutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Lscala/collection/mutable/Stack;

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public bridge synthetic companion()Lscala/collection/generic/GenericCompanion;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->companion()Lscala/collection/mutable/Stack$;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/mutable/Stack$;
    .locals 1

    .line 67
    sget-object v0, Lscala/collection/mutable/Stack$;->MODULE$:Lscala/collection/mutable/Stack$;

    return-object v0
.end method

.method public elems()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lscala/collection/mutable/Stack;->elems:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lscala/collection/mutable/Stack;->elems:Lscala/collection/immutable/List;

    return-void
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

    .line 170
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->foreach(Lscala/collection/IterableLike;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

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

    .line 160
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 76
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->length()I

    move-result v0

    return v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    invoke-virtual {p0, v1}, Lscala/collection/mutable/Stack;->elems_$eq(Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->elems_$eq(Lscala/collection/immutable/List;)V

    return-object p0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/mutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/mutable/Stack;

    move-result-object p1

    invoke-virtual {p1, p3}, Lscala/collection/mutable/Stack;->pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Stack;

    move-result-object p1

    return-object p1
.end method

.method public pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lscala/collection/mutable/Stack$$anonfun$pushAll$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/Stack$$anonfun$pushAll$1;-><init>(Lscala/collection/mutable/Stack;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    return-object p0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->toIterable()Lscala/collection/Iterable;

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

    .line 167
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public top()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->take(I)Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    sget-object p2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {p2}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/List;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Stack;->elems_$eq(Lscala/collection/immutable/List;)V

    return-void

    .line 97
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

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/Stack;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/collection/mutable/Stack;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/Stack;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
