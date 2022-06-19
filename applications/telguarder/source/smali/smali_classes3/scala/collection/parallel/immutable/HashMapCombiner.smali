.class public abstract Lscala/collection/parallel/immutable/HashMapCombiner;
.super Lscala/collection/parallel/BucketCombiner;
.source "ParHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;,
        Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/parallel/BucketCombiner<",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Lscala/collection/parallel/immutable/ParHashMap<",
        "TK;TV;>;",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Lscala/collection/parallel/immutable/HashMapCombiner<",
        "TK;TV;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005ehAB\u0001\u0003\u0003\u0003!!BA\u0008ICNDW*\u00199D_6\u0014\u0017N\\3s\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011q\u0001C\u0001\u000bG>dG.Z2uS>t\'\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0016\u0007-1\u0012e\u0005\u0002\u0001\u0019A1QB\u0004\t$!\u001dj\u0011\u0001B\u0005\u0003\u001f\u0011\u0011aBQ;dW\u0016$8i\\7cS:,\'\u000f\u0005\u0003\u0012%Q\u0001S\"\u0001\u0005\n\u0005MA!A\u0002+va2,\'\u0007\u0005\u0002\u0016-1\u0001A!B\u000c\u0001\u0005\u0004I\"!A&\u0004\u0001E\u0011!$\u0008\t\u0003#mI!\u0001\u0008\u0005\u0003\u000f9{G\u000f[5oOB\u0011\u0011CH\u0005\u0003?!\u00111!\u00118z!\t)\u0012\u0005B\u0003#\u0001\t\u0007\u0011DA\u0001W!\u0011!S\u0005\u0006\u0011\u000e\u0003\tI!A\n\u0002\u0003\u0015A\u000b\'\u000fS1tQ6\u000b\u0007\u000f\u0005\u0003%\u0001Q\u0001\u0003\"B\u0015\u0001\t\u0003Q\u0013A\u0002\u001fj]&$h\u0008F\u0001(\u0011\u001da\u0003A1A\u0005\u00025\n\u0011\"Z7qif$&/[3\u0016\u00039\u0002BaL\u0019\u0015A5\t\u0001G\u0003\u0002\u0004\r%\u0011!\u0007\r\u0002\u0008\u0011\u0006\u001c\u0008.T1q\u0011\u0019!\u0004\u0001)A\u0005]\u0005QQ-\u001c9usR\u0013\u0018.\u001a\u0011\t\u000bY\u0002A\u0011A\u001c\u0002\u0011\u0011\u0002H.^:%KF$\"\u0001O\u001d\u000e\u0003\u0001AQAO\u001bA\u0002A\tA!\u001a7f[\")A\u0008\u0001C\u0001{\u00051!/Z:vYR$\u0012a\t\u0005\u0006\u007f\u0001!\t\u0001Q\u0001\u000bOJ|W\u000f\u001d\"z\u0017\u0016LXCA!E)\t\u0011e\t\u0005\u0003%KQ\u0019\u0005CA\u000bE\t\u0015)eH1\u0001\u001a\u0005\u0011\u0011V\r\u001d:\t\u000b\u001ds\u0004\u0019\u0001%\u0002\u0007\r\u0014g\rE\u0002\u0012\u0013.K!A\u0013\u0005\u0003\u0013\u0019+hn\u0019;j_:\u0004\u0004\u0003B\u0007MA\rK!!\u0014\u0003\u0003\u0011\r{WNY5oKJDQa\u0014\u0001\u0005BA\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002#B\u0011!kV\u0007\u0002\'*\u0011A+V\u0001\u0005Y\u0006twMC\u0001W\u0003\u0011Q\u0017M^1\n\u0005a\u001b&AB*ue&twM\u0002\u0003[\u0001\u0001Y&AC\"sK\u0006$X\r\u0016:jKN\u0019\u0011\u000cX0\u0011\u0005Ei\u0016B\u00010\t\u0005\u0019\te.\u001f*fMB!Q\u0002\u00192f\u0013\t\tGA\u0001\u0003UCN\\\u0007CA\td\u0013\t!\u0007B\u0001\u0003V]&$\u0008C\u0001\u001dZ\u0011!9\u0017L!A!\u0002\u0013A\u0017!\u00022vG.\u001c\u0008cA\tjW&\u0011!\u000e\u0003\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0004Yj\u0004bBA7x\u001d\tqWO\u0004\u0002pi:\u0011\u0001o]\u0007\u0002c*\u0011!\u000fG\u0001\u0007yI|w\u000e\u001e \n\u0003%I!a\u0002\u0005\n\u0005Y4\u0011aB7vi\u0006\u0014G.Z\u0005\u0003qf\u000ca\"\u00168s_2dW\r\u001a\"vM\u001a,\'O\u0003\u0002w\r%\u00111\u0010 \u0002\t+:\u0014x\u000e\u001c7fI*\u0011\u00010\u001f\u0005\t}f\u0013\t\u0011)A\u0005\u007f\u0006!!o\\8u!\r\t\u0012N\u000c\u0005\u000b\u0003\u0007I&\u0011!Q\u0001\n\u0005\u0015\u0011AB8gMN,G\u000fE\u0002\u0012\u0003\u000fI1!!\u0003\t\u0005\rIe\u000e\u001e\u0005\u000b\u0003\u001bI&\u0011!Q\u0001\n\u0005\u0015\u0011a\u00025po6\u000cg.\u001f\u0005\u0007Se#\t!!\u0005\u0015\u0013\u0015\u000c\u0019\"!\u0006\u0002\u0018\u0005e\u0001BB4\u0002\u0010\u0001\u0007\u0001\u000e\u0003\u0004\u007f\u0003\u001f\u0001\ra \u0005\t\u0003\u0007\ty\u00011\u0001\u0002\u0006!A\u0011QBA\u0008\u0001\u0004\t)\u0001\u0003\u0005=3\u0002\u0007I\u0011AA\u000f+\u0005\u0011\u0007\"CA\u00113\u0002\u0007I\u0011AA\u0012\u0003)\u0011Xm];mi~#S-\u001d\u000b\u0004E\u0006\u0015\u0002\"CA\u0014\u0003?\t\t\u00111\u0001c\u0003\rAH%\r\u0005\u0008\u0003WI\u0006\u0015)\u0003c\u0003\u001d\u0011Xm];mi\u0002BC!!\u000b\u00020A\u0019\u0011#!\r\n\u0007\u0005M\u0002B\u0001\u0005w_2\u000cG/\u001b7f\u0011\u001d\t9$\u0017C\u0001\u0003s\tA\u0001\\3bMR\u0019!-a\u000f\t\u0011\u0005u\u0012Q\u0007a\u0001\u0003\u007f\tA\u0001\u001d:fmB!\u0011#!\u0011c\u0013\r\t\u0019\u0005\u0003\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f\u0005\u001d\u0013\u000c\"\u0003\u0002J\u0005Q1M]3bi\u0016$&/[3\u0015\u00079\nY\u0005C\u0004\u0002N\u0005\u0015\u0003\u0019A6\u0002\u000b\u0015dW-\\:\t\u000f\u0005E\u0013\u000c\"\u0001\u0002T\u0005)1\u000f\u001d7jiV\u0011\u0011Q\u000b\t\u0005_\u0005]S-C\u0002\u0002ZA\u0012A\u0001T5ti\"9\u0011QL-\u0005\u0002\u0005}\u0013AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!!\u0019\u0011\u0007E\t\u0019\'C\u0002\u0002f!\u0011qAQ8pY\u0016\u000cgN\u0002\u0004\u0002j\u0001\u0001\u00111\u000e\u0002\u0012\u0007J,\u0017\r^3He>,\u0008/\u001a3Ue&,W\u0003BA7\u0003k\u001aR!a\u001a]\u0003_\u0002R!\u00041c\u0003c\u0002R\u0001OA4\u0003g\u00022!FA;\t\u0019)\u0015q\rb\u00013!Qq)a\u001a\u0003\u0002\u0003\u0006I!!\u001f\u0011\tEI\u00151\u0010\t\u0006\u001b1\u0003\u00131\u000f\u0005\nO\u0006\u001d$\u0011!Q\u0001\n!D!B`A4\u0005\u0003\u0005\u000b\u0011BAA!\u0011\t\u0012.a!\u0011\t=\nD\u0003\u0018\u0005\u000c\u0003\u0007\t9G!A!\u0002\u0013\t)\u0001C\u0006\u0002\u000e\u0005\u001d$\u0011!Q\u0001\n\u0005\u0015\u0001bB\u0015\u0002h\u0011\u0005\u00111\u0012\u000b\r\u0003c\ni)a$\u0002\u0012\u0006M\u0015Q\u0013\u0005\u0008\u000f\u0006%\u0005\u0019AA=\u0011\u00199\u0017\u0011\u0012a\u0001Q\"9a0!#A\u0002\u0005\u0005\u0005\u0002CA\u0002\u0003\u0013\u0003\r!!\u0002\t\u0011\u00055\u0011\u0011\u0012a\u0001\u0003\u000bA\u0011\u0002PA4\u0001\u0004%\t!!\u0008\t\u0015\u0005\u0005\u0012q\ra\u0001\n\u0003\tY\nF\u0002c\u0003;C\u0011\"a\n\u0002\u001a\u0006\u0005\t\u0019\u00012\t\u0011\u0005-\u0012q\rQ!\n\tDC!a(\u00020!A\u0011qGA4\t\u0003\t)\u000bF\u0002c\u0003OC\u0001\"!\u0010\u0002$\u0002\u0007\u0011q\u0008\u0005\t\u0003W\u000b9\u0007\"\u0003\u0002.\u0006\t2M]3bi\u0016<%o\\;qK\u0012$&/[3\u0015\t\u0005=\u0016\u0011\u0017\t\u0006_E\"\u00121\u000f\u0005\u0008\u0003\u001b\nI\u000b1\u0001l\u0011!\t),a\u001a\u0005\n\u0005]\u0016!E3wC2,\u0018\r^3D_6\u0014\u0017N\\3sgR!\u0011qVA]\u0011!\tY,a-A\u0002\u0005u\u0016\u0001\u0002;sS\u0016\u0004RaL\u0019\u0015\u0003wB\u0001\"!\u0015\u0002h\u0011\u0005\u0011\u0011Y\u000b\u0003\u0003\u0007\u0004RaLA,\u0003cB\u0001\"!\u0018\u0002h\u0011\u0005\u0011qL\u0004\t\u0003\u0013\u0014\u0001\u0012\u0001\u0003\u0002L\u0006y\u0001*Y:i\u001b\u0006\u00048i\\7cS:,\'\u000fE\u0002%\u0003\u001b4q!\u0001\u0002\t\u0002\u0011\tymE\u0002\u0002NrCq!KAg\t\u0003\t\u0019\u000e\u0006\u0002\u0002L\"A\u0011q[Ag\t\u0003\tI.A\u0003baBd\u00170\u0006\u0004\u0002\\\u0006\u0005\u0018Q]\u000b\u0003\u0003;\u0004b\u0001\n\u0001\u0002`\u0006\r\u0008cA\u000b\u0002b\u00121q#!6C\u0002e\u00012!FAs\t\u0019\u0011\u0013Q\u001bb\u00013!Y\u0011\u0011^Ag\u0005\u0004%\tAAAv\u0003!\u0011xn\u001c;cSR\u001cXCAA\u0003\u0011%\ty/!4!\u0002\u0013\t)!A\u0005s_>$(-\u001b;tA!Y\u00111_Ag\u0005\u0004%\tAAAv\u0003!\u0011xn\u001c;tSj,\u0007\"CA|\u0003\u001b\u0004\u000b\u0011BA\u0003\u0003%\u0011xn\u001c;tSj,\u0007\u0005"
.end annotation


# instance fields
.field private final emptyTrie:Lscala/collection/immutable/HashMap;
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

    .line 156
    sget-object v0, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootsize()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/parallel/BucketCombiner;-><init>(I)V

    .line 159
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner;->emptyTrie:Lscala/collection/immutable/HashMap;

    return-void
.end method

.method public static apply()Lscala/collection/parallel/immutable/HashMapCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$;->apply()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 155
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 155
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/immutable/HashMapCombiner;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->sz()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/immutable/HashMapCombiner;->sz_$eq(I)V

    .line 163
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->emptyTrie()Lscala/collection/immutable/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 165
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/UnrolledBuffer;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Lscala/Tuple2;

    invoke-virtual {v3, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    aput-object v2, v1, v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    return-object p0
.end method

.method public emptyTrie()Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner;->emptyTrie:Lscala/collection/immutable/HashMap;

    return-object v0
.end method

.method public groupByKey(Lscala/Function0;)Lscala/collection/parallel/immutable/ParHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Repr:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TV;TRepr;>;>;)",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TRepr;>;"
        }
    .end annotation

    .line 197
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$4;

    invoke-direct {v2, p0}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$4;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    invoke-interface {v1, v2}, Lscala/collection/mutable/ArrayOps;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$5;

    invoke-direct {v1, p0}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$5;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v3, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    .line 198
    array-length v0, v4

    new-array v0, v0, [Lscala/collection/immutable/HashMap;

    .line 200
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v8

    new-instance v9, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;

    array-length v7, v4

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;Lscala/Function0;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V

    invoke-interface {v8, v9}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 204
    :goto_0
    sget-object v3, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v3}, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootsize()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 205
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    shl-int v3, v4, v1

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$6;

    invoke-direct {v5, p0}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$6;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    invoke-interface {v1, v3, v5}, Lscala/collection/mutable/ArrayOps;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    .line 210
    new-instance p1, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {p1}, Lscala/collection/parallel/immutable/ParHashMap;-><init>()V

    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_3

    .line 211
    new-instance v1, Lscala/collection/parallel/immutable/ParHashMap;

    aget-object p1, v0, p1

    invoke-direct {v1, p1}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    move-object p1, v1

    goto :goto_1

    .line 213
    :cond_3
    new-instance p1, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-direct {p1, v2, v0, v1}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    .line 214
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {v0, p1}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->result()Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/immutable/ParHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 175
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$1;

    invoke-direct {v2, p0}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$1;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    invoke-interface {v1, v2}, Lscala/collection/mutable/ArrayOps;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$2;

    invoke-direct {v1, p0}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$2;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v3, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    .line 176
    array-length v0, v3

    new-array v0, v0, [Lscala/collection/immutable/HashMap;

    .line 178
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v7

    new-instance v8, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;

    array-length v6, v3

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/immutable/HashMapCombiner$CreateTrie;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;[Lscala/collection/immutable/HashMap;II)V

    invoke-interface {v7, v8}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 182
    :goto_0
    sget-object v4, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-virtual {v4}, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootsize()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 183
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v4

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    shl-int v4, v5, v2

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$3;

    invoke-direct {v6, p0}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$3;-><init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    invoke-interface {v2, v4, v6}, Lscala/collection/mutable/ArrayOps;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    .line 188
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/ParHashMap;-><init>()V

    goto :goto_1

    :cond_2
    if-ne v2, v5, :cond_3

    .line 189
    new-instance v2, Lscala/collection/parallel/immutable/ParHashMap;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    move-object v0, v2

    goto :goto_1

    .line 191
    :cond_3
    new-instance v1, Lscala/collection/immutable/HashMap$HashTrieMap;

    invoke-direct {v1, v3, v0, v2}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    .line 192
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap;

    invoke-direct {v0, v1}, Lscala/collection/parallel/immutable/ParHashMap;-><init>(Lscala/collection/immutable/HashMap;)V

    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "HashTrieCombiner(sz: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/HashMapCombiner;->size()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
