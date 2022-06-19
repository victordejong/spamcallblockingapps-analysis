.class public abstract Lscala/collection/parallel/mutable/ParHashMapCombiner;
.super Lscala/collection/parallel/BucketCombiner;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable$HashUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;,
        Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;
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
        "Lscala/collection/parallel/mutable/ParHashMap<",
        "TK;TV;>;",
        "Lscala/collection/mutable/DefaultEntry<",
        "TK;TV;>;",
        "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
        "TK;TV;>;>;",
        "Lscala/collection/mutable/HashTable$HashUtils<",
        "TK;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\rhAB\u0001\u0003\u0003\u0003\u0011!B\u0001\nQCJD\u0015m\u001d5NCB\u001cu.\u001c2j]\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\u000c\'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b+\rYa#I\n\u0004\u00011i\u0003CB\u0007\u000f!\r:C&D\u0001\u0005\u0013\tyAA\u0001\u0008Ck\u000e\\W\r^\"p[\nLg.\u001a:\u0011\tE\u0011B\u0003I\u0007\u0002\u0011%\u00111\u0003\u0003\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0005U1B\u0002\u0001\u0003\u0006/\u0001\u0011\r!\u0007\u0002\u0002\u0017\u000e\u0001\u0011C\u0001\u000e\u001e!\t\t2$\u0003\u0002\u001d\u0011\t9aj\u001c;iS:<\u0007CA\t\u001f\u0013\ty\u0002BA\u0002B]f\u0004\"!F\u0011\u0005\u000b\t\u0002!\u0019A\r\u0003\u0003Y\u0003B\u0001J\u0013\u0015A5\t!!\u0003\u0002\'\u0005\tQ\u0001+\u0019:ICNDW*\u00199\u0011\t!RC\u0003I\u0007\u0002S)\u00111AB\u0005\u0003W%\u0012A\u0002R3gCVdG/\u00128uef\u0004B\u0001\n\u0001\u0015AA\u0019aF\u000f\u000b\u000f\u0005=BdB\u0001\u00198\u001d\t\tdG\u0004\u00023k5\t1G\u0003\u000251\u00051AH]8pizJ\u0011!C\u0005\u0003\u000f!I!a\u0001\u0004\n\u0005eJ\u0013!\u0003%bg\"$\u0016M\u00197f\u0013\tYDHA\u0005ICNDW\u000b^5mg*\u0011\u0011(\u000b\u0005\t}\u0001\u0011)\u0019!C\u0005\u007f\u0005yA/\u00192mK2{\u0017\r\u001a$bGR|\'/F\u0001A!\t\t\u0012)\u0003\u0002C\u0011\t\u0019\u0011J\u001c;\t\u0011\u0011\u0003!\u0011!Q\u0001\n\u0001\u000b\u0001\u0003^1cY\u0016du.\u00193GC\u000e$xN\u001d\u0011\t\u000b\u0019\u0003A\u0011A$\u0002\rqJg.\u001b;?)\ta\u0003\nC\u0003?\u000b\u0002\u0007\u0001\tC\u0004K\u0001\t\u0007I\u0011B \u0002\u00159|g.\\1tW2,g\u000e\u0003\u0004M\u0001\u0001\u0006I\u0001Q\u0001\u000c]>tW.Y:lY\u0016t\u0007\u0005C\u0004O\u0001\t\u0007I\u0011B \u0002\u0013M,W\r\u001a<bYV,\u0007B\u0002)\u0001A\u0003%\u0001)\u0001\u0006tK\u0016$g/\u00197vK\u0002BQA\u0015\u0001\u0005\u0002M\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003)Vk\u0011\u0001\u0001\u0005\u0006-F\u0003\r\u0001E\u0001\u0005K2,W\u000eC\u0003Y\u0001\u0011\u0005\u0011,\u0001\u0004sKN,H\u000e\u001e\u000b\u0002G\u0019!1\u000c\u0001\u0001]\u0005)1\u0015\u000e\u001c7CY>\u001c7n]\n\u00045v\u0003\u0007CA\t_\u0013\ty\u0006B\u0001\u0004B]f\u0014VM\u001a\t\u0005\u001b\u0005\u00045-\u0003\u0002c\t\t!A+Y:l!\t!&\u000c\u0003\u0005f5\n\u0005\t\u0015!\u0003g\u0003\u001d\u0011WoY6fiN\u00042!E4j\u0013\tA\u0007BA\u0003BeJ\u000c\u0017\u0010E\u0002k[\u001er!\u0001K6\n\u00051L\u0013AD+oe>dG.\u001a3Ck\u001a4WM]\u0005\u0003]>\u0014\u0001\"\u00168s_2dW\r\u001a\u0006\u0003Y&B\u0001\"\u001d.\u0003\u0002\u0003\u0006IA]\u0001\u0006i\u0006\u0014G.\u001a\t\u0003)N4Q\u0001\u001e\u0001\u0001\u0001U\u0014q\"\u00113eS:<\u0007*Y:i)\u0006\u0014G.Z\n\u0004gv3\u0008\u0003\u0002\u0015x)\u001dJ!\u0001_\u0015\u0003\u0013!\u000b7\u000f\u001b+bE2,\u0007\u0002\u0003>t\u0005\u0003\u0005\u000b\u0011\u0002!\u0002\u00119,X.\u001a7f[ND\u0001\u0002`:\u0003\u0002\u0003\u0006I\u0001Q\u0001\u0003Y\u001aD\u0001B`:\u0003\u0002\u0003\u0006I\u0001Q\u0001\u000b?N,W\r\u001a<bYV,\u0007B\u0002$t\t\u0003\t\t\u0001F\u0004s\u0003\u0007\t)!a\u0002\t\u000bi|\u0008\u0019\u0001!\t\u000bq|\u0008\u0019\u0001!\t\u000by|\u0008\u0019\u0001!\t\u000f\u0005-1\u000f\"\u0001\u0002\u000e\u000591/\u001a;TSj,G\u0003BA\u0008\u0003+\u00012!EA\t\u0013\r\t\u0019\u0002\u0003\u0002\u0005+:LG\u000fC\u0004\u0002\u0018\u0005%\u0001\u0019\u0001!\u0002\u0005MT\u0008bBA\u000eg\u0012\u0005\u0011QD\u0001\u000cS:\u001cXM\u001d;F]R\u0014\u0018\u0010\u0006\u0003\u0002 \u0005\u0015\u0002cA\t\u0002\"%\u0019\u00111\u0005\u0005\u0003\u000f\t{w\u000e\\3b]\"9\u0011qEA\r\u0001\u00049\u0013!A3\t\u000f\u0005-2\u000f\"\u0005\u0002.\u0005q1M]3bi\u0016tUm^#oiJLX\u0003BA\u0018\u0003w!RAGA\u0019\u0003kAq!a\r\u0002*\u0001\u0007A#A\u0002lKfD\u0001\"a\u000e\u0002*\u0001\u0007\u0011\u0011H\u0001\u0002qB\u0019Q#a\u000f\u0005\u000f\u0005u\u0012\u0011\u0006b\u00013\t\t\u0001\u000cC\u0005\u0002Bi\u0013\t\u0011)A\u0005\u0001\u00061qN\u001a4tKRD\u0011\"!\u0012[\u0005\u0003\u0005\u000b\u0011\u0002!\u0002\u000f!|w/\\1os\"1aI\u0017C\u0001\u0003\u0013\"\u0012bYA&\u0003\u001b\ny%!\u0015\t\r\u0015\u000c9\u00051\u0001g\u0011\u0019\t\u0018q\ta\u0001e\"9\u0011\u0011IA$\u0001\u0004\u0001\u0005bBA#\u0003\u000f\u0002\r\u0001\u0011\u0005\u00081j\u0003\r\u0011\"\u0001@\u0011%\t9F\u0017a\u0001\n\u0003\tI&\u0001\u0006sKN,H\u000e^0%KF$B!a\u0004\u0002\\!I\u0011QLA+\u0003\u0003\u0005\r\u0001Q\u0001\u0004q\u0012\n\u0004bBA15\u0002\u0006K\u0001Q\u0001\u0008e\u0016\u001cX\u000f\u001c;!\u0011\u001d\t)G\u0017C\u0001\u0003O\nA\u0001\\3bMR!\u0011qBA5\u0011!\tY\'a\u0019A\u0002\u00055\u0014\u0001\u00029sKZ\u0004B!EA8\u0001&\u0019\u0011\u0011\u000f\u0005\u0003\r=\u0003H/[8o\u0011\u001d\t)H\u0017C\u0005\u0003o\n\u0011BZ5mY\ncwnY6\u0015\u000b\u0001\u000bI(! \t\u000f\u0005m\u00141\u000fa\u0001\u0001\u0006)!\r\\8dW\"9\u0011qPA:\u0001\u0004I\u0017!B3mK6\u001c\u0008bBAB5\u0012\u0005\u0011QQ\u0001\u0006gBd\u0017\u000e^\u000b\u0003\u0003\u000f\u0003R!!#\u0002\u0010\u000el!!a#\u000b\u0007\u00055e!A\u0005j[6,H/\u00192mK&!\u0011\u0011SAF\u0005\u0011a\u0015n\u001d;\t\u000f\u0005U%\u000c\"\u0011\u0002\u0018\u0006)Q.\u001a:hKR!\u0011qBAM\u0011\u001d\tY*a%A\u0002\r\u000cA\u0001\u001e5bi\"9\u0011q\u0014.\u0005\u0002\u0005\u0005\u0016AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!a\u0008\u0008\u0011\u0005\u0015&\u0001#\u0001\u0005\u0003O\u000b!\u0003U1s\u0011\u0006\u001c\u0008.T1q\u0007>l\'-\u001b8feB\u0019A%!+\u0007\u000f\u0005\u0011\u0001\u0012\u0001\u0003\u0002,N\u0019\u0011\u0011V/\t\u000f\u0019\u000bI\u000b\"\u0001\u00020R\u0011\u0011q\u0015\u0005\u000b\u0003g\u000bIK1A\u0005\u0002\ty\u0014\u0001\u00053jg\u000e\u0014\u0018.\\5oC:$(-\u001b;t\u0011!\t9,!+!\u0002\u0013\u0001\u0015!\u00053jg\u000e\u0014\u0018.\\5oC:$(-\u001b;tA!Q\u00111XAU\u0005\u0004%\tAA \u0002\u00139,XN\u00197pG.\u001c\u0008\u0002CA`\u0003S\u0003\u000b\u0011\u0002!\u0002\u00159,XN\u00197pG.\u001c\u0008\u0005\u0003\u0006\u0002D\u0006%&\u0019!C\u0001\u0005}\n\u0001\u0003Z5tGJLW.\u001b8b]Rl\u0017m]6\t\u0011\u0005\u001d\u0017\u0011\u0016Q\u0001\n\u0001\u000b\u0011\u0003Z5tGJLW.\u001b8b]Rl\u0017m]6!\u0011)\tY-!+C\u0002\u0013\u0005!aP\u0001\u000e]>tW.Y:lY\u0016tw\r\u001e5\t\u0011\u0005=\u0017\u0011\u0016Q\u0001\n\u0001\u000baB\\8o[\u0006\u001c8\u000e\\3oORD\u0007\u0005\u0003\u0005\u0002T\u0006%F\u0011AAk\u0003\u0015\t\u0007\u000f\u001d7z+\u0019\t9.!8\u0002bV\u0011\u0011\u0011\u001c\t\u0007I\u0001\tY.a8\u0011\u0007U\ti\u000e\u0002\u0004\u0018\u0003#\u0014\r!\u0007\t\u0004+\u0005\u0005HA\u0002\u0012\u0002R\n\u0007\u0011\u0004"
.end annotation


# instance fields
.field private final nonmasklen:I

.field private final seedvalue:I

.field private final tableLoadFactor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 159
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner;->tableLoadFactor:I

    .line 160
    sget-object p1, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->numblocks()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/parallel/BucketCombiner;-><init>(I)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    .line 163
    sget-object p1, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->nonmasklength()I

    move-result p1

    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner;->nonmasklen:I

    const/16 p1, 0x1b

    .line 164
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner;->seedvalue:I

    return-void
.end method

.method public static apply()Lscala/collection/parallel/mutable/ParHashMapCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object v0

    return-object v0
.end method

.method private nonmasklen()I
    .locals 1

    .line 163
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner;->nonmasklen:I

    return v0
.end method

.method private scala$collection$parallel$mutable$ParHashMapCombiner$$table$1$lzycompute(Lscala/runtime/VolatileObjectRef;)Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/VolatileObjectRef;",
            ")",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;"
        }
    .end annotation

    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;-><init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;)V

    iput-object v0, p1, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private seedvalue()I
    .locals 1

    .line 164
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner;->seedvalue:I

    return v0
.end method

.method private tableLoadFactor()I
    .locals 1

    .line 159
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashMapCombiner;->tableLoadFactor:I

    return v0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 159
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 159
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParHashMapCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParHashMapCombiner;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->sz()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->sz_$eq(I)V

    .line 168
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->seedvalue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->improve(II)I

    move-result v0

    .line 169
    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->nonmasklen()I

    move-result v1

    ushr-int/2addr v0, v1

    .line 170
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/UnrolledBuffer;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {v3, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    aput-object v2, v1, v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v0, v1, v0

    new-instance v1, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/collection/mutable/DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    return-object p0
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 159
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$HashUtils$class;->elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final improve(II)I
    .locals 0

    .line 159
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->result()Lscala/collection/parallel/mutable/ParHashMap;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/mutable/ParHashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->size()I

    move-result v0

    sget-object v1, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->numblocks()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->sizeMapBucketSize()I

    move-result v2

    mul-int v1, v1, v2

    if-lt v0, v1, :cond_0

    .line 181
    new-instance v0, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->size()I

    move-result v1

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->tableLoadFactor()I

    move-result v2

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->seedvalue()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;-><init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;III)V

    .line 182
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$4;

    invoke-direct {v2, p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$4;-><init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;)V

    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v4, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v5, Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    invoke-virtual {v4, v5}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    .line 183
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v1

    new-instance v8, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;

    const/4 v6, 0x0

    array-length v7, v4

    move-object v2, v8

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lscala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks;-><init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;[Lscala/collection/mutable/UnrolledBuffer$Unrolled;Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;II)V

    invoke-interface {v1, v8}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    .line 184
    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->setSize(I)V

    .line 186
    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable;->hashTableContents()Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    .line 187
    new-instance v1, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-direct {v1, v0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lscala/runtime/VolatileObjectRef;->zero()Lscala/runtime/VolatileObjectRef;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    :goto_0
    sget-object v2, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashMapCombiner$;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParHashMapCombiner$;->numblocks()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 199
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    new-instance v3, Lscala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$result$1;

    invoke-direct {v3, p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$result$1;-><init>(Lscala/collection/parallel/mutable/ParHashMapCombiner;Lscala/runtime/VolatileObjectRef;)V

    invoke-virtual {v2, v3}, Lscala/collection/mutable/UnrolledBuffer;->foreach(Lscala/Function1;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_2
    new-instance v1, Lscala/collection/parallel/mutable/ParHashMap;

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->scala$collection$parallel$mutable$ParHashMapCombiner$$table$1(Lscala/runtime/VolatileObjectRef;)Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;->hashTableContents()Lscala/collection/mutable/HashTable$Contents;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/collection/parallel/mutable/ParHashMap;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    :goto_1
    return-object v1
.end method

.method public final scala$collection$parallel$mutable$ParHashMapCombiner$$table$1(Lscala/runtime/VolatileObjectRef;)Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;"
        }
    .end annotation

    .line 191
    iget-object v0, p1, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/parallel/mutable/ParHashMapCombiner;->scala$collection$parallel$mutable$ParHashMapCombiner$$table$1$lzycompute(Lscala/runtime/VolatileObjectRef;)Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Lscala/collection/parallel/mutable/ParHashMapCombiner$table$2$;

    :goto_0
    return-object p1
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 159
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method
