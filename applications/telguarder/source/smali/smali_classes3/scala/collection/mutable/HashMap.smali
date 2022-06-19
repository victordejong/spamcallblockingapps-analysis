.class public Lscala/collection/mutable/HashMap;
.super Lscala/collection/mutable/AbstractMap;
.source "HashMap.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap<",
        "TA;TB;>;",
        "Lscala/collection/mutable/HashTable<",
        "TA;",
        "Lscala/collection/mutable/DefaultEntry<",
        "TA;TB;>;>;",
        "Lscala/collection/CustomParallelizable<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Lscala/collection/parallel/mutable/ParHashMap<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tea\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQ6\u000b\u0007O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001Qc\u0001\u0006\u00129M9\u0001a\u0003\u0010\"K-J\u0004\u0003\u0002\u0007\u000e\u001fmi\u0011AA\u0005\u0003\u001d\t\u00111\"\u00112tiJ\u000c7\r^\'baB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0003!q!Q!\u0008\u0001C\u0002M\u0011\u0011A\u0011\t\u0005\u0019}y1$\u0003\u0002!\u0005\t\u0019Q*\u00199\u0011\u000b1\u0011sb\u0007\u0013\n\u0005\r\u0012!aB\'ba2K7.\u001a\t\u0005\u0019\u0001y1\u0004\u0005\u0003\rM=A\u0013BA\u0014\u0003\u0005%A\u0015m\u001d5UC\ndW\r\u0005\u0003\rS=Y\u0012B\u0001\u0016\u0003\u00051!UMZ1vYR,e\u000e\u001e:z!\u0011aSf\u000c\u001a\u000e\u0003\u0011I!A\u000c\u0003\u0003)\r+8\u000f^8n!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\u0011)\u0002gD\u000e\n\u0005E2!A\u0002+va2,\'\u0007\u0005\u00034o=YR\"\u0001\u001b\u000b\u0005\r)$B\u0001\u001c\u0005\u0003!\u0001\u0018M]1mY\u0016d\u0017B\u0001\u001d5\u0005)\u0001\u0016M\u001d%bg\"l\u0015\r\u001d\t\u0003+iJ!a\u000f\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u0011u\u0002!\u0011!Q\u0001\ny\n\u0001bY8oi\u0016tGo\u001d\t\u0005\u007f\t{\u0001F\u0004\u0002\r\u0001&\u0011\u0011IA\u0001\n\u0011\u0006\u001c\u0008\u000eV1cY\u0016L!a\u0011#\u0003\u0011\r{g\u000e^3oiNT!!\u0011\u0002\t\r\u0019\u0003A\u0011\u0001\u0003H\u0003\u0019a\u0014N\\5u}Q\u0011A\u0005\u0013\u0005\u0006{\u0015\u0003\rAP\u0003\u0005\u0015\u0002\u0001\u0001FA\u0003F]R\u0014\u0018\u0010C\u0003M\u0001\u0011\u0005S*A\u0003f[B$\u00180F\u0001%\u0011\u0015y\u0005\u0001\"\u0011Q\u0003\u0015\u0019G.Z1s)\u0005\t\u0006CA\u000bS\u0013\t\u0019fA\u0001\u0003V]&$\u0008\"B+\u0001\t\u00032\u0016\u0001B:ju\u0016,\u0012a\u0016\t\u0003+aK!!\u0017\u0004\u0003\u0007%sG\u000fC\u0003G\u0001\u0011\u00051\u000cF\u0001%\u0011\u0015i\u0006\u0001\"\u0011_\u0003\r\u0001\u0018M]\u000b\u0002e!)\u0001\r\u0001C!C\u0006A1m\u001c8uC&t7\u000f\u0006\u0002cKB\u0011QcY\u0005\u0003I\u001a\u0011qAQ8pY\u0016\u000cg\u000eC\u0003g?\u0002\u0007q\"A\u0002lKfDQ\u0001\u001b\u0001\u0005B%\u000cQ!\u00199qYf$\"a\u00076\t\u000b\u0019<\u0007\u0019A\u0008\t\u000b1\u0004A\u0011A7\u0002\u0007\u001d,G\u000f\u0006\u0002ocB\u0019Qc\\\u000e\n\u0005A4!AB(qi&|g\u000eC\u0003gW\u0002\u0007q\u0002C\u0003t\u0001\u0011\u0005C/A\u0002qkR$2A\\;w\u0011\u00151\'\u000f1\u0001\u0010\u0011\u00159(\u000f1\u0001\u001c\u0003\u00151\u0018\r\\;f\u0011\u0015I\u0008\u0001\"\u0011{\u0003\u0019)\u0008\u000fZ1uKR\u0019\u0011k\u001f?\t\u000b\u0019D\u0008\u0019A\u0008\t\u000b]D\u0008\u0019A\u000e\t\u000by\u0004A\u0011I@\u0002\rI,Wn\u001c<f)\rq\u0017\u0011\u0001\u0005\u0006Mv\u0004\ra\u0004\u0005\u0008\u0003\u000b\u0001A\u0011AA\u0004\u0003!!\u0003\u000f\\;tI\u0015\u000cH\u0003BA\u0005\u0003\u0017i\u0011\u0001\u0001\u0005\u0008\u0003\u001b\t\u0019\u00011\u00010\u0003\tYg\u000fC\u0004\u0002\u0012\u0001!\t!a\u0005\u0002\u0013\u0011j\u0017N\\;tI\u0015\u000cH\u0003BA\u0005\u0003+AaAZA\u0008\u0001\u0004y\u0001bBA\r\u0001\u0011\u0005\u00111D\u0001\tSR,\'/\u0019;peV\u0011\u0011Q\u0004\t\u0005Y\u0005}q&C\u0002\u0002\"\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0008\u0003K\u0001A\u0011IA\u0014\u0003\u001d1wN]3bG\",B!!\u000b\u00028Q\u0019\u0011+a\u000b\t\u0011\u00055\u00121\u0005a\u0001\u0003_\t\u0011A\u001a\t\u0007+\u0005Er&!\u000e\n\u0007\u0005MbAA\u0005Gk:\u001cG/[8ocA\u0019\u0001#a\u000e\u0005\u000f\u0005e\u00121\u0005b\u0001\'\t\t1\tC\u0004\u0002>\u0001!\t%a\u0010\u0002\r-,\u0017pU3u+\t\t\t\u0005\u0005\u0003-\u0003\u0007z\u0011bAA#\t\t\u00191+\u001a;\t\u000f\u0005%\u0003\u0001\"\u0011\u0002L\u00051a/\u00197vKN,\"!!\u0014\u0011\t1\nyeG\u0005\u0004\u0003#\"!\u0001C%uKJ\u000c\'\r\\3\t\u000f\u0005U\u0003\u0001\"\u0011\u0002X\u0005a1.Z=t\u0013R,\'/\u0019;peV\u0011\u0011\u0011\u000c\t\u0005Y\u0005}q\u0002C\u0004\u0002^\u0001!\t%a\u0018\u0002\u001dY\u000cG.^3t\u0013R,\'/\u0019;peV\u0011\u0011\u0011\r\t\u0005Y\u0005}1\u0004C\u0004\u0002f\u0001!\t!a\u001a\u0002\u0015U\u001cXmU5{K6\u000b\u0007\u000fF\u0002R\u0003SBq!a\u001b\u0002d\u0001\u0007!-A\u0001u\u0011\u001d\ty\u0007\u0001C\t\u0003c\nab\u0019:fCR,g*Z<F]R\u0014\u00180\u0006\u0003\u0002t\u0005uDCBA;\u0003o\nI\u0008E\u0002\u0002\n%CaAZA7\u0001\u0004y\u0001bB<\u0002n\u0001\u0007\u00111\u0010\t\u0004!\u0005uDaBA@\u0003[\u0012\ra\u0005\u0002\u0003\u0005FBq!a!\u0001\t\u0013\t))A\u0006xe&$Xm\u00142kK\u000e$HcA)\u0002\u0008\"A\u0011\u0011RAA\u0001\u0004\tY)A\u0002pkR\u0004B!!$\u0002\u00186\u0011\u0011q\u0012\u0006\u0005\u0003#\u000b\u0019*\u0001\u0002j_*\u0011\u0011QS\u0001\u0005U\u00064\u0018-\u0003\u0003\u0002\u001a\u0006=%AE(cU\u0016\u001cGoT;uaV$8\u000b\u001e:fC6Dq!!(\u0001\t\u0013\ty*\u0001\u0006sK\u0006$wJ\u00196fGR$2!UAQ\u0011!\t\u0019+a\'A\u0002\u0005\u0015\u0016AA5o!\u0011\ti)a*\n\t\u0005%\u0016q\u0012\u0002\u0012\u001f\nTWm\u0019;J]B,Ho\u0015;sK\u0006l\u0007F\u0002\u0001\u0002.^\u000c\u0019\u000cE\u0002\u0016\u0003_K1!!-\u0007\u0005A\u0019VM]5bYZ+\'o]5p]VKEIH\u0001\u0002\u000f\u001d\t9L\u0001E\u0001\u0003s\u000bq\u0001S1tQ6\u000b\u0007\u000fE\u0002\r\u0003w3a!\u0001\u0002\t\u0002\u0005u6#BA^\u0003\u007fK\u0004CBAa\u0003\u000f\u000cY-\u0004\u0002\u0002D*\u0019\u0011Q\u0019\u0003\u0002\u000f\u001d,g.\u001a:jG&!\u0011\u0011ZAb\u0005EiU\u000f^1cY\u0016l\u0015\r\u001d$bGR|\'/\u001f\t\u0003\u0019\u0001AqARA^\t\u0003\ty\r\u0006\u0002\u0002:\"A\u00111[A^\t\u0007\t).\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0004\u0002X\u0006=\u00181_\u000b\u0003\u00033\u0004\"\"!1\u0002\\\u0006}\u00171^A{\u0013\u0011\ti.a1\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t\u0005\u0005\u00181]\u0007\u0003\u0003wKA!!:\u0002h\n!1i\u001c7m\u0013\u0011\tI/a1\u0003\u001b\u001d+g.T1q\r\u0006\u001cGo\u001c:z!\u0019)\u0002\'!<\u0002rB\u0019\u0001#a<\u0005\rI\t\tN1\u0001\u0014!\r\u0001\u00121\u001f\u0003\u0007;\u0005E\'\u0019A\n\u0011\r1\u0001\u0011Q^Ay\u0011\u001da\u00151\u0018C\u0001\u0003s,b!a?\u0003\u0002\t\u0015QCAA\u007f!\u0019a\u0001!a@\u0003\u0004A\u0019\u0001C!\u0001\u0005\rI\t9P1\u0001\u0014!\r\u0001\"Q\u0001\u0003\u0007;\u0005](\u0019A\n\t\u0015\t%\u00111XA\u0001\n\u0013\u0011Y!A\u0006sK\u0006$\'+Z:pYZ,GC\u0001B\u0007!\u0011\u0011yA!\u0006\u000e\u0005\tE!\u0002\u0002B\n\u0003\'\u000bA\u0001\\1oO&!!q\u0003B\t\u0005\u0019y%M[3di\u0002"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private transient _loadFactor:I

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

    .line 56
    invoke-direct {p0, v0}, Lscala/collection/mutable/HashMap;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->$init$(Lscala/collection/mutable/HashTable;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->initWithContents(Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/HashMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/HashMap$;->MODULE$:Lscala/collection/mutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 143
    new-instance v0, Lscala/collection/mutable/HashMap$$anonfun$readObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/HashMap$$anonfun$readObject$1;-><init>(Lscala/collection/mutable/HashMap;Ljava/io/ObjectInputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/HashMap;->init(Ljava/io/ObjectInputStream;Lscala/Function0;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 136
    new-instance v0, Lscala/collection/mutable/HashMap$$anonfun$writeObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/HashMap$$anonfun$writeObject$1;-><init>(Lscala/collection/mutable/HashMap;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/HashMap;->serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/HashMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/HashMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 40
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 40
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/HashMap;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/DefaultEntry;->value_$eq(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public _loadFactor()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->_loadFactor:I

    return-void
.end method

.method public addEntry(Lscala/collection/mutable/HashEntry;)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->addEntry(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;)V

    return-void
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->default(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->clearTable()V

    return-void
.end method

.method public clearTable()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->clearTable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lscala/collection/mutable/DefaultEntry;

    invoke-direct {v0, p1, p2}, Lscala/collection/mutable/DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;

    move-result-object p1

    return-object p1
.end method

.method public elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->elemEquals(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$HashUtils$class;->elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->empty()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lscala/collection/mutable/HashMap$;->MODULE$:Lscala/collection/mutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap$;->empty()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->empty()Lscala/collection/mutable/HashMap;

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
            "TA;TB;>;>;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;TC;>;)V"
        }
    .end annotation

    .line 99
    new-instance v0, Lscala/collection/mutable/HashMap$$anonfun$foreach$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/HashMap$$anonfun$foreach$1;-><init>(Lscala/collection/mutable/HashMap;Lscala/Function1;)V

    invoke-virtual {p0, v0}, Lscala/collection/mutable/HashMap;->foreachEntry(Lscala/Function1;)V

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
            "TA;TB;>;TU;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->foreachEntry(Lscala/collection/mutable/HashTable;Lscala/Function1;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashTableContents()Lscala/collection/mutable/HashTable$Contents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->hashTableContents(Lscala/collection/mutable/HashTable;)Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->index(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public init(Ljava/io/ObjectInputStream;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function0<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->init(Lscala/collection/mutable/HashTable;Ljava/io/ObjectInputStream;Lscala/Function0;)V

    return-void
.end method

.method public initWithContents(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents<",
            "TA;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialSize(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->isSizeMapDefined(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->entriesIterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/HashMap$$anonfun$iterator$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/HashMap$$anonfun$iterator$1;-><init>(Lscala/collection/mutable/HashMap;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 102
    new-instance v0, Lscala/collection/mutable/HashMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/HashMap$$anon$1;-><init>(Lscala/collection/mutable/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lscala/collection/mutable/HashMap$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/mutable/HashMap$$anon$3;-><init>(Lscala/collection/mutable/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->par()Lscala/collection/parallel/mutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/mutable/ParHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->hashTableContents()Lscala/collection/mutable/HashTable$Contents;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/parallel/mutable/ParHashMap;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public printSizeMap()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->printSizeMap(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    if-nez p1, :cond_0

    .line 77
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2}, Lscala/collection/mutable/DefaultEntry;->value_$eq(Ljava/lang/Object;)V

    new-instance p1, Lscala/Some;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/DefaultEntry;

    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method

.method public removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->seedvalue:I

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutputStream;",
            "Lscala/Function1<",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->serializeTo(Lscala/collection/mutable/HashTable;Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->tableSize()I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapDisable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->sizeMapInit(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashMap;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashMap;->sizemap:[I

    return-void
.end method

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->tableSizeSeed(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->tableSize:I

    return-void
.end method

.method public table_$eq([Lscala/collection/mutable/HashEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry<",
            "TA;",
            "Lscala/collection/mutable/DefaultEntry<",
            "TA;TB;>;>;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public threshold()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->threshold:I

    return-void
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public useSizeMap(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->isSizeMapDefined()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->sizeMapInitAndRebuild()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->sizeMapDisable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public values()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TB;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lscala/collection/mutable/HashMap$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/mutable/HashMap$$anon$2;-><init>(Lscala/collection/mutable/HashMap;)V

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lscala/collection/mutable/HashMap$$anon$4;

    invoke-direct {v0, p0}, Lscala/collection/mutable/HashMap$$anon$4;-><init>(Lscala/collection/mutable/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
