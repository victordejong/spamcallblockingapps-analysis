.class public abstract Lscala/collection/generic/GenTraversableFactory;
.super Lscala/collection/generic/GenericCompanion;
.source "GenTraversableFactory.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/GenTraversable<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenericCompanion<",
        "TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\u0005e!B\u0001\u0003\u0003\u0003I!!F$f]R\u0013\u0018M^3sg\u0006\u0014G.\u001a$bGR|\'/\u001f\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M\u0011\u0001a\u0003\t\u0004\u00195yQ\"\u0001\u0002\n\u00059\u0011!\u0001E$f]\u0016\u0014\u0018nY\"p[B\u000cg.[8o!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0005\r\u001bUC\u0001\u000b\"#\t)\u0012\u0004\u0005\u0002\u0017/5\ta!\u0003\u0002\u0019\r\t9aj\u001c;iS:<\'c\u0001\u000e\u001dO\u0019!1\u0004\u0001\u0001\u001a\u00051a$/\u001a4j]\u0016lWM\u001c;?!\rib\u0004I\u0007\u0002\t%\u0011q\u0004\u0002\u0002\u000f\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f!\t\u0001\u0012\u0005B\u0003##\t\u00071EA\u0001Y#\t)B\u0005\u0005\u0002\u0017K%\u0011aE\u0002\u0002\u0004\u0003:L\u0008\u0003\u0002\u0007)A=I!!\u000b\u0002\u00035\u001d+g.\u001a:jGR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\t\u000b-\u0002A\u0011\u0001\u0017\u0002\rqJg.\u001b;?)\u0005i\u0003c\u0001\u0007\u0001\u001f!1q\u0006\u0001Q\u0001\nA\n1CU3vg\u0006\u0014G.Z\"C\r&s7\u000f^1oG\u0016\u00042!\r\u001a\u0016\u001b\u0005\u0001a\u0001B\u001a\u0001\u0001Q\u00121cR3oKJL7mQ1o\u0005VLG\u000e\u001a$s_6,\"!\u000e\"\u0014\u0007I2\u0014\u0008\u0005\u0002\u0017o%\u0011\u0001H\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u000b1QD(\u0011#\n\u0005m\u0012!\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007GA\u001f@!\r\u0001\u0012C\u0010\t\u0003!}\"\u0011\u0002\u0011\u001a\u0002\u0002\u0003\u0005)\u0011A\u0012\u0003\u0007}#\u0013\u0007\u0005\u0002\u0011\u0005\u0012)1I\rb\u0001G\t\t\u0011\tE\u0002\u0011#\u0005CQa\u000b\u001a\u0005\u0002\u0019#\u0012a\u0012\t\u0004cI\n\u0005\"B%3\t\u0003Q\u0015!B1qa2LHCA&R!\u0011au*\u0011#\u000e\u00035S!A\u0014\u0003\u0002\u000f5,H/\u00192mK&\u0011\u0001+\u0014\u0002\u0008\u0005VLG\u000eZ3s\u0011\u0015\u0011\u0006\n1\u0001T\u0003\u00111\'o\\7\u0011\u0005E\"\u0016BA+\u000e\u0005\u0011\u0019u\u000e\u001c7\t\u000b%\u0013D\u0011A,\u0015\u0003-CQ!\u0017\u0001\u0005\u0002i\u000b1BU3vg\u0006\u0014G.Z\"C\rV\t\u0001\u0007C\u0003]\u0001\u0011\u0005Q,\u0001\u0004d_:\u001c\u0017\r^\u000b\u0003=\u0006$\"a\u00182\u0011\u0007A\t\u0002\r\u0005\u0002\u0011C\u0012)1i\u0017b\u0001G!)1m\u0017a\u0001I\u0006\u0019\u0001p]:\u0011\u0007Y)w-\u0003\u0002g\r\tQAH]3qK\u0006$X\r\u001a \u0011\u0007uA\u0007-\u0003\u0002j\t\tYAK]1wKJ\u001c\u0018M\u00197f\u0011\u0015Y\u0007\u0001\"\u0001m\u0003\u00111\u0017\u000e\u001c7\u0016\u00055\u000cHC\u00018x)\ty\'\u000fE\u0002\u0011#A\u0004\"\u0001E9\u0005\u000b\rS\'\u0019A\u0012\t\rMTG\u00111\u0001u\u0003\u0011)G.Z7\u0011\u0007Y)\u0008/\u0003\u0002w\r\tAAHY=oC6,g\u0008C\u0003yU\u0002\u0007\u00110A\u0001o!\t1\"0\u0003\u0002|\r\t\u0019\u0011J\u001c;\t\u000b-\u0004A\u0011A?\u0016\u0007y\u000c9\u0001F\u0003\u0000\u0003\u001b\t\t\u0002\u0006\u0003\u0002\u0002\u0005%\u0001\u0003\u0002\t\u0012\u0003\u0007\u0001B\u0001E\t\u0002\u0006A\u0019\u0001#a\u0002\u0005\u000b\rc(\u0019A\u0012\t\u000fMdH\u00111\u0001\u0002\u000cA!a#^A\u0003\u0011\u0019\ty\u0001 a\u0001s\u0006\u0011a.\r\u0005\u0007\u0003\'a\u0008\u0019A=\u0002\u00059\u0014\u0004BB6\u0001\t\u0003\t9\"\u0006\u0003\u0002\u001a\u0005\u0015B\u0003CA\u000e\u0003W\ti#a\u000c\u0015\t\u0005u\u0011q\u0005\t\u0005!E\ty\u0002\u0005\u0003\u0011#\u0005\u0005\u0002\u0003\u0002\t\u0012\u0003G\u00012\u0001EA\u0013\t\u0019\u0019\u0015Q\u0003b\u0001G!A1/!\u0006\u0005\u0002\u0004\tI\u0003\u0005\u0003\u0017k\u0006\r\u0002bBA\u0008\u0003+\u0001\r!\u001f\u0005\u0008\u0003\'\t)\u00021\u0001z\u0011\u001d\t\t$!\u0006A\u0002e\u000c!A\\\u001a\t\r-\u0004A\u0011AA\u001b+\u0011\t9$!\u0012\u0015\u0015\u0005e\u00121JA\'\u0003\u001f\n\t\u0006\u0006\u0003\u0002<\u0005\u001d\u0003\u0003\u0002\t\u0012\u0003{\u0001B\u0001E\t\u0002@A!\u0001#EA!!\u0011\u0001\u0012#a\u0011\u0011\u0007A\t)\u0005\u0002\u0004D\u0003g\u0011\ra\t\u0005\tg\u0006MB\u00111\u0001\u0002JA!a#^A\"\u0011\u001d\ty!a\rA\u0002eDq!a\u0005\u00024\u0001\u0007\u0011\u0010C\u0004\u00022\u0005M\u0002\u0019A=\t\u000f\u0005M\u00131\u0007a\u0001s\u0006\u0011a\u000e\u000e\u0005\u0007W\u0002!\t!a\u0016\u0016\t\u0005e\u0013\u0011\u000e\u000b\r\u00037\ny\'!\u001d\u0002t\u0005U\u0014q\u000f\u000b\u0005\u0003;\nY\u0007\u0005\u0003\u0011#\u0005}\u0003\u0003\u0002\t\u0012\u0003C\u0002B\u0001E\t\u0002dA!\u0001#EA3!\u0011\u0001\u0012#a\u001a\u0011\u0007A\tI\u0007\u0002\u0004D\u0003+\u0012\ra\t\u0005\tg\u0006UC\u00111\u0001\u0002nA!a#^A4\u0011\u001d\ty!!\u0016A\u0002eDq!a\u0005\u0002V\u0001\u0007\u0011\u0010C\u0004\u00022\u0005U\u0003\u0019A=\t\u000f\u0005M\u0013Q\u000ba\u0001s\"9\u0011\u0011PA+\u0001\u0004I\u0018A\u000186\u0011\u001d\ti\u0008\u0001C\u0001\u0003\u007f\n\u0001\u0002^1ck2\u000cG/Z\u000b\u0005\u0003\u0003\u000bI\t\u0006\u0003\u0002\u0004\u0006UE\u0003BAC\u0003\u0017\u0003B\u0001E\t\u0002\u0008B\u0019\u0001#!#\u0005\r\r\u000bYH1\u0001$\u0011!\ti)a\u001fA\u0002\u0005=\u0015!\u00014\u0011\rY\t\t*_AD\u0013\r\t\u0019J\u0002\u0002\n\rVt7\r^5p]FBa\u0001_A>\u0001\u0004I\u0008bBA?\u0001\u0011\u0005\u0011\u0011T\u000b\u0005\u00037\u000b)\u000b\u0006\u0004\u0002\u001e\u0006=\u0016\u0011\u0017\u000b\u0005\u0003?\u000b9\u000b\u0005\u0003\u0011#\u0005\u0005\u0006\u0003\u0002\t\u0012\u0003G\u00032\u0001EAS\t\u0019\u0019\u0015q\u0013b\u0001G!A\u0011QRAL\u0001\u0004\tI\u000bE\u0004\u0017\u0003WK\u00180a)\n\u0007\u00055fAA\u0005Gk:\u001cG/[8oe!9\u0011qBAL\u0001\u0004I\u0008bBA\n\u0003/\u0003\r!\u001f\u0005\u0008\u0003{\u0002A\u0011AA[+\u0011\t9,a1\u0015\u0011\u0005e\u0016QZAh\u0003#$B!a/\u0002FB!\u0001#EA_!\u0011\u0001\u0012#a0\u0011\tA\t\u0012\u0011\u0019\t\u0004!\u0005\rGAB\"\u00024\n\u00071\u0005\u0003\u0005\u0002\u000e\u0006M\u0006\u0019AAd!!1\u0012\u0011Z=zs\u0006\u0005\u0017bAAf\r\tIa)\u001e8di&|gn\r\u0005\u0008\u0003\u001f\t\u0019\u000c1\u0001z\u0011\u001d\t\u0019\"a-A\u0002eDq!!\r\u00024\u0002\u0007\u0011\u0010C\u0004\u0002~\u0001!\t!!6\u0016\t\u0005]\u0017Q\u001d\u000b\u000b\u00033\u000cy/!=\u0002t\u0006UH\u0003BAn\u0003O\u0004B\u0001E\t\u0002^B!\u0001#EAp!\u0011\u0001\u0012#!9\u0011\tA\t\u00121\u001d\t\u0004!\u0005\u0015HAB\"\u0002T\n\u00071\u0005\u0003\u0005\u0002\u000e\u0006M\u0007\u0019AAu!%1\u00121^=zsf\u000c\u0019/C\u0002\u0002n\u001a\u0011\u0011BR;oGRLwN\u001c\u001b\t\u000f\u0005=\u00111\u001ba\u0001s\"9\u00111CAj\u0001\u0004I\u0008bBA\u0019\u0003\'\u0004\r!\u001f\u0005\u0008\u0003\'\n\u0019\u000e1\u0001z\u0011\u001d\ti\u0008\u0001C\u0001\u0003s,B!a?\u0003\u000cQa\u0011Q B\u000b\u0005/\u0011IBa\u0007\u0003\u001eQ!\u0011q B\u0007!\u0011\u0001\u0012C!\u0001\u0011\tA\t\"1\u0001\t\u0005!E\u0011)\u0001\u0005\u0003\u0011#\t\u001d\u0001\u0003\u0002\t\u0012\u0005\u0013\u00012\u0001\u0005B\u0006\t\u0019\u0019\u0015q\u001fb\u0001G!A\u0011QRA|\u0001\u0004\u0011y\u0001\u0005\u0006\u0017\u0005#I\u00180_=z\u0005\u0013I1Aa\u0005\u0007\u0005%1UO\\2uS>tW\u0007C\u0004\u0002\u0010\u0005]\u0008\u0019A=\t\u000f\u0005M\u0011q\u001fa\u0001s\"9\u0011\u0011GA|\u0001\u0004I\u0008bBA*\u0003o\u0004\r!\u001f\u0005\u0008\u0003s\n9\u00101\u0001z\u0011\u001d\u0011\t\u0003\u0001C\u0001\u0005G\tQA]1oO\u0016,BA!\n\u0003.Q1!q\u0005B\"\u0005\u000f\"BA!\u000b\u00032A!\u0001#\u0005B\u0016!\r\u0001\"Q\u0006\u0003\u0008\u0005_\u0011yB1\u0001$\u0005\u0005!\u0006B\u0003B\u001a\u0005?\t\t\u0011q\u0001\u00036\u0005QQM^5eK:\u001cW\rJ\u0019\u0011\r\t]\"Q\u0008B\u0016\u001d\r1\"\u0011H\u0005\u0004\u0005w1\u0011a\u00029bG.\u000cw-Z\u0005\u0005\u0005\u007f\u0011\tE\u0001\u0005J]R,wM]1m\u0015\r\u0011YD\u0002\u0005\t\u0005\u000b\u0012y\u00021\u0001\u0003,\u0005)1\u000f^1si\"A!\u0011\nB\u0010\u0001\u0004\u0011Y#A\u0002f]\u0012DqA!\t\u0001\t\u0003\u0011i%\u0006\u0003\u0003P\t]C\u0003\u0003B)\u0005?\u0012\tGa\u0019\u0015\t\tM#\u0011\u000c\t\u0005!E\u0011)\u0006E\u0002\u0011\u0005/\"qAa\u000c\u0003L\t\u00071\u0005\u0003\u0006\u0003\\\t-\u0013\u0011!a\u0002\u0005;\n!\"\u001a<jI\u0016t7-\u001a\u00133!\u0019\u00119D!\u0010\u0003V!A!Q\tB&\u0001\u0004\u0011)\u0006\u0003\u0005\u0003J\t-\u0003\u0019\u0001B+\u0011!\u0011)Ga\u0013A\u0002\tU\u0013\u0001B:uKBDqA!\u001b\u0001\t\u0003\u0011Y\'A\u0004ji\u0016\u0014\u0018\r^3\u0016\t\t5$Q\u000f\u000b\u0007\u0005_\u0012YH! \u0015\t\tE$q\u000f\t\u0005!E\u0011\u0019\u0008E\u0002\u0011\u0005k\"aa\u0011B4\u0005\u0004\u0019\u0003\u0002CAG\u0005O\u0002\rA!\u001f\u0011\u000fY\t\tJa\u001d\u0003t!A!Q\tB4\u0001\u0004\u0011\u0019\u0008C\u0004\u0003\u0000\t\u001d\u0004\u0019A=\u0002\u00071,g\u000e"
.end annotation


# instance fields
.field private final ReusableCBFInstance:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
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

    .line 40
    invoke-direct {p0}, Lscala/collection/generic/GenericCompanion;-><init>()V

    .line 42
    new-instance v0, Lscala/collection/generic/GenTraversableFactory$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenTraversableFactory$$anon$1;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

    iput-object v0, p0, Lscala/collection/generic/GenTraversableFactory;->ReusableCBFInstance:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    return-void
.end method


# virtual methods
.method public ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "TCC;>.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lscala/collection/generic/GenTraversableFactory;->ReusableCBFInstance:Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    return-object v0
.end method

.method public concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/collection/Traversable<",
            "TA;>;>;)TCC;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lscala/collection/generic/GenTraversableFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 73
    new-instance v1, Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$1;

    invoke-direct {v1, p0}, Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$1;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

    invoke-interface {p1, v1}, Lscala/collection/Seq;->forall(Lscala/Function1;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$2;

    invoke-direct {v1, p0}, Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$2;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableOnce;

    sget-object v2, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-interface {v1, v2}, Lscala/collection/TraversableOnce;->sum(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 76
    :cond_0
    invoke-interface {p1}, Lscala/collection/Seq;->seq()Lscala/collection/Seq;

    move-result-object p1

    new-instance v1, Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$3;

    invoke-direct {v1, p0, v0}, Lscala/collection/generic/GenTraversableFactory$$anonfun$concat$3;-><init>(Lscala/collection/generic/GenTraversableFactory;Lscala/collection/mutable/Builder;)V

    invoke-interface {p1, v1}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 77
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversable;

    return-object p1
.end method

.method public fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(IIIII",
            "Lscala/Function0<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 136
    new-instance v7, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$4;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$4;-><init>(Lscala/collection/generic/GenTraversableFactory;IIIILscala/Function0;)V

    invoke-virtual {p0, p1, v7}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(IIII",
            "Lscala/Function0<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 124
    new-instance v6, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$3;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$3;-><init>(Lscala/collection/generic/GenTraversableFactory;IIILscala/Function0;)V

    invoke-virtual {p0, p1, v6}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(III",
            "Lscala/Function0<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 113
    new-instance v0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$2;-><init>(Lscala/collection/generic/GenTraversableFactory;IILscala/Function0;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/Function0<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 103
    new-instance v0, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;

    invoke-direct {v0, p0, p2, p3}, Lscala/collection/generic/GenTraversableFactory$$anonfun$fill$1;-><init>(Lscala/collection/generic/GenTraversableFactory;ILscala/Function0;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function0<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lscala/collection/generic/GenTraversableFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 87
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 90
    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversable;

    return-object p1
.end method

.method public iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;I",
            "Lscala/Function1<",
            "TA;TA;>;)TCC;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lscala/collection/generic/GenTraversableFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    if-lez p2, :cond_0

    .line 239
    invoke-interface {v0, p2}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 242
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_0

    .line 245
    invoke-interface {p3, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    .line 247
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversable;

    return-object p1
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)TCC;"
        }
    .end annotation

    .line 215
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v0, p4

    check-cast v0, Lscala/math/Integral;

    .line 218
    invoke-interface {v0}, Lscala/math/Integral;->zero()Ljava/lang/Object;

    move-result-object v1

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    instance-of v2, p3, Ljava/lang/Number;

    if-eqz v2, :cond_2

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v2, p3, Ljava/lang/Character;

    if-eqz v2, :cond_3

    move-object v2, p3

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_6

    .line 219
    invoke-virtual {p0}, Lscala/collection/generic/GenTraversableFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    .line 220
    sget-object v2, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lscala/collection/immutable/NumericRange$;->count(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Integral;)I

    move-result p4

    invoke-interface {v1, p4}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 222
    :goto_1
    invoke-interface {v0, p3}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p4

    invoke-interface {v0}, Lscala/math/Integral;->zero()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v2}, Lscala/math/Ordering$Ops;->$less(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {v0, p2}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p4

    invoke-virtual {p4, p1}, Lscala/math/Ordering$Ops;->$less(Ljava/lang/Object;)Z

    move-result p4

    goto :goto_2

    :cond_4
    invoke-interface {v0, p1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p4

    invoke-virtual {p4, p2}, Lscala/math/Ordering$Ops;->$less(Ljava/lang/Object;)Z

    move-result p4

    :goto_2
    if-eqz p4, :cond_5

    .line 223
    invoke-interface {v1, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 224
    invoke-interface {v0, p1}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    invoke-virtual {p1, p3}, Lscala/math/Integral$IntegralOps;->$plus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 226
    :cond_5
    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversable;

    return-object p1

    .line 218
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero step"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)TCC;"
        }
    .end annotation

    .line 206
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v0, p3

    check-cast v0, Lscala/math/Numeric;

    invoke-interface {v0}, Lscala/math/Numeric;->one()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lscala/collection/generic/GenTraversableFactory;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(IIIII",
            "Lscala/Function5<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 198
    new-instance v7, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$4;-><init>(Lscala/collection/generic/GenTraversableFactory;IIIILscala/Function5;)V

    invoke-virtual {p0, p1, v7}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(IIII",
            "Lscala/Function4<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 185
    new-instance v6, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$3;-><init>(Lscala/collection/generic/GenTraversableFactory;IIILscala/Function4;)V

    invoke-virtual {p0, p1, v6}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(III",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 173
    new-instance v0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$2;-><init>(Lscala/collection/generic/GenTraversableFactory;IILscala/Function3;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 162
    new-instance v0, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;

    invoke-direct {v0, p0, p2, p3}, Lscala/collection/generic/GenTraversableFactory$$anonfun$tabulate$1;-><init>(Lscala/collection/generic/GenTraversableFactory;ILscala/Function2;)V

    invoke-virtual {p0, p1, v0}, Lscala/collection/generic/GenTraversableFactory;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lscala/collection/generic/GenTraversableFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 145
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 148
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversable;

    return-object p1
.end method
