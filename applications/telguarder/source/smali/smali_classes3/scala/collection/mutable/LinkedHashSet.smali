.class public Lscala/collection/mutable/LinkedHashSet;
.super Lscala/collection/mutable/AbstractSet;
.source "LinkedHashSet.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/LinkedHashSet$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSet<",
        "TA;>;",
        "Lscala/collection/mutable/HashTable<",
        "TA;",
        "Lscala/collection/mutable/LinkedHashSet$Entry<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\rb\u0001B\u0001\u0003\u0001%\u0011Q\u0002T5oW\u0016$\u0007*Y:i\'\u0016$(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\t\u0014\u000f\u0001Y1DH\u0013*mA\u0019A\"D\u0008\u000e\u0003\tI!A\u0004\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGR\u001cV\r\u001e\t\u0003!Ea\u0001\u0001B\u0003\u0013\u0001\t\u00071CA\u0001B#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007CA\u000b\u001a\u0013\tQbAA\u0002B]f\u00042\u0001\u0004\u000f\u0010\u0013\ti\"AA\u0002TKR\u0004Ba\u0008\u0012\u0010I5\t\u0001E\u0003\u0002\"\t\u00059q-\u001a8fe&\u001c\u0017BA\u0012!\u0005I9UM\\3sS\u000e\u001cV\r\u001e+f[Bd\u0017\r^3\u0011\u00051\u0001\u0001\u0003\u0002\u0007\'\u001f!J!a\n\u0002\u0003\u000fM+G\u000fT5lKB\u0019A\u0002A\u0008\u0011\t1Qs\u0002L\u0005\u0003W\t\u0011\u0011\u0002S1tQR\u000b\'\r\\3\u0011\u00075\u001avB\u0004\u0002\r]\u001d)qF\u0001E\u0001a\u0005iA*\u001b8lK\u0012D\u0015m\u001d5TKR\u0004\"\u0001D\u0019\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u001a\u0014\u0007E\u001ad\u0007E\u0002 i\u0011J!!\u000e\u0011\u0003#5+H/\u00192mKN+GOR1di>\u0014\u0018\u0010\u0005\u0002\u0016o%\u0011\u0001H\u0002\u0002\r\'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\u0006uE\"\taO\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003ABQ!P\u0019\u0005\u0004y\nAbY1o\u0005VLG\u000e\u001a$s_6,\"a\u0010&\u0016\u0003\u0001\u0003RaH!D\u0013.K!A\u0011\u0011\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u0005\u0011+U\"A\u0019\n\u0005\u0019;%\u0001B\"pY2L!\u0001\u0013\u0011\u0003!\u001d+g.\u001a:jG\u000e{W\u000e]1oS>t\u0007C\u0001\tK\t\u0015\u0011BH1\u0001\u0014!\ra\u0001!\u0013\u0005\u0006\u001bF\"\tET\u0001\u0006K6\u0004H/_\u000b\u0003\u001fJ+\u0012\u0001\u0015\t\u0004\u0019\u0001\t\u0006C\u0001\tS\t\u0015\u0011BJ1\u0001\u0014\r\u0015!\u0016G\u0001\u0004V\u0005\u0015)e\u000e\u001e:z+\t1fl\u0005\u0003T/j3\u0004CA\u000bY\u0013\tIfA\u0001\u0004B]f\u0014VM\u001a\t\u0005\u0019mkv,\u0003\u0002]\u0005\tI\u0001*Y:i\u000b:$(/\u001f\t\u0003!y#QAE*C\u0002M\u00012\u0001R*^\u0011!\t7K!b\u0001\n\u0003\u0011\u0017aA6fsV\tQ\u000c\u0003\u0005e\'\n\u0005\t\u0015!\u0003^\u0003\u0011YW-\u001f\u0011\t\u000bi\u001aF\u0011\u00014\u0015\u0005};\u0007\"B1f\u0001\u0004i\u0006bB5T\u0001\u0004%\tA[\u0001\u0008K\u0006\u0014H.[3s+\u0005y\u0006b\u00027T\u0001\u0004%\t!\\\u0001\u000cK\u0006\u0014H.[3s?\u0012*\u0017\u000f\u0006\u0002ocB\u0011Qc\\\u0005\u0003a\u001a\u0011A!\u00168ji\"9!o[A\u0001\u0002\u0004y\u0016a\u0001=%c!1Ao\u0015Q!\n}\u000b\u0001\"Z1sY&,\'\u000f\t\u0005\u0008mN\u0003\r\u0011\"\u0001k\u0003\u0015a\u0017\r^3s\u0011\u001dA8\u000b1A\u0005\u0002e\u000c\u0011\u0002\\1uKJ|F%Z9\u0015\u00059T\u0008b\u0002:x\u0003\u0003\u0005\ra\u0018\u0005\u0007yN\u0003\u000b\u0015B0\u0002\r1\u000cG/\u001a:!\u0011\u001dq\u0018\'!A\u0005\n}\u000c1B]3bIJ+7o\u001c7wKR\u0011\u0011\u0011\u0001\t\u0005\u0003\u0007\ti!\u0004\u0002\u0002\u0006)!\u0011qAA\u0005\u0003\u0011a\u0017M\\4\u000b\u0005\u0005-\u0011\u0001\u00026bm\u0006LA!a\u0004\u0002\u0006\t1qJ\u00196fGRDaA\u000f\u0001\u0005\u0002\u0005MA#\u0001\u0015\t\u000f\u0005]\u0001\u0001\"\u0011\u0002\u001a\u0005I1m\\7qC:LwN\\\u000b\u0003\u00037\u00012aH$%\u000b\u0011!\u0006\u0001\u0001\u0017\t\u0013\u0005\u0005\u0002\u00011A\u0005\u0012\u0005\r\u0012A\u00034jeN$XI\u001c;ssV\u0011\u0011Q\u0005\t\u0005\u0003O\ti\"D\u0001\u0001\u0011%\tY\u0003\u0001a\u0001\n#\ti#\u0001\u0008gSJ\u001cH/\u00128uef|F%Z9\u0015\u00079\u000cy\u0003C\u0005s\u0003S\t\t\u00111\u0001\u0002&!A\u00111\u0007\u0001!B\u0013\t)#A\u0006gSJ\u001cH/\u00128uef\u0004\u0003\u0006BA\u0019\u0003o\u00012!FA\u001d\u0013\r\tYD\u0002\u0002\niJ\u000cgn]5f]RD\u0011\"a\u0010\u0001\u0001\u0004%\t\"a\t\u0002\u00131\u000c7\u000f^#oiJL\u0008\"CA\"\u0001\u0001\u0007I\u0011CA#\u00035a\u0017m\u001d;F]R\u0014\u0018p\u0018\u0013fcR\u0019a.a\u0012\t\u0013I\u000c\t%!AA\u0002\u0005\u0015\u0002\u0002CA&\u0001\u0001\u0006K!!\n\u0002\u00151\u000c7\u000f^#oiJL\u0008\u0005\u000b\u0003\u0002J\u0005]\u0002bBA)\u0001\u0011\u0005\u00131K\u0001\u0005g&TX-\u0006\u0002\u0002VA\u0019Q#a\u0016\n\u0007\u0005ecAA\u0002J]RDq!!\u0018\u0001\t\u0003\ty&\u0001\u0005d_:$\u0018-\u001b8t)\u0011\t\t\'a\u001a\u0011\u0007U\t\u0019\'C\u0002\u0002f\u0019\u0011qAQ8pY\u0016\u000cg\u000eC\u0004\u0002j\u0005m\u0003\u0019A\u0008\u0002\t\u0015dW-\u001c\u0005\u0008\u0003[\u0002A\u0011AA8\u0003!!\u0003\u000f\\;tI\u0015\u000cH\u0003BA\u0014\u0003cBq!!\u001b\u0002l\u0001\u0007q\u0002\u000b\u0005\u0002l\u0005U\u00141PA@!\r)\u0012qO\u0005\u0004\u0003s2!\u0001\u00063faJ,7-\u0019;fI>3XM\u001d:jI&tw-\t\u0002\u0002~\u0005a4&\u0010\u0011tQ>,H\u000e\u001a\u0011o_R\u0004#-\u001a\u0011pm\u0016\u0014(/\u001b3eK:\u00043o\u001c\u0011ji\u0002\u001aH/Y=tA\r|gn]5ti\u0016tG\u000fI<ji\"\u0004\u0013\r\u001a3/C\t\t\t)\u0001\u00043]E\nd\u0006\r\u0005\u0008\u0003\u000b\u0003A\u0011AAD\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002(\u0005%\u0005bBA5\u0003\u0007\u0003\ra\u0004\u0015\t\u0003\u0007\u000b)(!$\u0002\u0000\u0005\u0012\u0011qR\u0001@[u\u00023\u000f[8vY\u0012\u0004cn\u001c;!E\u0016\u0004sN^3se&$G-\u001a8!g>\u0004\u0013\u000e\u001e\u0011ti\u0006L8\u000fI2p]NL7\u000f^3oi\u0002:\u0018\u000e\u001e5!e\u0016lwN^3/\u0011\u001d\t\u0019\n\u0001C!\u0003+\u000b1!\u00193e)\u0011\t\t\'a&\t\u000f\u0005%\u0014\u0011\u0013a\u0001\u001f!9\u00111\u0014\u0001\u0005B\u0005u\u0015A\u0002:f[>4X\r\u0006\u0003\u0002b\u0005}\u0005bBA5\u00033\u0003\ra\u0004\u0005\u0008\u0003G\u0003A\u0011AAS\u0003!IG/\u001a:bi>\u0014XCAAT!\u0015\tI+a+\u0010\u001b\u0005!\u0011bAAW\t\tA\u0011\n^3sCR|\'\u000fC\u0004\u00022\u0002!\t%a-\u0002\u000f\u0019|\'/Z1dQV!\u0011QWAb)\rq\u0017q\u0017\u0005\t\u0003s\u000by\u000b1\u0001\u0002<\u0006\ta\r\u0005\u0004\u0016\u0003{{\u0011\u0011Y\u0005\u0004\u0003\u007f3!!\u0003$v]\u000e$\u0018n\u001c82!\r\u0001\u00121\u0019\u0003\u0008\u0003\u000b\u000cyK1\u0001\u0014\u0005\u0005)\u0006bBAe\u0001\u0011E\u00131Z\u0001\rM>\u0014X-Y2i\u000b:$(/_\u000b\u0005\u0003\u001b\u000c)\u000eF\u0002o\u0003\u001fD\u0001\"!/\u0002H\u0002\u0007\u0011\u0011\u001b\t\u0008+\u0005u\u0016QEAj!\r\u0001\u0012Q\u001b\u0003\u0008\u0003\u000b\u000c9M1\u0001\u0014\u0011\u001d\tI\u000e\u0001C\t\u00037\u000cab\u0019:fCR,g*Z<F]R\u0014\u00180\u0006\u0003\u0002^\u0006\u001dHCBA\u0013\u0003?\u000c\t\u000f\u0003\u0004b\u0003/\u0004\ra\u0004\u0005\t\u0003G\u000c9\u000e1\u0001\u0002f\u0006)A-^7nsB\u0019\u0001#a:\u0005\u000f\u0005%\u0018q\u001bb\u0001\'\t\t!\tC\u0004\u0002n\u0002!\t%a<\u0002\u000b\rdW-\u0019:\u0015\u00039Dq!a=\u0001\t\u0013\t)0A\u0006xe&$Xm\u00142kK\u000e$Hc\u00018\u0002x\"A\u0011\u0011`Ay\u0001\u0004\tY0A\u0002pkR\u0004B!!@\u0003\u00045\u0011\u0011q \u0006\u0005\u0005\u0003\tI!\u0001\u0002j_&!!QAA\u0000\u0005Iy%M[3di>+H\u000f];u\'R\u0014X-Y7\t\u000f\t%\u0001\u0001\"\u0003\u0003\u000c\u0005Q!/Z1e\u001f\nTWm\u0019;\u0015\u00079\u0014i\u0001\u0003\u0005\u0003\u0010\t\u001d\u0001\u0019\u0001B\t\u0003\tIg\u000e\u0005\u0003\u0002~\nM\u0011\u0002\u0002B\u000b\u0003\u007f\u0014\u0011c\u00142kK\u000e$\u0018J\u001c9viN#(/Z1nQ\u001d\u0001!\u0011\u0004B\u0010\u0005C\u00012!\u0006B\u000e\u0013\r\u0011iB\u0002\u0002\u0011\'\u0016\u0014\u0018.\u00197WKJ\u001c\u0018n\u001c8V\u0013\u0012\u000bQA^1mk\u0016t\u0012!\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private transient _loadFactor:I

.field private transient firstEntry:Lscala/collection/mutable/LinkedHashSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation
.end field

.field private transient lastEntry:Lscala/collection/mutable/LinkedHashSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation
.end field

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

    .line 42
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->$init$(Lscala/collection/mutable/HashTable;)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lscala/collection/mutable/LinkedHashSet;->firstEntry:Lscala/collection/mutable/LinkedHashSet$Entry;

    .line 54
    iput-object v0, p0, Lscala/collection/mutable/LinkedHashSet;->lastEntry:Lscala/collection/mutable/LinkedHashSet$Entry;

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
            "Lscala/collection/mutable/LinkedHashSet<",
            "*>;TA;",
            "Lscala/collection/mutable/LinkedHashSet<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/LinkedHashSet$;->MODULE$:Lscala/collection/mutable/LinkedHashSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashSet;->firstEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    .line 124
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashSet;->lastEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    .line 125
    new-instance v0, Lscala/collection/mutable/LinkedHashSet$$anonfun$readObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/LinkedHashSet$$anonfun$readObject$1;-><init>(Lscala/collection/mutable/LinkedHashSet;Ljava/io/ObjectInputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/LinkedHashSet;->init(Ljava/io/ObjectInputStream;Lscala/Function0;)V

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

    sget-object v0, Lscala/collection/mutable/LinkedHashSet$;->MODULE$:Lscala/collection/mutable/LinkedHashSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 119
    new-instance v0, Lscala/collection/mutable/LinkedHashSet$$anonfun$writeObject$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/LinkedHashSet$$anonfun$writeObject$1;-><init>(Lscala/collection/mutable/LinkedHashSet;Ljava/io/ObjectOutputStream;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/LinkedHashSet;->serializeTo(Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/LinkedHashSet;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/LinkedHashSet<",
            "TA;>;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/LinkedHashSet;->$plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/LinkedHashSet<",
            "TA;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public _loadFactor()I
    .locals 1

    .line 42
    iget v0, p0, Lscala/collection/mutable/LinkedHashSet;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 42
    iput p1, p0, Lscala/collection/mutable/LinkedHashSet;->_loadFactor:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/LinkedHashSet;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addEntry(Lscala/collection/mutable/HashEntry;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->addEntry(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;)V

    return-void
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public calcSizeMapSize(I)I
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->clearTable()V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashSet;->firstEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    .line 115
    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashSet;->lastEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    return-void
.end method

.method public clearTable()V
    .locals 0

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->clearTable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->clone()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/LinkedHashSet;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lscala/collection/mutable/LinkedHashSet$;->MODULE$:Lscala/collection/mutable/LinkedHashSet$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedHashSet;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object p1

    return-object p1
.end method

.method public createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/LinkedHashSet$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation

    .line 105
    new-instance p2, Lscala/collection/mutable/LinkedHashSet$Entry;

    invoke-direct {p2, p1}, Lscala/collection/mutable/LinkedHashSet$Entry;-><init>(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->firstEntry()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lscala/collection/mutable/LinkedHashSet;->firstEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->lastEntry()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/collection/mutable/LinkedHashSet$Entry;->later_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->lastEntry()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object p1

    invoke-virtual {p2, p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    .line 108
    :goto_0
    invoke-virtual {p0, p2}, Lscala/collection/mutable/LinkedHashSet;->lastEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    return-object p2
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

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

    .line 42
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

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$HashUtils$class;->elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public entriesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;>;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public firstEntry()Lscala/collection/mutable/LinkedHashSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet;->firstEntry:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-object v0
.end method

.method public firstEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet;->firstEntry:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-void
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->firstEntry()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashSet$Entry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashSet$Entry;->later()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public foreachEntry(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;TU;>;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->firstEntry()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashSet$Entry;->later()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;>;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->hashTableContents(Lscala/collection/mutable/HashTable;)Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method public final improve(II)I
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public final index(I)I
    .locals 0

    .line 42
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
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;>;)V"
        }
    .end annotation

    .line 42
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
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;>;)V"
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialSize(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public isSizeMapDefined()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->isSizeMapDefined(Lscala/collection/mutable/HashTable;)Z

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
    new-instance v0, Lscala/collection/mutable/LinkedHashSet$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/LinkedHashSet$$anon$1;-><init>(Lscala/collection/mutable/LinkedHashSet;)V

    return-object v0
.end method

.method public lastEntry()Lscala/collection/mutable/LinkedHashSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet;->lastEntry:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-object v0
.end method

.method public lastEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet;->lastEntry:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-void
.end method

.method public nnSizeMapAdd(I)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public printSizeMap()V
    .locals 0

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->printSizeMap(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/LinkedHashSet$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 72
    :cond_0
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->later()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/LinkedHashSet;->firstEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->later()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/LinkedHashSet$Entry;->later_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    .line 74
    :goto_0
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->later()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->lastEntry_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->later()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier()Lscala/collection/mutable/LinkedHashSet$Entry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V

    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->result()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .line 42
    iget v0, p0, Lscala/collection/mutable/LinkedHashSet;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 42
    iput p1, p0, Lscala/collection/mutable/LinkedHashSet;->seedvalue:I

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->seq()Lscala/collection/mutable/Set;

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
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->serializeTo(Lscala/collection/mutable/HashTable;Ljava/io/ObjectOutputStream;Lscala/Function1;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->tableSize()I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapDisable()V
    .locals 0

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapDisable(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizeMapInit(I)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->sizeMapInit(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .line 42
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 42
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet;->sizemap:[I

    return-void
.end method

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 42
    iget v0, p0, Lscala/collection/mutable/LinkedHashSet;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->tableSizeSeed(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 42
    iput p1, p0, Lscala/collection/mutable/LinkedHashSet;->tableSize:I

    return-void
.end method

.method public table_$eq([Lscala/collection/mutable/HashEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry<",
            "TA;",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;>;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 42
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet;->table:[Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public threshold()I
    .locals 1

    .line 42
    iget v0, p0, Lscala/collection/mutable/LinkedHashSet;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 42
    iput p1, p0, Lscala/collection/mutable/LinkedHashSet;->threshold:I

    return-void
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .line 42
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LinkedHashSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/LinkedHashSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
