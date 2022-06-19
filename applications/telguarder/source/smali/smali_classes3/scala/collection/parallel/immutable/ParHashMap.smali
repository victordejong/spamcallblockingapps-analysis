.class public Lscala/collection/parallel/immutable/ParHashMap;
.super Ljava/lang/Object;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/collection/parallel/immutable/ParMap;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;
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
        "Lscala/collection/parallel/immutable/ParMap<",
        "TK;TV;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tud!B\u0001\u0003\u0001-q#A\u0003)be\"\u000b7\u000f[\'ba*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\u000c\'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b\u0007\u0001)2\u0001D\u000c\"\'\u0019\u0001Q\"E\u0012+iA\u0011abD\u0007\u0002\u0011%\u0011\u0001\u0003\u0003\u0002\u0007\u0003:L(+\u001a4\u0011\tI\u0019R\u0003I\u0007\u0002\u0005%\u0011AC\u0001\u0002\u0007!\u0006\u0014X*\u00199\u0011\u0005Y9B\u0002\u0001\u0003\u00061\u0001\u0011\r!\u0007\u0002\u0002\u0017F\u0011!$\u0008\t\u0003\u001dmI!\u0001\u0008\u0005\u0003\u000f9{G\u000f[5oOB\u0011aBH\u0005\u0003?!\u00111!\u00118z!\t1\u0012\u0005\u0002\u0004#\u0001\u0011\u0015\r!\u0007\u0002\u0002-B)AeJ\u000b!S5\tQE\u0003\u0002\'\r\u00059q-\u001a8fe&\u001c\u0017B\u0001\u0015&\u0005U9UM\\3sS\u000e\u0004\u0016M]\'baR+W\u000e\u001d7bi\u0016\u0004\"A\u0005\u0001\u0011\r-bS\u0003\t\u00180\u001b\u0005!\u0011BA\u0017\u0005\u0005)\u0001\u0016M]\'ba2K7.\u001a\t\u0005%\u0001)\u0002\u0005\u0005\u00031eU\u0001S\"A\u0019\u000b\u0005\r1\u0011BA\u001a2\u0005\u001dA\u0015m\u001d5NCB\u0004\"AD\u001b\n\u0005YB!\u0001D*fe&\u000cG.\u001b>bE2,\u0007\u0002\u0003\u001d\u0001\u0005\u0003\u0005\u000b\u0011B\u0018\u0002\tQ\u0014\u0018.\u001a\u0005\u0007u\u0001!\tAA\u001e\u0002\rqJg.\u001b;?)\tqC\u0008C\u00039s\u0001\u0007q\u0006C\u0003;\u0001\u0011\u0005a\u0008F\u0001/\u0011\u0015\u0001\u0005\u0001\"\u0011B\u00031i\u0017\r]\"p[B\u000cg.[8o+\u0005\u0011\u0005c\u0001\u0013DS%\u0011A)\n\u0002\u0017\u000f\u0016tWM]5d!\u0006\u0014X*\u00199D_6\u0004\u0018M\\5p]\")a\t\u0001C!\u000f\u0006)Q-\u001c9usV\ta\u0006\u0003\u0004J\u0001\u0001&\tFS\u0001\u000c]\u0016<8i\\7cS:,\'/F\u0001L!\u0011\u0011B*\u0006\u0011\n\u00055\u0013!a\u0004%bg\"l\u0015\r]\"p[\nLg.\u001a:\t\u000b=\u0003A\u0011\u0001)\u0002\u0011M\u0004H.\u001b;uKJ,\u0012!\u0015\t\u0004WI#\u0016BA*\u0005\u0005AIE/\u001a:bE2,7\u000b\u001d7jiR,\'\u000f\u0005\u0003\u000f+V\u0001\u0013B\u0001,\t\u0005\u0019!V\u000f\u001d7fe!)\u0001\u000c\u0001C!3\u0006\u00191/Z9\u0016\u0003=BQa\u0017\u0001\u0005\u0002q\u000ba\u0001J7j]V\u001cHC\u0001\u0018^\u0011\u0015q&\u000c1\u0001\u0016\u0003\u0005Y\u0007\"\u00021\u0001\t\u0003\t\u0017!\u0002\u0013qYV\u001cXC\u00012f)\t\u0019\u0007\u000e\u0005\u0003\u0013\u0001U!\u0007C\u0001\u000cf\t\u00151wL1\u0001h\u0005\u0005)\u0016C\u0001\u0011\u001e\u0011\u0015Iw\u000c1\u0001k\u0003\tYg\u000f\u0005\u0003\u000f+V!\u0007\"\u00027\u0001\t\u0003i\u0017aA4fiR\u0011a.\u001d\t\u0004\u001d=\u0004\u0013B\u00019\t\u0005\u0019y\u0005\u000f^5p]\")al\u001ba\u0001+!)1\u000f\u0001C!i\u0006!1/\u001b>f+\u0005)\u0008C\u0001\u0008w\u0013\t9\u0008BA\u0002J]RDQ!\u001f\u0001\u0005Ri\u000cQA]3vg\u0016,Ra_A\u0001\u0003\u000f!R\u0001`A\u0006\u0003#\u0001RaK?\u0000\u0003\u000bI!A \u0003\u0003\u0011\r{WNY5oKJ\u00042AFA\u0001\t\u0019\t\u0019\u0001\u001fb\u00013\t\t1\u000bE\u0002\u0017\u0003\u000f!a!!\u0003y\u0005\u0004I\"\u0001\u0002+iCRDq!!\u0004y\u0001\u0004\ty!\u0001\u0003pY\u0012\u001c\u0007c\u0001\u0008py\"1\u00111\u0003=A\u0002q\u000cAA\\3xG\u001a1\u0011q\u0003\u0001\u0001\u00033\u0011!\u0003U1s\u0011\u0006\u001c\u0008.T1q\u0013R,\'/\u0019;peN!\u0011QC\u0007R\u0011-\ti\"!\u0006\u0003\u0002\u0004%\t!a\u0008\u0002\rQ\u0014\u0018\u000e^3s+\t\t\t\u0003\u0005\u0004\u0002$\u0005%\u0012q\u0006\u0008\u0004\u001d\u0005\u0015\u0012bAA\u0014\u0011\u00059\u0001/Y2lC\u001e,\u0017\u0002BA\u0016\u0003[\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0006\u0004\u0003OA\u0001#\u0002\u0008V+\u0005E\"f\u0001\u0011\u00024-\u0012\u0011Q\u0007\t\u0005\u0003o\t\t%\u0004\u0002\u0002:)!\u00111HA\u001f\u0003%)hn\u00195fG.,GMC\u0002\u0002@!\t!\"\u00198o_R\u000cG/[8o\u0013\u0011\t\u0019%!\u000f\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\rC\u0006\u0002H\u0005U!\u00111A\u0005\u0002\u0005%\u0013A\u0003;sSR,\'o\u0018\u0013fcR!\u00111JA)!\rq\u0011QJ\u0005\u0004\u0003\u001fB!\u0001B+oSRD!\"a\u0015\u0002F\u0005\u0005\t\u0019AA\u0011\u0003\rAH%\r\u0005\u000c\u0003/\n)B!A!B\u0013\t\t#A\u0004ue&$XM\u001d\u0011\t\u0015\u0005m\u0013Q\u0003BC\u0002\u0013\u0005A/\u0001\u0002tu\"Q\u0011qLA\u000b\u0005\u0003\u0005\u000b\u0011B;\u0002\u0007MT\u0008\u0005C\u0004;\u0003+!\t!a\u0019\u0015\r\u0005\u0015\u0014\u0011NA6!\u0011\t9\'!\u0006\u000e\u0003\u0001A\u0001\"!\u0008\u0002b\u0001\u0007\u0011\u0011\u0005\u0005\u0008\u00037\n\t\u00071\u0001v\u0011%\ty\'!\u0006A\u0002\u0013\u0005A/A\u0001j\u0011)\t\u0019(!\u0006A\u0002\u0013\u0005\u0011QO\u0001\u0006S~#S-\u001d\u000b\u0005\u0003\u0017\n9\u0008C\u0005\u0002T\u0005E\u0014\u0011!a\u0001k\"A\u00111PA\u000bA\u0003&Q/\u0001\u0002jA!9\u0011qPA\u000b\t\u0003\u0001\u0016a\u00013va\"A\u00111QA\u000b\t\u0013\t))A\u0008ekB4%o\\7Ji\u0016\u0014\u0018\r^8s)\u0011\t)\'a\"\t\u0011\u0005%\u0015\u0011\u0011a\u0001\u0003C\t!!\u001b;\t\u0011\u00055\u0015Q\u0003C\u0001\u0003\u001f\u000bQa\u001d9mSR,\"!!%\u0011\u000b\u0005\r\u00121S)\n\t\u0005U\u0015Q\u0006\u0002\u0004\'\u0016\u000c\u0008\u0002CAM\u0003+!\t!a\'\u0002\t9,\u0007\u0010\u001e\u000b\u0002)\"A\u0011qTA\u000b\t\u0003\t\t+A\u0004iCNtU\r\u001f;\u0016\u0005\u0005\r\u0006c\u0001\u0008\u0002&&\u0019\u0011q\u0015\u0005\u0003\u000f\t{w\u000e\\3b]\"9\u00111VA\u000b\t\u0003!\u0018!\u0003:f[\u0006Lg.\u001b8h\u0011!\ty+!\u0006\u0005B\u0005E\u0016\u0001\u0003;p\'R\u0014\u0018N\\4\u0015\u0005\u0005M\u0006\u0003BA[\u0003\u007fk!!a.\u000b\t\u0005e\u00161X\u0001\u0005Y\u0006twM\u0003\u0002\u0002>\u0006!!.\u0019<b\u0013\u0011\t\t-a.\u0003\rM#(/\u001b8h\u0011!\t)\r\u0001C\u0001\t\u0005\u001d\u0017A\u00049sS:$H)\u001a2vO&sgm\u001c\u000b\u0003\u0003\u0017Bs\u0001AAf\u0003#\u000c\u0019\u000eE\u0002\u000f\u0003\u001bL1!a4\t\u0005A\u0019VM]5bYZ+\'o]5p]VKE)A\u0003wC2,XMH\u0001\u0002\u000f\u001d\t9N\u0001E\u0001\u00033\u000c!\u0002U1s\u0011\u0006\u001c\u0008.T1q!\r\u0011\u00121\u001c\u0004\u0007\u0003\tA\t!!8\u0014\u000b\u0005m\u0017q\u001c\u001b\u0011\t\u0011\n\t/K\u0005\u0004\u0003G,#!\u0004)be6\u000b\u0007OR1di>\u0014\u0018\u0010C\u0004;\u00037$\t!a:\u0015\u0005\u0005e\u0007b\u0002$\u0002\\\u0012\u0005\u00111^\u000b\u0007\u0003[\u000c\u00190a>\u0016\u0005\u0005=\u0008C\u0002\n\u0001\u0003c\u000c)\u0010E\u0002\u0017\u0003g$a\u0001GAu\u0005\u0004I\u0002c\u0001\u000c\u0002x\u00121!%!;C\u0002eAq!SAn\t\u0003\tY0\u0006\u0004\u0002~\n\u0015!\u0011B\u000b\u0003\u0003\u007f\u0004baK?\u0003\u0002\t-\u0001C\u0002\u0008V\u0005\u0007\u00119\u0001E\u0002\u0017\u0005\u000b!a\u0001GA}\u0005\u0004I\u0002c\u0001\u000c\u0003\n\u00111!%!?C\u0002e\u0001bA\u0005\u0001\u0003\u0004\t\u001d\u0001\u0002\u0003B\u0008\u00037$\u0019A!\u0005\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\r\tM!1\u0006B\u0018+\t\u0011)\u0002E\u0005%\u0005/\u0011YBa\n\u00032%\u0019!\u0011D\u0013\u0003\u001d\r\u000bgnQ8nE&tWM\u0012:p[B!!Q\u0004B\u0010\u001b\t\tY.\u0003\u0003\u0003\"\t\r\"\u0001B\"pY2L1A!\n&\u000559UM\\\'ba\u001a\u000b7\r^8ssB1a\"\u0016B\u0015\u0005[\u00012A\u0006B\u0016\t\u0019A\"Q\u0002b\u00013A\u0019aCa\u000c\u0005\r\t\u0012iA1\u0001\u001a!\u0019\u0011\u0002A!\u000b\u0003.!A!QGAn\t\u0003\u00119$\u0001\u0005ge>lGK]5f+\u0019\u0011IDa\u0010\u0003DQ!!1\u0008B#!\u0019\u0011\u0002A!\u0010\u0003BA\u0019aCa\u0010\u0005\ra\u0011\u0019D1\u0001\u001a!\r1\"1\t\u0003\u0007E\tM\"\u0019A\r\t\u0011\t\u001d#1\u0007a\u0001\u0005\u0013\n\u0011\u0001\u001e\t\u0007aI\u0012iD!\u0011\t\u0015\t5\u00131\u001ca\u0001\n\u0003\u0011y%A\u0007u_R\u000cGnY8nE&tWm]\u000b\u0003\u0005#\u0002BAa\u0015\u0003b5\u0011!Q\u000b\u0006\u0005\u0005/\u0012I&\u0001\u0004bi>l\u0017n\u0019\u0006\u0005\u00057\u0012i&\u0001\u0006d_:\u001cWO\u001d:f]RTAAa\u0018\u0002<\u0006!Q\u000f^5m\u0013\u0011\u0011\u0019G!\u0016\u0003\u001b\u0005#x.\\5d\u0013:$XmZ3s\u0011)\u00119\'a7A\u0002\u0013\u0005!\u0011N\u0001\u0012i>$\u0018\r\\2p[\nLg.Z:`I\u0015\u000cH\u0003BA&\u0005WB!\"a\u0015\u0003f\u0005\u0005\t\u0019\u0001B)\u0011%\u0011y\'a7!B\u0013\u0011\t&\u0001\u0008u_R\u000cGnY8nE&tWm\u001d\u0011\t\u0015\tM\u00141\\A\u0001\n\u0013\u0011)(A\u0006sK\u0006$\'+Z:pYZ,GC\u0001B<!\u0011\t)L!\u001f\n\t\tm\u0014q\u0017\u0002\u0007\u001f\nTWm\u0019;"
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

.field private final trie:Lscala/collection/immutable/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/HashMap<",
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

    .line 51
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/immutable/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    .line 44
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

    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->$init$(Lscala/collection/parallel/immutable/ParIterable;)V

    invoke-static {p0}, Lscala/collection/parallel/immutable/ParMap$class;->$init$(Lscala/collection/parallel/immutable/ParMap;)V

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

    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

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

    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanNode$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanNode$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParHashMap$;->canBuildFrom()Lscala/collection/generic/CanCombineFrom;

    move-result-object v0

    return-object v0
.end method

.method public static fromTrie(Lscala/collection/immutable/HashMap;)Lscala/collection/parallel/immutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/immutable/ParHashMap$;->fromTrie(Lscala/collection/immutable/HashMap;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static totalcombines()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParHashMap$;->totalcombines()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public static totalcombines_$eq(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    sget-object v0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/immutable/ParHashMap$;->totalcombines_$eq(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
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

    .line 43
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

    .line 43
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$div$colon(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TK;TU;>;)",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object p1

    return-object p1
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
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

    .line 43
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/immutable/ParHashMap;->ScanLeaf$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

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

    .line 43
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/immutable/ParHashMap;->ScanNode$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanNode$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

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
            "TS;",
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/Function2<",
            "TS;TS;TS;>;)TS;"
        }
    .end annotation

    .line 43
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

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
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

    .line 43
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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->builder2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 43
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
            "Lscala/Tuple2<",
            "TK;TV;>;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
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

    .line 43
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

    .line 43
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
            "Lscala/collection/parallel/immutable/ParIterable;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->companion(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/generic/GenericCompanion;

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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugInformation(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debugclear()V
    .locals 0

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->delegatedSignalling2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->drop(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->drop(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->dropWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/ParMap;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->empty()Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/immutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParHashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/immutable/ParMap;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->empty()Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 43
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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->exists(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->filter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->filterKeys(Lscala/Function1;)Lscala/collection/parallel/ParMap;

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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->filterKeys(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
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

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->flatMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->foreach(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->genericBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TP;TQ;>;>;"
        }
    .end annotation

    .line 43
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

    .line 67
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/HashMap;->get(Ljava/lang/Object;)Lscala/Option;

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

    .line 43
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParMapLike$class;->getOrElse(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->groupBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->hasDefiniteSize(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/GenMapLike$class;->hashCode(Lscala/collection/GenMapLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .line 43
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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->headOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->init()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->init(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public initTaskSupport()V
    .locals 0

    .line 43
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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->isDefinedAt(Lscala/collection/parallel/ParMapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public isStrictSplitterCollection()Z
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isStrictSplitterCollection(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isTraversableAgain(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->iterator()Lscala/collection/parallel/Splitter;

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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->iterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->keySet()Lscala/collection/parallel/ParSet;

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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->keySet(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->keys()Lscala/collection/parallel/ParIterable;

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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->keys(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keysIterator()Lscala/collection/Iterator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->keysIterator()Lscala/collection/parallel/IterableSplitter;

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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->keysIterator(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 43
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

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lscala/collection/parallel/immutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/immutable/ParHashMap$;

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->mapValues(Lscala/Function1;)Lscala/collection/parallel/ParMap;

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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParMapLike$class;->mapValues(Lscala/collection/parallel/ParMapLike;Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->max(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->maxBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->min(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->minBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
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
            "Lscala/collection/parallel/immutable/ParIterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->newBuilder(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->newCombiner()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v0

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/immutable/HashMapCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$;->apply()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->nonEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->par()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->partition(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public printDebugBuffer()V
    .locals 0

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->printDebugBuffer(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public printDebugInfo()V
    .locals 4

    .line 122
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "Parallel hash trie"

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 123
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "Top level inner trie type: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    .line 125
    instance-of v1, v0, Lscala/collection/immutable/HashMap$HashMap1;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/immutable/HashMap$HashMap1;

    .line 126
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "single node type"

    invoke-virtual {v1, v2}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 127
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "key stored: "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 128
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "hash of key: "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->getHash()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 129
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "computed hash of "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lscala/collection/immutable/HashMap$HashMap1;->computeHashFor(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 130
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "trie.get(key): "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$HashMap1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lscala/collection/immutable/HashMap$HashMap1;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 132
    :cond_0
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "other kind of node"

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceRightOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public repr()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 43
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

    .line 71
    instance-of v0, p1, Lscala/Some;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/Some;

    .line 72
    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lscala/collection/parallel/Combiner;

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p2

    .line 71
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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sameElements(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 43
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 43
    iput-object p1, p0, Lscala/collection/parallel/immutable/ParHashMap;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scan(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanBlockSize()I
    .locals 1

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scanRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->seq()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->seq()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->seq()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->seq()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    return-object v0
.end method

.method public sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sequentially(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 69
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParHashMap;->slice(II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    invoke-virtual {v1}, Lscala/collection/immutable/HashMap;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/immutable/ParHashMap;->trie:Lscala/collection/immutable/HashMap;

    invoke-virtual {v2}, Lscala/collection/immutable/HashMap;->size()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;-><init>(Lscala/collection/parallel/immutable/ParHashMap;Lscala/collection/Iterator;I)V

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParMap$class;->stringPrefix(Lscala/collection/parallel/immutable/ParMap;)Ljava/lang/String;

    move-result-object v0

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

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sum(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->tail()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tail(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->take(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->take(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;>.StrictSplitterCheckTask<TR;TTp;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->task2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    return-object p1
.end method

.method public tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tasksupport(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toIndexedSeq(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->toIterable()Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->toIterable()Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/parallel/immutable/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParIterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toList(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TP;TQ;>;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TP;TQ;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/immutable/ParMap$class;->toMap(Lscala/collection/parallel/immutable/ParMap;Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

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

    .line 43
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

    .line 43
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->toParMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->toSeq()Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->toSeq()Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/parallel/immutable/ParSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->toSeq(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->toSet()Lscala/collection/parallel/immutable/ParSet;

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

    .line 43
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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toStream(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
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

    .line 43
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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toVector(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 43
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
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TA1;>;",
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TA2;>;>;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TA1;>;",
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TA2;>;",
            "Lscala/collection/parallel/immutable/ParIterable<",
            "TA3;>;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TK;TU;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/immutable/ParMap$class;->updated(Lscala/collection/parallel/immutable/ParMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->values()Lscala/collection/parallel/ParIterable;

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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParMapLike$class;->values(Lscala/collection/parallel/ParMapLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valuesIterator()Lscala/collection/Iterator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParHashMap;->valuesIterator()Lscala/collection/parallel/IterableSplitter;

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

    .line 43
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

    .line 43
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->view(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TK;TU;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/immutable/ParMap$class;->withDefault(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/immutable/ParMap$class;->withDefaultValue(Lscala/collection/parallel/immutable/ParMap;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0

    .line 43
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

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
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
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TU;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->zipWithIndex(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
