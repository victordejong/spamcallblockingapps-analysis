.class public Lscala/collection/mutable/HashSet;
.super Lscala/collection/mutable/AbstractSet;
.source "HashSet.scala"

# interfaces
.implements Lscala/collection/mutable/FlatHashTable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSet<",
        "TA;>;",
        "Lscala/collection/mutable/FlatHashTable<",
        "TA;>;",
        "Lscala/collection/CustomParallelizable<",
        "TA;",
        "Lscala/collection/parallel/mutable/ParHashSet<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\u001df\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQN+GO\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012\'!\u00011b\u0007\u0010&S1:\u0004c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\tY\u0011IY:ue\u0006\u001cGoU3u!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003\u0005\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\r9=I!!\u0008\u0002\u0003\u0007M+G\u000f\u0005\u0003 E=!S\"\u0001\u0011\u000b\u0005\u0005\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003G\u0001\u0012!cR3oKJL7mU3u)\u0016l\u0007\u000f\\1uKB\u0011A\u0002\u0001\t\u0005\u0019\u0019z\u0001&\u0003\u0002(\u0005\t91+\u001a;MS.,\u0007c\u0001\u0007\u0001\u001fA\u0019ABK\u0008\n\u0005-\u0012!!\u0004$mCRD\u0015m\u001d5UC\ndW\r\u0005\u0003.]=\u0001T\"\u0001\u0003\n\u0005=\"!\u0001F\"vgR|W\u000eU1sC2dW\r\\5{C\ndW\rE\u00022k=i\u0011A\r\u0006\u0003\u0007MR!\u0001\u000e\u0003\u0002\u0011A\u000c\'/\u00197mK2L!A\u000e\u001a\u0003\u0015A\u000b\'\u000fS1tQN+G\u000f\u0005\u0002\u0016q%\u0011\u0011H\u0002\u0002\r\'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\tw\u0001\u0011\t\u0011)A\u0005y\u0005A1m\u001c8uK:$8\u000fE\u0002>\u0001>q!\u0001\u0004 \n\u0005}\u0012\u0011!\u0004$mCRD\u0015m\u001d5UC\ndW-\u0003\u0002B\u0005\nA1i\u001c8uK:$8O\u0003\u0002@\u0005!1A\t\u0001C\u0001\t\u0015\u000ba\u0001P5oSRtDC\u0001\u0015G\u0011\u0015Y4\t1\u0001=\u0011\u0015!\u0005\u0001\"\u0001I)\u0005A\u0003\"\u0002&\u0001\t\u0003Z\u0015!C2p[B\u000cg.[8o+\u0005a\u0005cA\u0010NI%\u0011a\n\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DQ\u0001\u0015\u0001\u0005BE\u000bAa]5{KV\t!\u000b\u0005\u0002\u0016\'&\u0011AK\u0002\u0002\u0004\u0013:$\u0008\"\u0002,\u0001\t\u00039\u0016\u0001C2p]R\u000c\u0017N\\:\u0015\u0005a[\u0006CA\u000bZ\u0013\tQfAA\u0004C_>dW-\u00198\t\u000bq+\u0006\u0019A\u0008\u0002\t\u0015dW-\u001c\u0005\u0006=\u0002!\taX\u0001\tIAdWo\u001d\u0013fcR\u0011\u0001-Y\u0007\u0002\u0001!)A,\u0018a\u0001\u001f!)1\r\u0001C\u0001I\u0006IA%\\5okN$S-\u001d\u000b\u0003A\u0016DQ\u0001\u00182A\u0002=AQa\u001a\u0001\u0005B!\u000c1\u0001]1s+\u0005\u0001\u0004\"\u00026\u0001\t\u0003Z\u0017aA1eIR\u0011\u0001\u000c\u001c\u0005\u00069&\u0004\ra\u0004\u0005\u0006]\u0002!\te\\\u0001\u0007e\u0016lwN^3\u0015\u0005a\u0003\u0008\"\u0002/n\u0001\u0004y\u0001\"\u0002:\u0001\t\u0003\u001a\u0018!B2mK\u0006\u0014H#\u0001;\u0011\u0005U)\u0018B\u0001<\u0007\u0005\u0011)f.\u001b;\t\u000ba\u0004A\u0011I=\u0002\u0011%$XM]1u_J,\u0012A\u001f\t\u0004[m|\u0011B\u0001?\u0005\u0005!IE/\u001a:bi>\u0014\u0008\"\u0002@\u0001\t\u0003z\u0018a\u00024pe\u0016\u000c7\r[\u000b\u0005\u0003\u0003\ty\u0001F\u0002u\u0003\u0007Aq!!\u0002~\u0001\u0004\t9!A\u0001g!\u0019)\u0012\u0011B\u0008\u0002\u000e%\u0019\u00111\u0002\u0004\u0003\u0013\u0019+hn\u0019;j_:\u000c\u0004c\u0001\t\u0002\u0010\u00111\u0011\u0011C?C\u0002M\u0011\u0011!\u0016\u0005\u0007\u0003+\u0001A\u0011\t%\u0002\u000b\rdwN\\3\t\u000f\u0005e\u0001\u0001\"\u0003\u0002\u001c\u0005YqO]5uK>\u0013\'.Z2u)\r!\u0018Q\u0004\u0005\t\u0003?\t9\u00021\u0001\u0002\"\u0005\t1\u000f\u0005\u0003\u0002$\u00055RBAA\u0013\u0015\u0011\t9#!\u000b\u0002\u0005%|\'BAA\u0016\u0003\u0011Q\u0017M^1\n\t\u0005=\u0012Q\u0005\u0002\u0013\u001f\nTWm\u0019;PkR\u0004X\u000f^*ue\u0016\u000cW\u000eC\u0004\u00024\u0001!I!!\u000e\u0002\u0015I,\u0017\rZ(cU\u0016\u001cG\u000fF\u0002u\u0003oA\u0001\"!\u000f\u00022\u0001\u0007\u00111H\u0001\u0003S:\u0004B!a\t\u0002>%!\u0011qHA\u0013\u0005Ey%M[3di&s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\u0008\u0003\u0007\u0002A\u0011AA#\u0003))8/Z*ju\u0016l\u0015\r\u001d\u000b\u0004i\u0006\u001d\u0003bBA%\u0003\u0003\u0002\r\u0001W\u0001\u0002i\":\u0001!!\u0014\u0002T\u0005U\u0003cA\u000b\u0002P%\u0019\u0011\u0011\u000b\u0004\u0003!M+\'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g$A\u0001\u0008\u000f\u0005e#\u0001#\u0001\u0002\\\u00059\u0001*Y:i\'\u0016$\u0008c\u0001\u0007\u0002^\u00191\u0011A\u0001E\u0001\u0003?\u001aR!!\u0018\u0002b]\u0002BaHA2I%\u0019\u0011Q\r\u0011\u0003#5+H/\u00192mKN+GOR1di>\u0014\u0018\u0010C\u0004E\u0003;\"\t!!\u001b\u0015\u0005\u0005m\u0003\u0002CA7\u0003;\"\u0019!a\u001c\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\t\u0005E\u00141Q\u000b\u0003\u0003g\u0002\u0012bHA;\u0003s\n\t)!\"\n\u0007\u0005]\u0004E\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\u0002|\u0005uTBAA/\u0013\r\ty(\u0014\u0002\u0005\u0007>dG\u000eE\u0002\u0011\u0003\u0007#aAEA6\u0005\u0004\u0019\u0002\u0003\u0002\u0007\u0001\u0003\u0003C\u0001\"!#\u0002^\u0011\u0005\u00131R\u0001\u0006K6\u0004H/_\u000b\u0005\u0003\u001b\u000b\u0019*\u0006\u0002\u0002\u0010B!A\u0002AAI!\r\u0001\u00121\u0013\u0003\u0007%\u0005\u001d%\u0019A\n\t\u0015\u0005]\u0015QLA\u0001\n\u0013\tI*A\u0006sK\u0006$\'+Z:pYZ,GCAAN!\u0011\ti*a)\u000e\u0005\u0005}%\u0002BAQ\u0003S\tA\u0001\\1oO&!\u0011QUAP\u0005\u0019y%M[3di\u0002"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private transient _loadFactor:I

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Ljava/lang/Object;

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

    .line 51
    invoke-direct {p0, v0}, Lscala/collection/mutable/HashSet;-><init>(Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/mutable/FlatHashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TA;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->$init$(Lscala/collection/mutable/FlatHashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->$init$(Lscala/collection/mutable/FlatHashTable;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->initWithContents(Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/HashSet<",
            "*>;TA;",
            "Lscala/collection/mutable/HashSet<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 90
    new-instance v0, Lscala/collection/mutable/HashSet$$anonfun$readObject$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/HashSet$$anonfun$readObject$1;-><init>(Lscala/collection/mutable/HashSet;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/HashSet;->init(Ljava/io/ObjectInputStream;Lscala/Function1;)V

    return-void
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

    sget-object v0, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->serializeTo(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/HashSet;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->removeElem(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/HashSet;->$plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->addElem(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public _loadFactor()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->_loadFactor:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->addElem(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addElem(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addEntry(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->calcSizeMapSize(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public capacity(I)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->capacity(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->clearTable()V

    return-void
.end method

.method public clearTable()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->clearTable(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->clone()Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lscala/collection/mutable/HashSet;

    invoke-direct {v0}, Lscala/collection/mutable/HashSet;-><init>()V

    invoke-virtual {v0, p0}, Lscala/collection/mutable/HashSet;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/HashSet;

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Set;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->clone()Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/HashSet;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->containsElem(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsElem(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->containsElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public final elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->elemToEntry(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public final entryToElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->entryToElem(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->findEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->table()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Lscala/collection/mutable/HashSet;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashTableContents()Lscala/collection/mutable/FlatHashTable$Contents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TA;>;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->hashTableContents(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->improve(Lscala/collection/mutable/FlatHashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->index(Lscala/collection/mutable/FlatHashTable;I)I

    move-result p1

    return p1
.end method

.method public init(Ljava/io/ObjectInputStream;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Lscala/Function1<",
            "TA;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/FlatHashTable$class;->init(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectInputStream;Lscala/Function1;)V

    return-void
.end method

.method public initWithContents(Lscala/collection/mutable/FlatHashTable$Contents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TA;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->initWithContents(Lscala/collection/mutable/FlatHashTable;Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialSize(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->isSizeMapDefined(Lscala/collection/mutable/FlatHashTable;)Z

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

    .line 71
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->iterator(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapReset(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->par()Lscala/collection/parallel/mutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/mutable/ParHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TA;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lscala/collection/parallel/mutable/ParHashSet;

    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->hashTableContents()Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/parallel/mutable/ParHashSet;-><init>(Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public printContents()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->printContents(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public printSizeMap()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->printSizeMap(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public randomSeed()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->randomSeed(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->removeElem(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeElem(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->removeElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->result()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->seedvalue:I

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->serializeTo(Lscala/collection/mutable/FlatHashTable;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 55
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->tableSize()I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapDisable(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInit(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashSet;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashSet;->sizemap:[I

    return-void
.end method

.method public table()[Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashSet;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableSizeSeed(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->tableSize:I

    return-void
.end method

.method public table_$eq([Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashSet;->table:[Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public threshold()I
    .locals 1

    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->threshold:I

    return-void
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public useSizeMap(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->isSizeMapDefined()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->sizeMapInitAndRebuild()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->sizeMapDisable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
