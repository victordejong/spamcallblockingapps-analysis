.class public Lscala/collection/parallel/immutable/ParHashSet;
.super Ljava/lang/Object;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/collection/parallel/immutable/ParSet;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/immutable/ParHashSet$ParHashSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/immutable/ParSet<",
        "TT;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005=h!B\u0001\u0003\u0001-Y#A\u0003)be\"\u000b7\u000f[*fi*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\u000c\'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001D\u000c\u0014\r\u0001i\u0011\u0003I\u00142!\tqq\"D\u0001\t\u0013\t\u0001\u0002B\u0001\u0004B]f\u0014VM\u001a\t\u0004%M)R\"\u0001\u0002\n\u0005Q\u0011!A\u0002)beN+G\u000f\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!\u0001+\u0012\u0005ii\u0002C\u0001\u0008\u001c\u0013\ta\u0002BA\u0004O_RD\u0017N\\4\u0011\u00059q\u0012BA\u0010\t\u0005\r\te.\u001f\t\u0005C\u0011*b%D\u0001#\u0015\t\u0019c!A\u0004hK:,\'/[2\n\u0005\u0015\u0012#AE$f]\u0016\u0014\u0018n\u0019)beR+W\u000e\u001d7bi\u0016\u0004\"A\u0005\u0001\u0011\u000b!JSc\u000b\u0017\u000e\u0003\u0011I!A\u000b\u0003\u0003\u0015A\u000b\'oU3u\u0019&\\W\rE\u0002\u0013\u0001U\u00012!L\u0018\u0016\u001b\u0005q#BA\u0002\u0007\u0013\t\u0001dFA\u0004ICND7+\u001a;\u0011\u00059\u0011\u0014BA\u001a\t\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!)\u0004A!A!\u0002\u0013a\u0013\u0001\u0002;sS\u0016Daa\u000e\u0001\u0005\u0002\tA\u0014A\u0002\u001fj]&$h\u0008\u0006\u0002,s!)QG\u000ea\u0001Y!)q\u0007\u0001C\u0001wQ\t1\u0006C\u0003>\u0001\u0011\u0005c(A\u0005d_6\u0004\u0018M\\5p]V\tqHE\u0002A\u0005\u00163A!\u0011\u0001\u0001\u007f\taAH]3gS:,W.\u001a8u}A\u0019\u0011e\u0011\u0014\n\u0005\u0011\u0013#\u0001E$f]\u0016\u0014\u0018nY\"p[B\u000cg.[8o!\r\tcIJ\u0005\u0003\u000f\n\u00121cR3oKJL7\rU1s\u0007>l\u0007/\u00198j_:DQ!\u0013\u0001\u0005B)\u000bQ!Z7qif,\u0012a\u000b\u0005\u0006\u0019\u0002!\t!T\u0001\tgBd\u0017\u000e\u001e;feV\ta\nE\u0002)\u001fVI!\u0001\u0015\u0003\u0003!%#XM]1cY\u0016\u001c\u0006\u000f\\5ui\u0016\u0014\u0008\"\u0002*\u0001\t\u0003\u001a\u0016aA:fcV\tA\u0006C\u0003V\u0001\u0011\u0005a+\u0001\u0004%[&tWo\u001d\u000b\u0003W]CQ\u0001\u0017+A\u0002U\t\u0011!\u001a\u0005\u00065\u0002!\taW\u0001\u0006IAdWo\u001d\u000b\u0003WqCQ\u0001W-A\u0002UAQA\u0018\u0001\u0005\u0002}\u000b\u0001bY8oi\u0006Lgn\u001d\u000b\u0003A\u000e\u0004\"AD1\n\u0005\tD!a\u0002\"p_2,\u0017M\u001c\u0005\u00061v\u0003\r!\u0006\u0005\u0006K\u0002!\tEZ\u0001\u0005g&TX-F\u0001h!\tq\u0001.\u0003\u0002j\u0011\t\u0019\u0011J\u001c;\t\u000b-\u0004A\u0011\u000b7\u0002\u000bI,Wo]3\u0016\u00075\u0014X\u000fF\u0002oor\u0004B\u0001K8ri&\u0011\u0001\u000f\u0002\u0002\t\u0007>l\'-\u001b8feB\u0011aC\u001d\u0003\u0006g*\u0014\r!\u0007\u0002\u0002\'B\u0011a#\u001e\u0003\u0006m*\u0014\r!\u0007\u0002\u0005)\"\u000cG\u000fC\u0003yU\u0002\u0007\u00110\u0001\u0003pY\u0012\u001c\u0007c\u0001\u0008{]&\u00111\u0010\u0003\u0002\u0007\u001fB$\u0018n\u001c8\t\u000buT\u0007\u0019\u00018\u0002\t9,wo\u0019\u0004\u0006\u007f\u0002\u0001\u0011\u0011\u0001\u0002\u0013!\u0006\u0014\u0008*Y:i\'\u0016$\u0018\n^3sCR|\'oE\u0002\u007f\u001b9C!\"!\u0002\u007f\u0005\u0003\u0007I\u0011AA\u0004\u0003\u0019!(/\u001b;feV\u0011\u0011\u0011\u0002\t\u0006\u0003\u0017\t\t\"\u0006\u0008\u0004\u001d\u00055\u0011bAA\u0008\u0011\u00059\u0001/Y2lC\u001e,\u0017\u0002BA\n\u0003+\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0006\u0004\u0003\u001fA\u0001BCA\r}\n\u0005\r\u0011\"\u0001\u0002\u001c\u0005QAO]5uKJ|F%Z9\u0015\t\u0005u\u00111\u0005\t\u0004\u001d\u0005}\u0011bAA\u0011\u0011\t!QK\\5u\u0011)\t)#a\u0006\u0002\u0002\u0003\u0007\u0011\u0011B\u0001\u0004q\u0012\n\u0004BCA\u0015}\n\u0005\t\u0015)\u0003\u0002\n\u00059AO]5uKJ\u0004\u0003\"CA\u0017}\n\u0015\r\u0011\"\u0001g\u0003\t\u0019(\u0010C\u0005\u00022y\u0014\t\u0011)A\u0005O\u0006\u00191O\u001f\u0011\t\r]rH\u0011AA\u001b)\u0019\t9$a\u000f\u0002>A\u0019\u0011\u0011\u0008@\u000e\u0003\u0001A\u0001\"!\u0002\u00024\u0001\u0007\u0011\u0011\u0002\u0005\u0008\u0003[\t\u0019\u00041\u0001h\u0011!\t\tE a\u0001\n\u00031\u0017!A5\t\u0013\u0005\u0015c\u00101A\u0005\u0002\u0005\u001d\u0013!B5`I\u0015\u000cH\u0003BA\u000f\u0003\u0013B\u0011\"!\n\u0002D\u0005\u0005\t\u0019A4\t\u000f\u00055c\u0010)Q\u0005O\u0006\u0011\u0011\u000e\t\u0005\u0007\u0003#rH\u0011A\'\u0002\u0007\u0011,\u0008\u000fC\u0004\u0002Vy$I!a\u0016\u0002\u001f\u0011,\u0008O\u0012:p[&#XM]1u_J$B!a\u000e\u0002Z!A\u00111LA*\u0001\u0004\tI!\u0001\u0002ji\"9\u0011q\u000c@\u0005\u0002\u0005\u0005\u0014!B:qY&$XCAA2!\u0015\tY!!\u001aO\u0013\u0011\t9\'!\u0006\u0003\u0007M+\u0017\u000fC\u0004\u0002ly$\t!!\u001c\u0002\t9,\u0007\u0010\u001e\u000b\u0002+!9\u0011\u0011\u000f@\u0005\u0002\u0005M\u0014a\u00025bg:+\u0007\u0010^\u000b\u0002A\"1\u0011q\u000f@\u0005\u0002\u0019\u000c\u0011B]3nC&t\u0017N\\4)\u000f\u0001\tY(!!\u0002\u0004B\u0019a\"! \n\u0007\u0005}\u0004B\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\t\u0006)a/\u00197vKz\t\u0011aB\u0004\u0002\u0008\nA\t!!#\u0002\u0015A\u000b\'\u000fS1tQN+G\u000fE\u0002\u0013\u0003\u00173a!\u0001\u0002\t\u0002\u000555#BAF\u0003\u001f\u000b\u0004\u0003B\u0011\u0002\u0012\u001aJ1!a%#\u00055\u0001\u0016M]*fi\u001a\u000b7\r^8ss\"9q\'a#\u0005\u0002\u0005]ECAAE\u0011!\tY*a#\u0005\u0002\u0005u\u0015a\u00038fo\u000e{WNY5oKJ,B!a(\u0002&V\u0011\u0011\u0011\u0015\t\u0007Q=\u000c\u0019+a*\u0011\u0007Y\t)\u000b\u0002\u0004\u0019\u00033\u0013\r!\u0007\t\u0005%\u0001\t\u0019\u000b\u0003\u0005\u0002,\u0006-E1AAW\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0011\ty+!1\u0016\u0005\u0005E\u0006#C\u0011\u00024\u0006]\u0016qXAb\u0013\r\t)L\t\u0002\u000f\u0007\u0006t7i\\7cS:,gI]8n!\u0011\tI,a/\u000e\u0005\u0005-\u0015bAA_\u0007\n!1i\u001c7m!\r1\u0012\u0011\u0019\u0003\u00071\u0005%&\u0019A\r\u0011\tI\u0001\u0011q\u0018\u0005\t\u0003\u000f\u000cY\t\"\u0001\u0002J\u0006AaM]8n)JLW-\u0006\u0003\u0002L\u0006EG\u0003BAg\u0003\'\u0004BA\u0005\u0001\u0002PB\u0019a#!5\u0005\ra\t)M1\u0001\u001a\u0011!\t).!2A\u0002\u0005]\u0017!\u0001;\u0011\t5z\u0013q\u001a\u0005\u000b\u00037\u000cY)!A\u0005\n\u0005u\u0017a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"!a8\u0011\t\u0005\u0005\u00181^\u0007\u0003\u0003GTA!!:\u0002h\u0006!A.\u00198h\u0015\t\tI/\u0001\u0003kCZ\u000c\u0017\u0002BAw\u0003G\u0014aa\u00142kK\u000e$\u0008"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike$ScanLeaf$;"
        }
    .end annotation
.end field

.field private volatile ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike$ScanNode$;"
        }
    .end annotation
.end field

.field private volatile transient scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

.field private final trie:Lscala/collection/immutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/HashSet<",
            "TT;>;"
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

    .line 54
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

    invoke-direct {p0, v0}, Lscala/collection/parallel/immutable/ParHashSet;-><init>(Lscala/collection/immutable/HashSet;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/immutable/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/GenSetLike$class;->$init$(Lscala/collection/GenSetLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/generic/GenericSetTemplate$class;->$init$(Lscala/collection/generic/GenericSetTemplate;)V

    invoke-static {p0}, Lscala/collection/GenSet$class;->$init$(Lscala/collection/GenSet;)V

    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->$init$(Lscala/collection/generic/GenericParTemplate;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->$init$(Lscala/collection/parallel/ParIterableLike;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterable$class;->$init$(Lscala/collection/parallel/ParIterable;)V

    invoke-static {p0}, Lscala/collection/parallel/ParSetLike$class;->$init$(Lscala/collection/parallel/ParSetLike;)V

    invoke-static {p0}, Lscala/collection/parallel/ParSet$class;->$init$(Lscala/collection/parallel/ParSet;)V

    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->$init$(Lscala/collection/parallel/immutable/ParIterable;)V

    invoke-static {p0}, Lscala/collection/parallel/immutable/ParSet$class;->$init$(Lscala/collection/parallel/immutable/ParSet;)V

    return-void
.end method

.method private ScanLeaf$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanLeaf$;"
        }
    .end annotation

    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ScanNode$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanNode$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanNode$;"
        }
    .end annotation

    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanNode$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanNode$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanCombineFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanCombineFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "*>;TT;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/immutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/immutable/ParHashSet$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParHashSet$;->canBuildFrom()Lscala/collection/generic/CanCombineFrom;

    move-result-object v0

    return-object v0
.end method

.method public static fromTrie(Lscala/collection/immutable/HashSet;)Lscala/collection/parallel/immutable/ParHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashSet<",
            "TT;>;)",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/immutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/immutable/ParHashSet$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/immutable/ParHashSet$;->fromTrie(Lscala/collection/immutable/HashSet;)Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object p0

    return-object p0
.end method

.method public static setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/immutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/immutable/ParHashSet$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParHashSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public $amp(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$amp(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $amp$tilde(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$amp$tilde(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $bar(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->$bar(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TT;TS;TS;>;)TS;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$colon$bslash(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TS;TT;TS;>;)TS;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$div$colon(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lscala/collection/parallel/immutable/ParHashSet;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/parallel/immutable/ParHashSet;-><init>(Lscala/collection/immutable/HashSet;)V

    return-object v0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->$plus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lscala/collection/parallel/immutable/ParHashSet;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/parallel/immutable/ParHashSet;-><init>(Lscala/collection/immutable/HashSet;)V

    return-object v0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TU;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$plus$plus(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ScanLeaf()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanLeaf$;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/immutable/ParHashSet;->ScanLeaf$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    :goto_0
    return-object v0
.end method

.method public ScanNode()Lscala/collection/parallel/ParIterableLike$ScanNode$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanNode$;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/immutable/ParHashSet;->ScanNode$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanNode$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :goto_0
    return-object v0
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TS;>;",
            "Lscala/Function2<",
            "TS;TT;TS;>;",
            "Lscala/Function2<",
            "TS;TS;TS;>;)TS;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->aggregate(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

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
            "TT;TA;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->andThen(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->apply(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TS;TThat;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->bf2seq(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    return-object p1
.end method

.method public brokenInvariants()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->brokenInvariants(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Elem:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Builder<",
            "TElem;TTo;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->builder2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->canEqual(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->collect(Lscala/collection/parallel/ParIterableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public combinerFactory()Lscala/collection/parallel/CombinerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->combinerFactory(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/CombinerFactory;

    move-result-object v0

    return-object v0
.end method

.method public combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->combinerFactory(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/immutable/ParHashSet;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lscala/collection/parallel/immutable/ParHashSet$;->MODULE$:Lscala/collection/parallel/immutable/ParHashSet$;

    return-object v0
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TT;>;)",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->count(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public debugBuffer()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugInformation(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debugclear()V
    .locals 0

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugclear(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public debuglog(Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->debuglog(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PI::",
            "Lscala/collection/generic/DelegatedSignalling;",
            ">(TPI;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->delegatedSignalling2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->diff(Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParSetLike$class;->diff(Lscala/collection/parallel/ParSetLike;Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->drop(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->drop(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->dropWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->empty()Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/ParSet;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->empty()Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/immutable/ParHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lscala/collection/parallel/immutable/ParHashSet;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParHashSet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/immutable/ParSet;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->empty()Lscala/collection/parallel/immutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 46
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->exists(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->filter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->filterNot(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->find(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->flatMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->flatten(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->fold(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TS;TT;TS;>;)TS;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->foldLeft(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TT;TS;TS;>;)TS;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->foldRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->forall(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z

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
            "TT;TU;>;)V"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->foreach(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->genericBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public genericBuilder()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TB;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TB;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->genericBuilder(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public genericCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TB;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TB;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->genericCombiner(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TK;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->groupBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->hasDefiniteSize(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/GenSetLike$class;->hashCode(Lscala/collection/GenSetLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->head(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->headOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->init()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->init(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public initTaskSupport()V
    .locals 0

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->initTaskSupport(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public intersect(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->intersect(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public isStrictSplitterCollection()Z
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isStrictSplitterCollection(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isTraversableAgain(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->iterator()Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/parallel/Splitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Splitter<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->iterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->last(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->lastOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->map(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TU;>;)TT;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->max(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/math/Ordering<",
            "TS;>;)TT;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->maxBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TU;>;)TT;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->min(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/math/Ordering<",
            "TS;>;)TT;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->minBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->newBuilder(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->newCombiner(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->nonEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->par()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->par(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->partition(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public printDebugBuffer()V
    .locals 0

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->printDebugBuffer(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->product(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduce(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TT;TU;>;)TU;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceLeft(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TT;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceLeftOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TU;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TU;TU;>;)TU;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceRight(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TU;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceRightOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public repr()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->repr(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public reuse(Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Option<",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 72
    instance-of v0, p1, Lscala/Some;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/Some;

    .line 73
    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lscala/collection/parallel/Combiner;

    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p2

    .line 72
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TU;>;)Z"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sameElements(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 46
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 46
    iput-object p1, p0, Lscala/collection/parallel/immutable/ParHashSet;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method

.method public scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scan(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanBlockSize()I
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->scanBlockSize(Lscala/collection/parallel/ParIterableLike;)I

    move-result v0

    return v0
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TS;TT;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scanLeft(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TT;TS;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scanRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->seq()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->seq()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->seq()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->seq()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sequentially(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 70
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParHashSet;->slice(II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->slice(Lscala/collection/parallel/ParIterableLike;II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->span(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->splitAt(Lscala/collection/parallel/ParIterableLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitter()Lscala/collection/parallel/IterableSplitter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 60
    new-instance v0, Lscala/collection/parallel/immutable/ParHashSet$ParHashSetIterator;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/immutable/ParHashSet;->trie:Lscala/collection/immutable/HashSet;

    invoke-virtual {v2}, Lscala/collection/immutable/HashSet;->size()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lscala/collection/parallel/immutable/ParHashSet$ParHashSetIterator;-><init>(Lscala/collection/parallel/immutable/ParHashSet;Lscala/collection/Iterator;I)V

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParSet$class;->stringPrefix(Lscala/collection/parallel/immutable/ParSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TT;>;)Z"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sum(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->tail()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tail(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->take(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->take(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->takeWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;",
            "Lscala/collection/immutable/HashSet<",
            "TT;>;>.StrictSplitterCheckTask<TR;TTp;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->task2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    return-object p1
.end method

.method public tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tasksupport(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->tasksupport_$eq(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/TaskSupport;)V

    return-void
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
            "TT;TCol;>;)TCol;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->to(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->toArray(Lscala/collection/parallel/ParIterableLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TU;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toIndexedSeq(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->toIterable()Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->toIterable()Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/parallel/immutable/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->toIterable(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toIterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toList(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "TT;",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->toMap(Lscala/collection/parallel/ParIterableLike;Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public toParCollection(Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->toParCollection(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toParMap(Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TK;TV;>;TThat;>;>;",
            "Lscala/Predef$$less$colon$less<",
            "TT;",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->toParMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->toSeq()Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->toSeq()Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/parallel/immutable/ParSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->toSeq(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashSet;->toSet()Lscala/collection/parallel/immutable/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/parallel/immutable/ParSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TU;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParSet$class;->toSet(Lscala/collection/parallel/immutable/ParSet;)Lscala/collection/parallel/immutable/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toStream(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenTraversable<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toTraversable(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toVector(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashSet;->union(Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;

    move-result-object p1

    return-object p1
.end method

.method public union(Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParSetLike$class;->union(Lscala/collection/parallel/ParSetLike;Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;

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
            "TT;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TA1;>;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TA2;>;>;"
        }
    .end annotation

    .line 46
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
            "TT;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TA1;>;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TA2;>;",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TA3;>;>;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/IterableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->view(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->withFilter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->wrap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->zip(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TS;>;TU;TS;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/ParIterableLike$class;->zipAll(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashSet<",
            "TT;>;",
            "Lscala/Tuple2<",
            "TU;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->zipWithIndex(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
