.class public Lscala/collection/immutable/Stack;
.super Lscala/collection/AbstractSeq;
.source "Stack.scala"

# interfaces
.implements Lscala/collection/immutable/LinearSeq;
.implements Lscala/collection/LinearSeqOptimized;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/immutable/LinearSeq<",
        "TA;>;",
        "Lscala/collection/LinearSeqOptimized<",
        "TA;",
        "Lscala/collection/immutable/Stack<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005mu!B\u0001\u0003\u0011\u0003I\u0011!B*uC\u000e\\\'BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0003\r\u0005!\u0005QBA\u0003Ti\u0006\u001c7nE\u0002\u000c\u001dI\u00022a\u0004\n\u0015\u001b\u0005\u0001\"BA\t\u0005\u0003\u001d9WM\\3sS\u000eL!a\u0005\t\u0003\u0015M+\u0017OR1di>\u0014\u0018\u0010\u0005\u0002\u000b+\u0019!AB\u0001\u0001\u0017+\t9bd\u0005\u0004\u00161!ZcF\r\t\u00043iaR\"\u0001\u0003\n\u0005m!!aC!cgR\u0014\u0018m\u0019;TKF\u0004\"!\u0008\u0010\r\u0001\u00111q$\u0006CC\u0002\u0001\u0012\u0011!Q\t\u0003C\u0015\u0002\"AI\u0012\u000e\u0003\u0019I!\u0001\n\u0004\u0003\u000f9{G\u000f[5oOB\u0011!EJ\u0005\u0003O\u0019\u00111!\u00118z!\rQ\u0011\u0006H\u0005\u0003U\t\u0011\u0011\u0002T5oK\u0006\u00148+Z9\u0011\t=aC\u0004F\u0005\u0003[A\u0011!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004B!G\u0018\u001dc%\u0011\u0001\u0007\u0002\u0002\u0013\u0019&tW-\u0019:TKF|\u0005\u000f^5nSj,G\rE\u0002\u000b+q\u0001\"AI\u001a\n\u0005Q2!\u0001D*fe&\u000cG.\u001b>bE2,\u0007\u0002\u0003\u001c\u0016\u0005\u000b\u0007I\u0011C\u001c\u0002\u000b\u0015dW-\\:\u0016\u0003a\u00022AC\u001d\u001d\u0013\tQ$A\u0001\u0003MSN$\u0008\u0002\u0003\u001f\u0016\u0005\u0003\u0005\u000b\u0011\u0002\u001d\u0002\r\u0015dW-\\:!\u0011\u0015qT\u0003\"\u0005@\u0003\u0019a\u0014N\\5u}Q\u0011\u0011\u0007\u0011\u0005\u0006mu\u0002\r\u0001\u000f\u0005\u0006\u0005V!\teQ\u0001\nG>l\u0007/\u00198j_:,\u0012\u0001\u0012\t\u0004\u001f\u0015#\u0012B\u0001$\u0011\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u0003?+\u0011\u0005\u0001\nF\u00012\u0011\u0015QU\u0003\"\u0011L\u0003\u001dI7/R7qif,\u0012\u0001\u0014\t\u0003E5K!A\u0014\u0004\u0003\u000f\t{w\u000e\\3b]\")\u0001+\u0006C!#\u0006!\u0001.Z1e+\u0005a\u0002\"B*\u0016\t\u0003\"\u0016\u0001\u0002;bS2,\u0012!\r\u0005\u0006-V!\taV\u0001\u0005aV\u001c\u0008.\u0006\u0002Y7R\u0011\u0011L\u0018\t\u0004\u0015UQ\u0006CA\u000f\\\t\u0015aVK1\u0001^\u0005\u0005\u0011\u0015C\u0001\u000f&\u0011\u0015yV\u000b1\u0001[\u0003\u0011)G.Z7\t\u000bY+B\u0011A1\u0016\u0005\t,G\u0003B2gQ*\u00042AC\u000be!\tiR\rB\u0003]A\n\u0007Q\u000cC\u0003hA\u0002\u0007A-A\u0003fY\u0016l\u0017\u0007C\u0003jA\u0002\u0007A-A\u0003fY\u0016l\'\u0007C\u00037A\u0002\u00071\u000eE\u0002#Y\u0012L!!\u001c\u0004\u0003\u0015q\u0012X\r]3bi\u0016$g\u0008C\u0003p+\u0011\u0005\u0001/A\u0004qkND\u0017\t\u001c7\u0016\u0005E$HC\u0001:v!\rQQc\u001d\t\u0003;Q$Q\u0001\u00188C\u0002uCQA\u001e8A\u0002]\u000c!\u0001_:\u0011\u0007eA8/\u0003\u0002z\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003|+\u0011\u0005\u0011+A\u0002u_BDQ!`\u000b\u0005\u0002Q\u000b1\u0001]8q\u0011\u0019yX\u0003\"\u0001\u0002\u0002\u0005!\u0001o\u001c93+\t\t\u0019\u0001E\u0003#\u0003\u000ba\u0012\'C\u0002\u0002\u0008\u0019\u0011a\u0001V;qY\u0016\u0014\u0004BBA\u0006+\u0011\u0005C+A\u0004sKZ,\'o]3\t\u000f\u0005=Q\u0003\"\u0011\u0002\u0012\u0005A\u0011\u000e^3sCR|\'/\u0006\u0002\u0002\u0014A!\u0011$!\u0006\u001d\u0013\r\t9\u0002\u0002\u0002\t\u0013R,\'/\u0019;pe\"9\u00111D\u000b\u0005B\u0005u\u0011\u0001\u0003;p\'R\u0014\u0018N\\4\u0015\u0005\u0005}\u0001\u0003BA\u0011\u0003Oq1AIA\u0012\u0013\r\t)CB\u0001\u0007!J,G-\u001a4\n\t\u0005%\u00121\u0006\u0002\u0007\'R\u0014\u0018N\\4\u000b\u0007\u0005\u0015b\u0001K\u0004\u0016\u0003_\t)$!\u000f\u0011\u0007\t\n\t$C\u0002\u00024\u0019\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\t\t9$AA\u0018\'R\u000c7m\u001b\u0011jg\u0002\ng\u000eI5oK2,w-\u00198uA\u0005tG\r\t9pi\u0016tG/[1mYf\u0004\u0003o\\8sYfl\u0003/\u001a:g_Jl\u0017N\\4!oJ\u000c\u0007\u000f]3sA\u0005\u0014x.\u001e8eA1K7\u000f\u001e\u0018!AU\u001bX\r\t\'jgR\u0004\u0013N\\:uK\u0006$\'\u0008I:uC\u000e\\\u0007\u0005];tQ\u0002B\u0008EY3d_6,7\u000f\t=!ui\u0002C.[:uw\u0001\u001aH/Y2l]A|\u0007\u000fI5tA1L7\u000f\u001e\u0018uC&dg&\t\u0002\u0002<\u00051!GL\u00192]ABs!FA \u0003\u000b\n9\u0005E\u0002#\u0003\u0003J1!a\u0011\u0007\u0005A\u0019VM]5bYZ+\'o]5p]VKE)A\u0003wC2,XM\u0008\u0005\u001c[z\u000f;D\r~?\u0012\u0019q4\u0002\"\u0001\u0002LQ\t\u0011\u0002C\u0004\u0002P-!\u0019!!\u0015\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\t\u0005M\u0013QM\u000b\u0003\u0003+\u0002\u0012bDA,\u00037\n\u0019\'a\u001a\n\u0007\u0005e\u0003C\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\u0002^\u0005}S\"A\u0006\n\u0007\u0005\u0005TI\u0001\u0003D_2d\u0007cA\u000f\u0002f\u00111q$!\u0014C\u0002\u0001\u0002BAC\u000b\u0002d!9\u00111N\u0006\u0005\u0002\u00055\u0014A\u00038fo\n+\u0018\u000e\u001c3feV!\u0011qNA@+\t\t\t\u0008\u0005\u0005\u0002t\u0005e\u0014QPAA\u001b\t\t)HC\u0002\u0002x\u0011\tq!\\;uC\ndW-\u0003\u0003\u0002|\u0005U$a\u0002\"vS2$WM\u001d\t\u0004;\u0005}DAB\u0010\u0002j\t\u0007\u0001\u0005\u0005\u0003\u000b+\u0005u\u0004\"CAC\u0017\u0005\u0005I\u0011BAD\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005%\u0005\u0003BAF\u0003+k!!!$\u000b\t\u0005=\u0015\u0011S\u0001\u0005Y\u0006twM\u0003\u0002\u0002\u0014\u0006!!.\u0019<b\u0013\u0011\t9*!$\u0003\r=\u0013\'.Z2uQ\u001dY\u0011qFA\u001b\u0003s\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1b6ddea11b32fabeL


# instance fields
.field private final elems:Lscala/collection/immutable/List;
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

    .line 58
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, v0}, Lscala/collection/immutable/Stack;-><init>(Lscala/collection/immutable/List;)V

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

    .line 50
    iput-object p1, p0, Lscala/collection/immutable/Stack;->elems:Lscala/collection/immutable/List;

    .line 51
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->$init$(Lscala/collection/immutable/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->$init$(Lscala/collection/LinearSeqOptimized;)V

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/immutable/Stack;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stack$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

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
            "Lscala/collection/immutable/Stack<",
            "*>;TA;",
            "Lscala/collection/immutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stack$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Stack$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stack$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Stack$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Stack$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Stack$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stack$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stack$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stack$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Stack$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stack$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/Stack$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/Stack$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/Stack$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/Stack$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/Stack$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/Stack$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->apply(Lscala/collection/LinearSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Stack;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lscala/collection/immutable/Stack$;->MODULE$:Lscala/collection/immutable/Stack$;

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

    .line 50
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

    .line 50
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->drop(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->dropRight(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->dropRight(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
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

    .line 50
    iget-object v0, p0, Lscala/collection/immutable/Stack;->elems:Lscala/collection/immutable/List;

    return-object v0
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

    .line 50
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

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->find(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Option;

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

    .line 50
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

    .line 50
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

    .line 50
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

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->foreach(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 50
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

    .line 66
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

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

    .line 50
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 50
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

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

    .line 127
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->iterator()Lscala/collection/Iterator;

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

    .line 50
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->last(Lscala/collection/LinearSeqOptimized;)Ljava/lang/Object;

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

    .line 50
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->lastIndexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 50
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->length(Lscala/collection/LinearSeqOptimized;)I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->lengthCompare(Lscala/collection/LinearSeqOptimized;I)I

    move-result p1

    return p1
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

    .line 50
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->parCombiner(Lscala/collection/immutable/Seq;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public pop()Lscala/collection/immutable/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/immutable/Stack;

    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    invoke-direct {v0, v1}, Lscala/collection/immutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "pop of empty stack"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop2()Lscala/Tuple2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;",
            "Lscala/collection/immutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stack;

    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/List;

    invoke-direct {v2, v3}, Lscala/collection/immutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "pop of empty stack"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Ljava/lang/Object;)Lscala/collection/immutable/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/Stack<",
            "TB;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lscala/collection/immutable/Stack;

    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/immutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/immutable/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;TB;",
            "Lscala/collection/Seq<",
            "TB;>;)",
            "Lscala/collection/immutable/Stack<",
            "TB;>;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/immutable/Stack;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/immutable/Stack;->push(Ljava/lang/Object;)Lscala/collection/immutable/Stack;

    move-result-object p1

    invoke-virtual {p1, p3}, Lscala/collection/immutable/Stack;->pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Stack;

    move-result-object p1

    return-object p1
.end method

.method public pushAll(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TB;>;)",
            "Lscala/collection/immutable/Stack<",
            "TB;>;"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object p1

    new-instance v0, Lscala/collection/immutable/Stack$$anonfun$pushAll$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/Stack$$anonfun$pushAll$1;-><init>(Lscala/collection/immutable/Stack;)V

    invoke-interface {p1, p0, v0}, Lscala/collection/Iterator;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Stack;

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

    .line 50
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

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->reduceRight(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->reverse()Lscala/collection/immutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/immutable/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lscala/collection/immutable/Stack;

    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/Stack;-><init>(Lscala/collection/immutable/List;)V

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

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 50
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

    .line 50
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

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

    .line 50
    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->seq(Lscala/collection/immutable/LinearSeq;)Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stack;->slice(II)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 50
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
            "Lscala/collection/immutable/Stack<",
            "TA;>;",
            "Lscala/collection/immutable/Stack<",
            "TA;>;>;"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->span(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->tail()Lscala/collection/immutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->tail()Lscala/collection/immutable/Stack;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stack<",
            "TA;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lscala/collection/immutable/Stack;

    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    invoke-direct {v0, v1}, Lscala/collection/immutable/Stack;-><init>(Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->take(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->take(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->takeWhile(Lscala/Function1;)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->takeWhile(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->thisCollection()Lscala/collection/LinearSeq;

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

    .line 50
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 50
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 50
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 50
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stack;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->toSeq()Lscala/collection/immutable/Seq;

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

    .line 50
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 131
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    const-string v1, "Stack("

    const-string v2, ", "

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public top()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->elems()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "top of empty stack"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stack;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/Stack;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stack;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
