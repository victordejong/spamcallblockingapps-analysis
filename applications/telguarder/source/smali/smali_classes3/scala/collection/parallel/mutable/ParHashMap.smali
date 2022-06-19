.class public Lscala/collection/parallel/mutable/ParHashMap;
.super Ljava/lang/Object;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/collection/parallel/mutable/ParMap;
.implements Lscala/collection/parallel/mutable/ParHashTable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;
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
        "Lscala/collection/parallel/mutable/ParHashTable<",
        "TK;",
        "Lscala/collection/mutable/DefaultEntry<",
        "TK;TV;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t=e!B\u0001\u0003\u0001-i#A\u0003)be\"\u000b7\u000f[\'ba*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0005qCJ\u000cG\u000e\\3m\u0015\t9\u0001\"\u0001\u0006d_2dWm\u0019;j_:T\u0011!C\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\raq#I\n\u0008\u00015\t2EK\u001a:!\tqq\"D\u0001\t\u0013\t\u0001\u0002B\u0001\u0004B]f\u0014VM\u001a\t\u0005%M)\u0002%D\u0001\u0003\u0013\t!\"A\u0001\u0004QCJl\u0015\r\u001d\t\u0003-]a\u0001\u0001B\u0003\u0019\u0001\t\u0007\u0011DA\u0001L#\tQR\u0004\u0005\u0002\u000f7%\u0011A\u0004\u0003\u0002\u0008\u001d>$\u0008.\u001b8h!\tqa$\u0003\u0002 \u0011\t\u0019\u0011I\\=\u0011\u0005Y\tC!\u0002\u0012\u0001\u0005\u0004I\"!\u0001,\u0011\u000b\u0011:S\u0003I\u0015\u000e\u0003\u0015R!A\n\u0004\u0002\u000f\u001d,g.\u001a:jG&\u0011\u0001&\n\u0002\u0016\u000f\u0016tWM]5d!\u0006\u0014X*\u00199UK6\u0004H.\u0019;f!\t\u0011\u0002\u0001\u0005\u0004\u0013WU\u0001SFL\u0005\u0003Y\t\u0011!\u0002U1s\u001b\u0006\u0004H*[6f!\u0011\u0011\u0002!\u0006\u0011\u0011\t=\nT\u0003I\u0007\u0002a)\u00111AB\u0005\u0003eA\u0012q\u0001S1tQ6\u000b\u0007\u000f\u0005\u0003\u0013iU1\u0014BA\u001b\u0003\u00051\u0001\u0016M\u001d%bg\"$\u0016M\u00197f!\u0011ys\'\u0006\u0011\n\u0005a\u0002$\u0001\u0004#fM\u0006,H\u000e^#oiJL\u0008C\u0001\u0008;\u0013\tY\u0004B\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005>\u0001\t\u0005\t\u0015!\u0003?\u0003!\u0019wN\u001c;f]R\u001c\u0008\u0003B C+Yr!a\u000c!\n\u0005\u0005\u0003\u0014!\u0003%bg\"$\u0016M\u00197f\u0013\t\u0019EI\u0001\u0005D_:$XM\u001c;t\u0015\t\t\u0005\u0007\u0003\u0004G\u0001\u0011\u0005aaR\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00055B\u0005\"B\u001fF\u0001\u0004qT\u0001\u0002&\u0001\u0001Y\u0012Q!\u00128uefDQA\u0012\u0001\u0005\u00021#\u0012!\u000c\u0005\u0006\u001d\u0002!\teT\u0001\r[\u0006\u00048i\\7qC:LwN\\\u000b\u0002!B\u0019A%U\u0015\n\u0005I+#AF$f]\u0016\u0014\u0018n\u0019)be6\u000b\u0007oQ8na\u0006t\u0017n\u001c8\t\u000bQ\u0003A\u0011I+\u0002\u000b\u0015l\u0007\u000f^=\u0016\u00035Baa\u0016\u0001!\n#B\u0016a\u00038fo\u000e{WNY5oKJ,\u0012!\u0017\t\u0005%i+\u0002%\u0003\u0002\\\u0005\t\u0011\u0002+\u0019:ICNDW*\u00199D_6\u0014\u0017N\\3s\u0011\u0015i\u0006\u0001\"\u0011_\u0003\r\u0019X-]\u000b\u0002]!)\u0001\r\u0001C\u0001C\u0006A1\u000f\u001d7jiR,\'/F\u0001c!\t\u0019G-D\u0001\u0001\r\u0011)\u0007\u0001\u00014\u0003%A\u000b\'\u000fS1tQ6\u000b\u0007/\u0013;fe\u0006$xN]\n\u0003I\u001e\u0004Ba\u00195kE&\u0011\u0011\u000e\u000e\u0002\u000e\u000b:$(/_%uKJ\u000cGo\u001c:\u0011\t9YW\u0003I\u0005\u0003Y\"\u0011a\u0001V;qY\u0016\u0014\u0004\u0002\u00038e\u0005\u0003\u0005\u000b\u0011B8\u0002\u000bM$\u0018M\u001d;\u0011\u00059\u0001\u0018BA9\t\u0005\rIe\u000e\u001e\u0005\tg\u0012\u0014\t\u0011)A\u0005_\u0006AQO\u001c;jY&#\u0007\u0010\u0003\u0005vI\n\u0005\t\u0015!\u0003p\u0003%!x\u000e^1m\'&TX\r\u0003\u0005xI\n\u0005\t\u0015!\u00037\u0003\u0005)\u0007\"\u0002$e\t\u0003IH#\u00022{wrl\u0008\"\u00028y\u0001\u0004y\u0007\"B:y\u0001\u0004y\u0007\"B;y\u0001\u0004y\u0007\"B<y\u0001\u00041\u0004BB@e\t\u0003\t\t!\u0001\u0006f]R\u0014\u0018PM5uK6$2A[A\u0002\u0011\u0019\t)A a\u0001m\u0005)QM\u001c;ss\"9\u0011\u0011\u00023\u0005\u0002\u0005-\u0011a\u00038fo&#XM]1u_J$\u0012BYA\u0007\u0003#\t)\"!\u0007\t\u000f\u0005=\u0011q\u0001a\u0001_\u00069\u0011\u000e\u001a=Ge>l\u0007bBA\n\u0003\u000f\u0001\ra\\\u0001\tS\u0012DXK\u001c;jY\"9\u0011qCA\u0004\u0001\u0004y\u0017a\u0002;pi\u0006d7K\u001f\u0005\u0008\u00037\t9\u00011\u00017\u0003\t)7\u000fC\u0004\u0002 \u0001!\t%!\t\u0002\tML\'0Z\u000b\u0002_\"9\u0011Q\u0005\u0001\u0005B\u0005\u001d\u0012!B2mK\u0006\u0014HCAA\u0015!\rq\u00111F\u0005\u0004\u0003[A!\u0001B+oSRDq!!\r\u0001\t\u0003\t\u0019$A\u0002hKR$B!!\u000e\u0002<A!a\"a\u000e!\u0013\r\tI\u0004\u0003\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f\u0005u\u0012q\u0006a\u0001+\u0005\u00191.Z=\t\u000f\u0005\u0005\u0003\u0001\"\u0001\u0002D\u0005\u0019\u0001/\u001e;\u0015\r\u0005U\u0012QIA$\u0011\u001d\ti$a\u0010A\u0002UAq!!\u0013\u0002@\u0001\u0007\u0001%A\u0003wC2,X\rC\u0004\u0002N\u0001!\t!a\u0014\u0002\rU\u0004H-\u0019;f)\u0019\tI#!\u0015\u0002T!9\u0011QHA&\u0001\u0004)\u0002bBA%\u0003\u0017\u0002\r\u0001\t\u0005\u0008\u0003/\u0002A\u0011AA-\u0003\u0019\u0011X-\\8wKR!\u0011QGA.\u0011\u001d\ti$!\u0016A\u0002UAq!a\u0018\u0001\t\u0003\t\t\'\u0001\u0005%a2,8\u000fJ3r)\r\u0019\u00171\r\u0005\u0008\u0003K\ni\u00061\u0001k\u0003\tYg\u000fC\u0004\u0002j\u0001!\t!a\u001b\u0002\u0013\u0011j\u0017N\\;tI\u0015\u000cHcA2\u0002n!9\u0011QHA4\u0001\u0004)\u0002bBA9\u0001\u0011\u0005\u00131O\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0003k\u0002B!a\u001e\u0002\u00026\u0011\u0011\u0011\u0010\u0006\u0005\u0003w\ni(\u0001\u0003mC:<\'BAA@\u0003\u0011Q\u0017M^1\n\t\u0005\r\u0015\u0011\u0010\u0002\u0007\'R\u0014\u0018N\\4\t\u000f\u0005\u001d\u0005\u0001\"\u0005\u0002\n\u0006q1M]3bi\u0016tUm^#oiJLX\u0003BAF\u0003+#b!!$\u0002\u0010\u0006E\u0005CA2J\u0011\u001d\ti$!\"A\u0002UA\u0001\"!\u0013\u0002\u0006\u0002\u0007\u00111\u0013\t\u0004-\u0005UEaBAL\u0003\u000b\u0013\r!\u0007\u0002\u0003-FBq!a\'\u0001\t\u0013\ti*A\u0006xe&$Xm\u00142kK\u000e$H\u0003BA\u0015\u0003?C\u0001\"!)\u0002\u001a\u0002\u0007\u00111U\u0001\u0004_V$\u0008\u0003BAS\u0003Wk!!a*\u000b\t\u0005%\u0016QP\u0001\u0003S>LA!!,\u0002(\n\u0011rJ\u00196fGR|U\u000f\u001e9viN#(/Z1n\u0011\u001d\t\t\u000c\u0001C\u0005\u0003g\u000b!B]3bI>\u0013\'.Z2u)\u0011\tI#!.\t\u0011\u0005]\u0016q\u0016a\u0001\u0003s\u000b!!\u001b8\u0011\t\u0005\u0015\u00161X\u0005\u0005\u0003{\u000b9KA\tPE*,7\r^%oaV$8\u000b\u001e:fC6D\u0001\"!1\u0001\t\u0003\"\u00111Y\u0001\u0011EJ|7.\u001a8J]Z\u000c\'/[1oiN,\"!!2\u0011\r\u0005\u001d\u0017\u0011ZAg\u001b\u00051\u0011bAAf\r\t\u00191+Z9\u0011\t\u0005=\u0017Q\u001b\u0008\u0004\u001d\u0005E\u0017bAAj\u0011\u00051\u0001K]3eK\u001aLA!a!\u0002X*\u0019\u00111\u001b\u0005\t\u000f\u0005m\u0007\u0001\"\u0003\u0002^\u0006Y1\r[3dW\n+8m[3u)\u0011\ty.a;\u0011\r\u0005\u0005\u0018q]A;\u001b\t\t\u0019OC\u0002\u0002f\u001a\t\u0011\"[7nkR\u000c\'\r\\3\n\t\u0005%\u00181\u001d\u0002\u0005\u0019&\u001cH\u000fC\u0004\u0002n\u0006e\u0007\u0019A8\u0002\u0003%Dq!!=\u0001\t\u0013\t\u00190\u0001\u0006dQ\u0016\u001c7.\u00128uef$B!!>\u0003\u0002A1\u0011q_A\u007f\u0003\u001bt1ADA}\u0013\r\tY\u0010C\u0001\u0008a\u0006\u001c7.Y4f\u0013\u0011\tI/a@\u000b\u0007\u0005m\u0008\u0002C\u0004\u0002n\u0006=\u0008\u0019A8)\u000f\u0001\u0011)!!\u0013\u0003\u000cA\u0019aBa\u0002\n\u0007\t%\u0001B\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\tz\t\u0011aB\u0004\u0003\u0010\tA\tA!\u0005\u0002\u0015A\u000b\'\u000fS1tQ6\u000b\u0007\u000fE\u0002\u0013\u0005\'1a!\u0001\u0002\t\u0002\tU1#\u0002B\n\u0005/I\u0004\u0003\u0002\u0013\u0003\u001a%J1Aa\u0007&\u00055\u0001\u0016M]\'ba\u001a\u000b7\r^8ss\"9aIa\u0005\u0005\u0002\t}AC\u0001B\t\u0011)\u0011\u0019Ca\u0005A\u0002\u0013\u0005\u0011\u0011E\u0001\u0006SR,\'o\u001d\u0005\u000b\u0005O\u0011\u0019\u00021A\u0005\u0002\t%\u0012!C5uKJ\u001cx\u000cJ3r)\u0011\tICa\u000b\t\u0013\t5\"QEA\u0001\u0002\u0004y\u0017a\u0001=%c!A!\u0011\u0007B\nA\u0003&q.\u0001\u0004ji\u0016\u00148\u000f\t\u0005\u0008)\nMA\u0011\u0001B\u001b+\u0019\u00119D!\u0010\u0003BU\u0011!\u0011\u0008\t\u0007%\u0001\u0011YDa\u0010\u0011\u0007Y\u0011i\u0004\u0002\u0004\u0019\u0005g\u0011\r!\u0007\t\u0004-\t\u0005CA\u0002\u0012\u00034\t\u0007\u0011\u0004C\u0004X\u0005\'!\tA!\u0012\u0016\r\t\u001d#Q\u000bB-+\t\u0011I\u0005\u0005\u0005\u0003L\t5#\u0011\u000bB.\u001b\u0005!\u0011b\u0001B(\t\tA1i\\7cS:,\'\u000f\u0005\u0004\u000fW\nM#q\u000b\t\u0004-\tUCA\u0002\r\u0003D\t\u0007\u0011\u0004E\u0002\u0017\u00053\"aA\tB\"\u0005\u0004I\u0002C\u0002\n\u0001\u0005\'\u00129\u0006\u0003\u0005\u0003`\tMA1\u0001B1\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0019\u0011\u0019Ga\u001f\u0003\u0000U\u0011!Q\r\t\nI\t\u001d$1\u000eB<\u0005\u0003K1A!\u001b&\u00059\u0019\u0015M\\\"p[\nLg.\u001a$s_6\u0004BA!\u001c\u0003p5\u0011!1C\u0005\u0005\u0005c\u0012\u0019H\u0001\u0003D_2d\u0017b\u0001B;K\tiq)\u001a8NCB4\u0015m\u0019;pef\u0004bAD6\u0003z\tu\u0004c\u0001\u000c\u0003|\u00111\u0001D!\u0018C\u0002e\u00012A\u0006B@\t\u0019\u0011#Q\u000cb\u00013A1!\u0003\u0001B=\u0005{B!B!\"\u0003\u0014\u0005\u0005I\u0011\u0002BD\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\t%\u0005\u0003BA<\u0005\u0017KAA!$\u0002z\t1qJ\u00196fGR\u0004"
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

.field private transient _loadFactor:I

.field private volatile transient scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/HashEntry<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/HashEntry;",
            ">;"
        }
    .end annotation
.end field

.field private transient tableSize:I

.field private transient threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

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

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->$init$(Lscala/collection/mutable/HashTable;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParHashTable$class;->$init$(Lscala/collection/parallel/mutable/ParHashTable;)V

    .line 44
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->initWithContents(Lscala/collection/mutable/HashTable$Contents;)V

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
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

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
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanNode$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanNode$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/mutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMap$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMap$;->canBuildFrom()Lscala/collection/generic/CanCombineFrom;

    move-result-object v0

    return-object v0
.end method

.method private final check$1(Lscala/collection/mutable/HashEntry;I)Lscala/collection/immutable/List;
    .locals 2

    :goto_0
    if-nez p1, :cond_0

    .line 138
    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_1

    .line 139
    :cond_0
    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMap;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMap;->index(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/HashEntry;

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParHashMap;->elemHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " maps to "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParHashMap;->elemHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParHashMap;->index(I)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/HashEntry;

    invoke-direct {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap;->check$1(Lscala/collection/mutable/HashEntry;I)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p1, v0}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static iters()I
    .locals 1

    sget-object v0, Lscala/collection/parallel/mutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMap$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMap$;->iters()I

    move-result v0

    return v0
.end method

.method public static iters_$eq(I)V
    .locals 1

    sget-object v0, Lscala/collection/parallel/mutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMap$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/mutable/ParHashMap$;->iters_$eq(I)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 114
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1;-><init>(Lscala/collection/parallel/mutable/ParHashMap;Ljava/io/ObjectInputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/parallel/mutable/ParHashMap;->init(Ljava/io/ObjectInputStream;Lscala/Function0;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 107
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$writeObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$writeObject$1;-><init>(Lscala/collection/parallel/mutable/ParHashMap;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/parallel/mutable/ParHashMap;->serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParHashMap;

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

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMapLike;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParHashMap;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;

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

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParHashMap;

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

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/parallel/mutable/ParHashMap;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/DefaultEntry;->value_$eq(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMapLike;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParHashMap;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMap;->ScanLeaf$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

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
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMap;->ScanNode$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanNode$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :goto_0
    return-object v0
.end method

.method public _loadFactor()I
    .locals 1

    .line 36
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMap;->_loadFactor:I

    return-void
.end method

.method public addEntry(Lscala/collection/mutable/HashEntry;)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->addEntry(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;)V

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

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParHashTable$class;->alwaysInitSizeMap(Lscala/collection/parallel/mutable/ParHashTable;)Z

    move-result v0

    return v0
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 119
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->sizeMapBucketSize()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$2;

    invoke-direct {v1, p0}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$2;-><init>(Lscala/collection/parallel/mutable/ParHashMap;)V

    sget-object v3, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v3}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lscala/collection/immutable/Range;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IndexedSeq;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 122
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$3;

    invoke-direct {v2, p0}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$3;-><init>(Lscala/collection/parallel/mutable/ParHashMap;)V

    sget-object v3, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v3}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/Range;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/IndexedSeq;

    .line 124
    new-instance v2, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$brokenInvariants$1;

    invoke-direct {v2, p0}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$brokenInvariants$1;-><init>(Lscala/collection/parallel/mutable/ParHashMap;)V

    sget-object v3, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v3}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lscala/collection/immutable/IndexedSeq;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    new-instance v2, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$brokenInvariants$2;

    invoke-direct {v2, p0}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$brokenInvariants$2;-><init>(Lscala/collection/parallel/mutable/ParHashMap;)V

    sget-object v3, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v3}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/immutable/IndexedSeq;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenTraversableOnce;

    sget-object v2, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v2}, Lscala/collection/immutable/IndexedSeq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/TraversableLike;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

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

.method public calcSizeMapSize(I)I
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->canEqual(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->clearTable()V

    return-void
.end method

.method public clearTable()V
    .locals 0

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->clearTable(Lscala/collection/mutable/HashTable;)V

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
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

.method public createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            ">(TK;TV1;)",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lscala/collection/mutable/DefaultEntry;

    invoke-direct {v0, p1, p2}, Lscala/collection/mutable/DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->drop(I)Lscala/collection/parallel/ParIterable;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

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

.method public elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->elemEquals(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$HashUtils$class;->elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/ParMap;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->empty()Lscala/collection/parallel/mutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/mutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {v0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/mutable/ParMap;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->empty()Lscala/collection/parallel/mutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->filterKeys(Lscala/Function1;)Lscala/collection/parallel/ParMap;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

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

.method public findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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

.method public foreachEntry(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;TU;>;)V"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->foreachEntry(Lscala/collection/mutable/HashTable;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->genericBuilder()Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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

    .line 65
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    if-nez p1, :cond_0

    .line 66
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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

.method public hashTableContents()Lscala/collection/mutable/HashTable$Contents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->hashTableContents(Lscala/collection/mutable/HashTable;)Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    return-object v0
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

.method public final improve(II)I
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->index(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->init()Lscala/collection/parallel/ParIterable;

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

.method public init(Ljava/io/ObjectInputStream;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function0<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->init(Lscala/collection/mutable/HashTable;Ljava/io/ObjectInputStream;Lscala/Function0;)V

    return-void
.end method

.method public initTaskSupport()V
    .locals 0

    .line 36
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->initTaskSupport(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public initWithContents(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialSize(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
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

.method public isSizeMapDefined()Z
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->isSizeMapDefined(Lscala/collection/mutable/HashTable;)Z

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->iterator()Lscala/collection/parallel/Splitter;

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->keySet()Lscala/collection/parallel/ParSet;

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->keys()Lscala/collection/parallel/ParIterable;

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->keysIterator()Lscala/collection/parallel/IterableSplitter;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
            "Lscala/collection/parallel/mutable/ParHashMap;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lscala/collection/parallel/mutable/ParHashMap$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMap$;

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->mapValues(Lscala/Function1;)Lscala/collection/parallel/ParMap;

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

.method public bridge synthetic newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->newCombiner()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v0

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/mutable/ParHashMapCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v0

    return-object v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V

    return-void
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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->par()Lscala/collection/parallel/ParIterable;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParHashMap<",
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

.method public printSizeMap()V
    .locals 0

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->printSizeMap(Lscala/collection/mutable/HashTable;)V

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

    .line 71
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2}, Lscala/collection/mutable/DefaultEntry;->value_$eq(Ljava/lang/Object;)V

    new-instance p1, Lscala/Some;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
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

    .line 79
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->repr()Lscala/collection/parallel/ParIterable;

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
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMap;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method

.method public scala$collection$parallel$mutable$ParHashMap$$checkBucket(I)Lscala/collection/immutable/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->sizemap()[I

    move-result-object v0

    aget v0, v0, p1

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 130
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->sizeMapBucketSize()I

    move-result v2

    mul-int v2, v2, p1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->sizeMapBucketSize()I

    move-result v4

    mul-int p1, p1, v4

    invoke-virtual {v1, v2, p1}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    new-instance v4, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$1;

    invoke-direct {v4, p0}, Lscala/collection/parallel/mutable/ParHashMap$$anonfun$1;-><init>(Lscala/collection/parallel/mutable/ParHashMap;)V

    .line 130
    invoke-virtual {p1, v2, v4}, Lscala/collection/immutable/Range;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 133
    sget-object v2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v5, " elements, while sizemap showed "

    invoke-virtual {p1, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v2, p1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object p1

    goto :goto_0

    .line 134
    :cond_0
    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    :goto_0
    return-object p1
.end method

.method public scala$collection$parallel$mutable$ParHashMap$$checkEntry(I)Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->check$1(Lscala/collection/mutable/HashEntry;I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final scala$collection$parallel$mutable$ParHashMap$$count$1(Lscala/collection/mutable/HashEntry;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {p1}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/HashEntry;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->scala$collection$parallel$mutable$ParHashMap$$count$1(Lscala/collection/mutable/HashEntry;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scanRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public seedvalue()I
    .locals 1

    .line 36
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMap;->seedvalue:I

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->seq()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->seq()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->seq()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->seq()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lscala/collection/mutable/HashMap;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->hashTableContents()Lscala/collection/mutable/HashTable$Contents;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/HashMap;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->seq()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Map;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->seq()Lscala/collection/mutable/HashMap;

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

.method public serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutputStream;",
            "Lscala/Function1<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->serializeTo(Lscala/collection/mutable/HashTable;Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->tableSize()I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapDisable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->sizeMapInit(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 36
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMap;->sizemap:[I

    return-void
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap;->slice(II)Lscala/collection/parallel/ParIterable;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->splitter()Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public splitter()Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>.ParHashMapIterator;"
        }
    .end annotation

    .line 58
    new-instance v6, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->size()I

    move-result v4

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v5, v0

    check-cast v5, Lscala/collection/mutable/DefaultEntry;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParHashMap$ParHashMapIterator;-><init>(Lscala/collection/parallel/mutable/ParHashMap;IIILscala/collection/mutable/DefaultEntry;)V

    return-object v6
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ParHashMap"

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

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 36
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->tableSizeSeed(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMap;->tableSize:I

    return-void
.end method

.method public table_$eq([Lscala/collection/mutable/HashEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry<",
            "TK;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->tail()Lscala/collection/parallel/ParIterable;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->take(I)Lscala/collection/parallel/ParIterable;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;",
            "Lscala/collection/mutable/HashMap<",
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

.method public threshold()I
    .locals 1

    .line 36
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMap;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 36
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMap;->threshold:I

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->toIterable()Lscala/collection/parallel/mutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->toIterable()Lscala/collection/parallel/mutable/ParIterable;

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
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMap;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->toSeq()Lscala/collection/parallel/mutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->toSeq()Lscala/collection/parallel/mutable/ParSeq;

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->toSet()Lscala/collection/parallel/immutable/ParSet;

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

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 36
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParHashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->values()Lscala/collection/parallel/ParIterable;

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
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMap;->valuesIterator()Lscala/collection/parallel/IterableSplitter;

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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
            "Lscala/collection/parallel/mutable/ParHashMap<",
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
