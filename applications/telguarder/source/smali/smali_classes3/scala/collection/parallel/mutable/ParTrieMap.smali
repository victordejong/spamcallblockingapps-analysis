.class public final Lscala/collection/parallel/mutable/ParTrieMap;
.super Ljava/lang/Object;
.source "ParTrieMap.scala"

# interfaces
.implements Lscala/collection/parallel/mutable/ParMap;
.implements Lscala/collection/parallel/mutable/ParTrieMapCombiner;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/mutable/ParTrieMap$Size;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/mutable/ParMap<",
        "TK;TV;>;",
        "Lscala/collection/parallel/mutable/ParTrieMapCombiner<",
        "TK;TV;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t=a\u0001B\u0001\u0003\u0005-\u0011!\u0002U1s)JLW-T1q\u0015\t\u0019A!A\u0004nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u001dA\u0011AC2pY2,7\r^5p]*\t\u0011\"A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u000719\u0012eE\u0004\u0001\u001bE\u0019#\u0006N\u001c\u0011\u00059yQ\"\u0001\u0005\n\u0005AA!AB!osJ+g\r\u0005\u0003\u0013\'U\u0001S\"\u0001\u0002\n\u0005Q\u0011!A\u0002)be6\u000b\u0007\u000f\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!A&\u0012\u0005ii\u0002C\u0001\u0008\u001c\u0013\ta\u0002BA\u0004O_RD\u0017N\\4\u0011\u00059q\u0012BA\u0010\t\u0005\r\te.\u001f\t\u0003-\u0005\"QA\t\u0001C\u0002e\u0011\u0011A\u0016\t\u0006I\u001d*\u0002%K\u0007\u0002K)\u0011aEB\u0001\u0008O\u0016tWM]5d\u0013\tASEA\u000bHK:,\'/[2QCJl\u0015\r\u001d+f[Bd\u0017\r^3\u0011\u0005I\u0001\u0001C\u0002\n,+\u0001jc&\u0003\u0002-\u0005\tQ\u0001+\u0019:NCBd\u0015n[3\u0011\tI\u0001Q\u0003\t\t\u0005_I*\u0002%D\u00011\u0015\t\td!\u0001\u0006d_:\u001cWO\u001d:f]RL!a\r\u0019\u0003\u000fQ\u0013\u0018.Z\'baB!!#N\u000b!\u0013\t1$A\u0001\nQCJ$&/[3NCB\u001cu.\u001c2j]\u0016\u0014\u0008C\u0001\u00089\u0013\tI\u0004B\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005<\u0001\t\u0015\r\u0011\"\u0003=\u0003\u0015\u0019GO]5f+\u0005q\u0003\u0002\u0003 \u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0018\u0002\r\r$(/[3!\u0011\u0019\u0001\u0005\u0001\"\u0001\u0007\u0003\u00061A(\u001b8jiz\"\"!\u000c\"\t\u000bmz\u0004\u0019\u0001\u0018\t\u000b\u0001\u0003A\u0011\u0001#\u0015\u00035BQA\u0012\u0001\u0005B\u001d\u000bA\"\\1q\u0007>l\u0007/\u00198j_:,\u0012\u0001\u0013\t\u0004I%K\u0013B\u0001&&\u0005Y9UM\\3sS\u000e\u0004\u0016M]\'ba\u000e{W\u000e]1oS>t\u0007\"\u0002\'\u0001\t\u0003j\u0015!B3naRLX#A\u0017\t\r=\u0003\u0001\u0015\"\u0015Q\u0003-qWm^\"p[\nLg.\u001a:\u0016\u0003E\u0003BAU*V[5\tA!\u0003\u0002U\t\tA1i\\7cS:,\'\u000f\u0005\u0003\u000f-V\u0001\u0013BA,\t\u0005\u0019!V\u000f\u001d7fe!)\u0011\u000c\u0001C!y\u0005\u00191/Z9\t\u000bm\u0003A\u0011\u0001/\u0002\u0011M\u0004H.\u001b;uKJ,\u0012!\u0018\t\u0005%y+\u0002%\u0003\u0002`\u0005\t\u0011\u0002+\u0019:Ue&,W*\u00199Ta2LG\u000f^3s\u0011\u0015\t\u0007\u0001\"\u0011c\u0003\u0015\u0019G.Z1s)\u0005\u0019\u0007C\u0001\u0008e\u0013\t)\u0007B\u0001\u0003V]&$\u0008\"B4\u0001\t\u0003!\u0015A\u0002:fgVdG\u000fC\u0003j\u0001\u0011\u0005!.A\u0002hKR$\"a\u001b8\u0011\u00079a\u0007%\u0003\u0002n\u0011\t1q\n\u001d;j_:DQa\u001c5A\u0002U\t1a[3z\u0011\u0015\t\u0008\u0001\"\u0001s\u0003\r\u0001X\u000f\u001e\u000b\u0004WN$\u0008\"B8q\u0001\u0004)\u0002\"B;q\u0001\u0004\u0001\u0013!\u0002<bYV,\u0007\"B<\u0001\t\u0003A\u0018AB;qI\u0006$X\rF\u0002dsjDQa\u001c<A\u0002UAQ!\u001e<A\u0002\u0001BQ\u0001 \u0001\u0005\u0002u\u000caA]3n_Z,GCA6\u007f\u0011\u0015y7\u00101\u0001\u0016\u0011\u001d\t\t\u0001\u0001C\u0001\u0003\u0007\t\u0001\u0002\n9mkN$S-\u001d\u000b\u0005\u0003\u000b\t9!D\u0001\u0001\u0011\u0019\tIa a\u0001+\u0006\u00111N\u001e\u0005\u0008\u0003\u001b\u0001A\u0011AA\u0008\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002\u0006\u0005E\u0001BB8\u0002\u000c\u0001\u0007Q\u0003C\u0004\u0002\u0016\u0001!\t%a\u0006\u0002\tML\'0Z\u000b\u0003\u00033\u00012ADA\u000e\u0013\r\ti\u0002\u0003\u0002\u0004\u0013:$\u0008bBA\u0011\u0001\u0011\u0005\u00131E\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0003K\u0001B!a\n\u000225\u0011\u0011\u0011\u0006\u0006\u0005\u0003W\ti#\u0001\u0003mC:<\'BAA\u0018\u0003\u0011Q\u0017M^1\n\t\u0005M\u0012\u0011\u0006\u0002\u0007\'R\u0014\u0018N\\4\u0007\r\u0005]\u0002\u0001AA\u001d\u0005\u0011\u0019\u0016N_3\u0014\u000b\u0005UR\"a\u000f\u0011\u000fI\u000bi$!\u0007\u0002B%\u0019\u0011q\u0008\u0003\u0003\tQ\u000b7o\u001b\t\u0005\u0003\u000b\t)\u0004C\u0006\u0002F\u0005U\"\u0011!Q\u0001\n\u0005e\u0011AB8gMN,G\u000fC\u0006\u0002J\u0005U\"\u0011!Q\u0001\n\u0005e\u0011a\u00025po6\u000cg.\u001f\u0005\u000c\u0003\u001b\n)D!A!\u0002\u0013\ty%A\u0003beJ\u000c\u0017\u0010E\u0003\u000f\u0003#\n)&C\u0002\u0002T!\u0011Q!\u0011:sCf\u00042aLA,\u0013\r\tI\u0006\r\u0002\n\u0005\u0006\u001c\u0018n\u0019(pI\u0016Dq\u0001QA\u001b\t\u0003\ti\u0006\u0006\u0005\u0002B\u0005}\u0013\u0011MA2\u0011!\t)%a\u0017A\u0002\u0005e\u0001\u0002CA%\u00037\u0002\r!!\u0007\t\u0011\u00055\u00131\u000ca\u0001\u0003\u001fB\u0011bZA\u001b\u0001\u0004%\t!a\u0006\t\u0015\u0005%\u0014Q\u0007a\u0001\n\u0003\tY\'\u0001\u0006sKN,H\u000e^0%KF$2aYA7\u0011)\ty\'a\u001a\u0002\u0002\u0003\u0007\u0011\u0011D\u0001\u0004q\u0012\n\u0004\"CA:\u0003k\u0001\u000b\u0015BA\r\u0003\u001d\u0011Xm];mi\u0002B\u0001\"a\u001e\u00026\u0011\u0005\u0011\u0011P\u0001\u0005Y\u0016\u000cg\rF\u0002d\u0003wB\u0001\"! \u0002v\u0001\u0007\u0011qP\u0001\u0005aJ,g\u000f\u0005\u0003\u000fY\u0006e\u0001\u0002CAB\u0003k!\t!!\"\u0002\u000bM\u0004H.\u001b;\u0016\u0005\u0005\u001d\u0005CBAE\u0003\u0017\u000b\t%D\u0001\u0007\u0013\r\tiI\u0002\u0002\u0004\'\u0016\u000c\u0008\u0002CAI\u0003k!\t!a%\u0002%MDw.\u001e7e\'Bd\u0017\u000e\u001e$veRDWM]\u000b\u0003\u0003+\u00032ADAL\u0013\r\tI\n\u0003\u0002\u0008\u0005>|G.Z1o\u0011!\ti*!\u000e\u0005B\u0005}\u0015!B7fe\u001e,GcA2\u0002\"\"A\u00111UAN\u0001\u0004\t\t%\u0001\u0003uQ\u0006$xaBAT\u0005!\u0005\u0011\u0011V\u0001\u000b!\u0006\u0014HK]5f\u001b\u0006\u0004\u0008c\u0001\n\u0002,\u001a1\u0011A\u0001E\u0001\u0003[\u001bR!a+\u00020^\u0002B\u0001JAYS%\u0019\u00111W\u0013\u0003\u001bA\u000b\'/T1q\r\u0006\u001cGo\u001c:z\u0011\u001d\u0001\u00151\u0016C\u0001\u0003o#\"!!+\t\u000f1\u000bY\u000b\"\u0001\u0002<V1\u0011QXAb\u0003\u000f,\"!a0\u0011\rI\u0001\u0011\u0011YAc!\r1\u00121\u0019\u0003\u00071\u0005e&\u0019A\r\u0011\u0007Y\t9\r\u0002\u0004#\u0003s\u0013\r!\u0007\u0005\u0008\u001f\u0006-F\u0011AAf+\u0019\ti-!6\u0002ZV\u0011\u0011q\u001a\t\u0007%N\u000b\t.a7\u0011\r91\u00161[Al!\r1\u0012Q\u001b\u0003\u00071\u0005%\'\u0019A\r\u0011\u0007Y\tI\u000e\u0002\u0004#\u0003\u0013\u0014\r!\u0007\t\u0007%\u0001\t\u0019.a6\t\u0011\u0005}\u00171\u0016C\u0002\u0003C\u000cAbY1o\u0005VLG\u000e\u001a$s_6,b!a9\u0002|\u0006}XCAAs!%!\u0013q]Av\u0003o\u0014\t!C\u0002\u0002j\u0016\u0012abQ1o\u0007>l\'-\u001b8f\rJ|W\u000e\u0005\u0003\u0002n\u0006=XBAAV\u0013\u0011\t\t0a=\u0003\t\r{G\u000e\\\u0005\u0004\u0003k,#!D$f]6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\u000f-\u0006e\u0018Q \t\u0004-\u0005mHA\u0002\r\u0002^\n\u0007\u0011\u0004E\u0002\u0017\u0003\u007f$aAIAo\u0005\u0004I\u0002C\u0002\n\u0001\u0003s\u000ci\u0010\u0003\u0006\u0003\u0006\u0005-\u0016\u0011!C\u0005\u0005\u000f\t1B]3bIJ+7o\u001c7wKR\u0011!\u0011\u0002\t\u0005\u0003O\u0011Y!\u0003\u0003\u0003\u000e\u0005%\"AB(cU\u0016\u001cG\u000f"
.end annotation


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

.field private volatile transient _combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

.field private volatile transient scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

.field private final scala$collection$parallel$mutable$ParTrieMap$$ctrie:Lscala/collection/concurrent/TrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
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

    .line 43
    new-instance v0, Lscala/collection/concurrent/TrieMap;

    invoke-direct {v0}, Lscala/collection/concurrent/TrieMap;-><init>()V

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParTrieMap;-><init>(Lscala/collection/concurrent/TrieMap;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/concurrent/TrieMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie:Lscala/collection/concurrent/TrieMap;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/GenMapLike$class;->$init$(Lscala/collection/GenMapLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->$init$(Lscala/collection/generic/GenericParTemplate;)V

    invoke-static {p0}, Lscala/collection/generic/GenericParMapTemplate$class;->$init$(Lscala/collection/generic/GenericParMapTemplate;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->$init$(Lscala/collection/parallel/ParIterableLike;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterable$class;->$init$(Lscala/collection/parallel/ParIterable;)V

    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->$init$(Lscala/collection/parallel/ParMapLike;)V

    invoke-static {p0}, Lscala/collection/parallel/ParMap$class;->$init$(Lscala/collection/parallel/ParMap;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->$init$(Lscala/collection/parallel/mutable/ParIterable;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParMapLike$class;->$init$(Lscala/collection/parallel/mutable/ParMapLike;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParMap$class;->$init$(Lscala/collection/parallel/mutable/ParMap;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->$init$(Lscala/collection/parallel/Combiner;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParTrieMapCombiner$class;->$init$(Lscala/collection/parallel/mutable/ParTrieMapCombiner;)V

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

    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

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

    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanNode$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanNode$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanCombineFrom<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/mutable/ParTrieMap$;->MODULE$:Lscala/collection/parallel/mutable/ParTrieMap$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParTrieMap$;->canBuildFrom()Lscala/collection/generic/CanCombineFrom;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;TS;>;)TS;"
        }
    .end annotation

    .line 36
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
            "TS;",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;)TS;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$div$colon(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/ParMapLike$class;->$minus(Lscala/collection/parallel/mutable/ParMapLike;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;",
            "Lscala/collection/Seq<",
            "TK;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TK;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Shrinkable$class;->$minus$eq(Lscala/collection/generic/Shrinkable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMapLike;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/concurrent/TrieMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/concurrent/TrieMap;

    return-object p0
.end method

.method public $minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TK;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TK;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/generic/Shrinkable$class;->$minus$minus$eq(Lscala/collection/generic/Shrinkable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TK;TU;>;)",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/ParMapLike$class;->$plus(Lscala/collection/parallel/mutable/ParMapLike;Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 36
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 36
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMapLike;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/concurrent/TrieMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/concurrent/TrieMap;

    return-object p0
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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$plus$plus(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

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

    .line 36
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->ScanLeaf$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

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

    .line 36
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->ScanNode$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanNode$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :goto_0
    return-object v0
.end method

.method public _combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 36
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public _combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParTrieMap;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-void
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
            "TS;",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/Function2<",
            "TS;TS;TS;>;)TS;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->aggregate(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->apply(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TS;TThat;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
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

    .line 36
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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->builder2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object p1

    return-object p1
.end method

.method public canBeShared()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParTrieMapCombiner$class;->canBeShared(Lscala/collection/parallel/mutable/ParTrieMapCombiner;)Z

    move-result v0

    return v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->canEqual(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/concurrent/TrieMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->clone(Lscala/collection/mutable/Cloneable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->collect(Lscala/collection/parallel/ParIterableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lscala/Tuple2<",
            "TK;TV;>;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMapCombiner$class;->combine(Lscala/collection/parallel/mutable/ParTrieMapCombiner;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

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

    .line 36
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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->combinerFactory(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p1

    return-object p1
.end method

.method public combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->combinerTaskSupport(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/Combiner$class;->combinerTaskSupport_$eq(Lscala/collection/parallel/Combiner;Lscala/collection/parallel/TaskSupport;)V

    return-void
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/mutable/ParIterable;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->companion(Lscala/collection/parallel/mutable/ParIterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->contains(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Z

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

    .line 36
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

    .line 36
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

    .line 36
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 36
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

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugInformation(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debugclear()V
    .locals 0

    .line 36
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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->debuglog(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->default(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->delegatedSignalling2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->drop(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->drop(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->dropWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/ParMap;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->empty()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/mutable/ParMap;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->empty()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/mutable/ParTrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lscala/collection/parallel/mutable/ParTrieMap$;->MODULE$:Lscala/collection/parallel/mutable/ParTrieMap$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParTrieMap$;->empty()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/GenMapLike$class;->equals(Lscala/collection/GenMapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->exists(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->filter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->filterKeys(Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public filterKeys(Lscala/Function1;)Lscala/collection/parallel/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->filterKeys(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->flatMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 36
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

    .line 36
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
            "TS;",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;)TS;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;TS;TS;>;)TS;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;TU;>;)V"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->foreach(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->genericBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->genericCombiner(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public genericMapCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TP;TQ;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TP;TQ;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/generic/GenericParMapTemplate$class;->genericMapCombiner(Lscala/collection/generic/GenericParMapTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/concurrent/TrieMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lscala/Function0<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParMapLike$class;->getOrElse(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

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
            "Lscala/Tuple2<",
            "TK;TV;>;TK;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->groupBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->hasDefiniteSize(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/GenMapLike$class;->hashCode(Lscala/collection/GenMapLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->headOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->init()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->init(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public initTaskSupport()V
    .locals 0

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->initTaskSupport(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public isDefinedAt(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->isDefinedAt(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public isStrictSplitterCollection()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isStrictSplitterCollection(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isTraversableAgain(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->iterator()Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/parallel/Splitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Splitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->iterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->keySet()Lscala/collection/parallel/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/parallel/ParSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParSet<",
            "TK;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->keySet(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->keys()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TK;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->keys(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keysIterator()Lscala/collection/Iterator;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->keysIterator()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/parallel/IterableSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TK;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->keysIterator(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->map(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mapCompanion()Lscala/collection/generic/GenericParMapCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericParMapCompanion<",
            "Lscala/collection/parallel/mutable/ParTrieMap;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lscala/collection/parallel/mutable/ParTrieMap$;->MODULE$:Lscala/collection/parallel/mutable/ParTrieMap$;

    return-object v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TK;TV;>;TNewTo;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->mapValues(Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public mapValues(Lscala/Function1;)Lscala/collection/parallel/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TS;>;)",
            "Lscala/collection/parallel/ParMap<",
            "TK;TS;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->mapValues(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->max(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->maxBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->min(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->minBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lscala/collection/parallel/mutable/ParTrieMap$;->MODULE$:Lscala/collection/parallel/mutable/ParTrieMap$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParTrieMap$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->nonEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->par()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->partition(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public printDebugBuffer()V
    .locals 0

    .line 36
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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->product(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/collection/concurrent/TrieMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

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

    .line 36
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
            "TU;",
            "Lscala/Tuple2<",
            "TK;TV;>;TU;>;)TU;"
        }
    .end annotation

    .line 36
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
            "TU;",
            "Lscala/Tuple2<",
            "TK;TV;>;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 36
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

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;TU;TU;>;)TU;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;TU;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceRightOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/concurrent/TrieMap;->remove(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public repr()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->repr(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->result()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/mutable/ParTrieMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public resultWithTaskSupport()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->resultWithTaskSupport(Lscala/collection/parallel/Combiner;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reuse(Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
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

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->reuse(Lscala/collection/parallel/ParIterableLike;Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sameElements(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 36
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method

.method public scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie:Lscala/collection/concurrent/TrieMap;

    return-object v0
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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scan(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanBlockSize()I
    .locals 1

    .line 36
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
            "TS;",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;TS;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scanRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/concurrent/TrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Map;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->seq()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sequentially(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 6

    .line 78
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/concurrent/TrieMap;->readRoot$default$1()Z

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/concurrent/TrieMap;->readRoot(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/concurrent/INode;->gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    .line 80
    instance-of v1, v0, Lscala/collection/concurrent/TNode;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/concurrent/TNode;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/concurrent/TNode;->cachedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 82
    :cond_0
    instance-of v1, v0, Lscala/collection/concurrent/LNode;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/concurrent/LNode;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/concurrent/LNode;->cachedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 83
    :cond_1
    instance-of v1, v0, Lscala/collection/concurrent/CNode;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/collection/concurrent/CNode;

    .line 84
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/mutable/ParTrieMap$Size;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lscala/collection/parallel/mutable/ParTrieMap$Size;-><init>(Lscala/collection/parallel/mutable/ParTrieMap;II[Lscala/collection/concurrent/BasicNode;)V

    invoke-interface {v1, v2}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/concurrent/CNode;->cachedSize(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    .line 80
    :cond_2
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public sizeHint(I)V
    .locals 0

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParTrieMap;->slice(II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->splitAt(Lscala/collection/parallel/ParIterableLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic splitter()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->splitter()Lscala/collection/parallel/mutable/ParTrieMapSplitter;

    move-result-object v0

    return-object v0
.end method

.method public splitter()Lscala/collection/parallel/mutable/ParTrieMapSplitter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParTrieMapSplitter<",
            "TK;TV;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lscala/collection/parallel/mutable/ParTrieMapSplitter;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/concurrent/TrieMap;->readOnlySnapshot()Lscala/collection/Map;

    move-result-object v1

    check-cast v1, Lscala/collection/concurrent/TrieMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lscala/collection/parallel/mutable/ParTrieMapSplitter;-><init>(ILscala/collection/concurrent/TrieMap;Z)V

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ParTrieMap"

    return-object v0
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

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sum(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->tail()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tail(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->take(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->take(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>.StrictSplitterCheckTask<TR;TTp;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->task2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    return-object p1
.end method

.method public tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tasksupport(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;TCol;>;)TCol;"
        }
    .end annotation

    .line 36
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

    .line 36
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

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toIndexedSeq(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->toIterable()Lscala/collection/parallel/mutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->toIterable()Lscala/collection/parallel/mutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/parallel/mutable/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->toIterable(Lscala/collection/parallel/mutable/ParIterable;)Lscala/collection/parallel/mutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toList(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 36
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

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->toParMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->toSeq()Lscala/collection/parallel/mutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->toSeq()Lscala/collection/parallel/mutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/parallel/mutable/ParSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParSeq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->toSeq(Lscala/collection/parallel/mutable/ParIterable;)Lscala/collection/parallel/mutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->toSet()Lscala/collection/parallel/immutable/ParSet;

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

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toSet(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/immutable/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toStream(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toVector(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TA1;>;",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TA2;>;>;"
        }
    .end annotation

    .line 36
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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TA1;>;",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TA2;>;",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "TA3;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/collection/concurrent/TrieMap;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParTrieMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParTrieMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TK;TU;)",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/mutable/ParMap$class;->updated(Lscala/collection/parallel/mutable/ParMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->values()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public values()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->values(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valuesIterator()Lscala/collection/Iterator;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap;->valuesIterator()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/parallel/IterableSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TV;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->valuesIterator(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public view()Lscala/collection/IterableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->view(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/ParMap$class;->withDefault(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/ParMap$class;->withDefaultValue(Lscala/collection/parallel/mutable/ParMap;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 36
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

    .line 36
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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
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
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TU;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->zipWithIndex(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
