.class public abstract Lscala/collection/parallel/mutable/ParHashSetCombiner;
.super Lscala/collection/parallel/BucketCombiner;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/collection/mutable/FlatHashTable$HashUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;,
        Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/parallel/BucketCombiner<",
        "TT;",
        "Lscala/collection/parallel/mutable/ParHashSet<",
        "TT;>;",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
        "TT;>;>;",
        "Lscala/collection/mutable/FlatHashTable$HashUtils<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tuaAB\u0001\u0003\u0003\u0003\u0011!B\u0001\nQCJD\u0015m\u001d5TKR\u001cu.\u001c2j]\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\u000c\'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b+\tY!cE\u0002\u0001\u0019\u0015\u0002b!\u0004\u0008\u0011;\u0005\"S\"\u0001\u0003\n\u0005=!!A\u0004\"vG.,GoQ8nE&tWM\u001d\t\u0003#Ia\u0001\u0001B\u0003\u0014\u0001\t\u0007QCA\u0001U\u0007\u0001\t\"A\u0006\u000e\u0011\u0005]AR\"\u0001\u0005\n\u0005eA!a\u0002(pi\"Lgn\u001a\t\u0003/mI!\u0001\u0008\u0005\u0003\u0007\u0005s\u0017\u0010E\u0002\u001f?Ai\u0011AA\u0005\u0003A\t\u0011!\u0002U1s\u0011\u0006\u001c\u0008nU3u!\t9\"%\u0003\u0002$\u0011\t1\u0011I\\=SK\u001a\u00042A\u0008\u0001\u0011!\r13\u0007\u0005\u0008\u0003OAr!\u0001K\u0018\u000f\u0005%rcB\u0001\u0016.\u001b\u0005Y#B\u0001\u0017\u0015\u0003\u0019a$o\\8u}%\t\u0011\"\u0003\u0002\u0008\u0011%\u00111AB\u0005\u0003cI\nQB\u00127bi\"\u000b7\u000f\u001b+bE2,\'BA\u0002\u0007\u0013\t!TGA\u0005ICNDW\u000b^5mg*\u0011\u0011G\r\u0005\to\u0001\u0011)\u0019!C\u0005q\u0005yA/\u00192mK2{\u0017\r\u001a$bGR|\'/F\u0001:!\t9\"(\u0003\u0002<\u0011\t\u0019\u0011J\u001c;\t\u0011u\u0002!\u0011!Q\u0001\ne\n\u0001\u0003^1cY\u0016du.\u00193GC\u000e$xN\u001d\u0011\t\u000b}\u0002A\u0011\u0001!\u0002\rqJg.\u001b;?)\t!\u0013\tC\u00038}\u0001\u0007\u0011\u0008C\u0004D\u0001\t\u0007I\u0011\u0002\u001d\u0002\u00159|g.\\1tW2,g\u000e\u0003\u0004F\u0001\u0001\u0006I!O\u0001\u000c]>tW.Y:lY\u0016t\u0007\u0005C\u0004H\u0001\t\u0007I\u0011\u0002\u001d\u0002\u0013M,W\r\u001a<bYV,\u0007BB%\u0001A\u0003%\u0011(\u0001\u0006tK\u0016$g/\u00197vK\u0002BQa\u0013\u0001\u0005\u00021\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u001b:k\u0011\u0001\u0001\u0005\u0006\u001f*\u0003\r\u0001E\u0001\u0005K2,W\u000eC\u0003R\u0001\u0011\u0005!+\u0001\u0004sKN,H\u000e\u001e\u000b\u0002;!)A\u000b\u0001C\u0005+\u0006Y\u0001/\u0019:Q_B,H.\u0019;f+\u00051\u0006cA,Z!9\u0011\u0001\u000cM\u0007\u0002e%\u0011!,\u000e\u0002\t\u0007>tG/\u001a8ug\")A\u000c\u0001C\u0005+\u0006Y1/Z9Q_B,H.\u0019;f\r\u0011q\u0006\u0001A0\u0003\'\u0005#G-\u001b8h\r2\u000cG\u000fS1tQR\u000b\'\r\\3\u0014\u0007u\u000b\u0003\rE\u0002YCBI!A\u0019\u001a\u0003\u001b\u0019c\u0017\r\u001e%bg\"$\u0016M\u00197f\u0011!!WL!A!\u0002\u0013I\u0014\u0001\u00038v[\u0016dW-\\:\t\u0011\u0019l&\u0011!Q\u0001\ne\n!\u0001\u001c4\t\u0011!l&\u0011!Q\u0001\ne\n1\"\u001b8tK\u0016$g/\u00197vK\")q(\u0018C\u0001UR!1\u000e\\7o!\tiU\u000cC\u0003eS\u0002\u0007\u0011\u0008C\u0003gS\u0002\u0007\u0011\u0008C\u0003iS\u0002\u0007\u0011\u0008C\u0003q;\u0012\u0005\u0013/\u0001\u0005u_N#(/\u001b8h)\u0005\u0011\u0008CA:w\u001d\t9B/\u0003\u0002v\u0011\u00051\u0001K]3eK\u001aL!a\u001e=\u0003\rM#(/\u001b8h\u0015\t)\u0008\u0002C\u0003{;\u0012\u0005\u0001(A\u0006uC\ndW\rT3oORD\u0007\"\u0002?^\t\u0003i\u0018aB:fiNK\'0\u001a\u000b\u0004}\u0006\r\u0001CA\u000c\u0000\u0013\r\t\t\u0001\u0003\u0002\u0005+:LG\u000f\u0003\u0004\u0002\u0006m\u0004\r!O\u0001\u0003gjDq!!\u0003^\t\u0003\tY!A\u0006j]N,\'\u000f^#oiJLHcB\u001d\u0002\u000e\u0005E\u0011Q\u0003\u0005\u0008\u0003\u001f\t9\u00011\u0001:\u0003!Ign]3si\u0006#\u0008bBA\n\u0003\u000f\u0001\r!O\u0001\u000cG>lWm\u001d\"fM>\u0014X\rC\u0004\u0002\u0018\u0005\u001d\u0001\u0019A\u0011\u0002\u00119,w/\u00128uef4a!a\u0007\u0001\u0001\u0005u!A\u0003$jY2\u0014En\\2lgN)\u0011\u0011D\u0011\u0002 A9Q\"!\t\u0002&\u0005E\u0012bAA\u0012\t\t!A+Y:l!\u00199\u0012qE\u001d\u0002,%\u0019\u0011\u0011\u0006\u0005\u0003\rQ+\u0008\u000f\\33!\u0011A\u0016QF\u0011\n\u0007\u0005=\"G\u0001\u0008V]J|G\u000e\\3e\u0005V4g-\u001a:\u0011\u00075\u000bI\u0002C\u0006\u00026\u0005e!\u0011!Q\u0001\n\u0005]\u0012a\u00022vG.,Go\u001d\t\u0006/\u0005e\u00121F\u0005\u0004\u0003wA!!B!se\u0006L\u0008BCA \u00033\u0011\t\u0011)A\u0005W\u0006)A/\u00192mK\"Q\u00111IA\r\u0005\u000b\u0007I\u0011\u0001\u001d\u0002\r=4gm]3u\u0011)\t9%!\u0007\u0003\u0002\u0003\u0006I!O\u0001\u0008_\u001a47/\u001a;!\u0011)\tY%!\u0007\u0003\u0006\u0004%\t\u0001O\u0001\u0008Q><X.\u00198z\u0011)\ty%!\u0007\u0003\u0002\u0003\u0006I!O\u0001\tQ><X.\u00198zA!9q(!\u0007\u0005\u0002\u0005MCCCA\u0019\u0003+\n9&!\u0017\u0002\\!A\u0011QGA)\u0001\u0004\t9\u0004C\u0004\u0002@\u0005E\u0003\u0019A6\t\u000f\u0005\r\u0013\u0011\u000ba\u0001s!9\u00111JA)\u0001\u0004I\u0004\"C)\u0002\u001a\u0001\u0007I\u0011AA0+\t\t)\u0003\u0003\u0006\u0002d\u0005e\u0001\u0019!C\u0001\u0003K\n!B]3tk2$x\u000cJ3r)\rq\u0018q\r\u0005\u000b\u0003S\n\t\'!AA\u0002\u0005\u0015\u0012a\u0001=%c!I\u0011QNA\rA\u0003&\u0011QE\u0001\u0008e\u0016\u001cX\u000f\u001c;!\u0011!\t\t(!\u0007\u0005\u0002\u0005M\u0014\u0001\u00027fC\u001a$2A`A;\u0011!\t9(a\u001cA\u0002\u0005e\u0014\u0001\u00029sKZ\u0004RaFA>\u0003KI1!! \t\u0005\u0019y\u0005\u000f^5p]\"I\u0011\u0011QA\r\u0005\u0004%I\u0001O\u0001\nE2|7m[:ju\u0016D\u0001\"!\"\u0002\u001a\u0001\u0006I!O\u0001\u000bE2|7m[:ju\u0016\u0004\u0003\u0002CAE\u00033!I!a#\u0002\u0015\tdwnY6Ti\u0006\u0014H\u000fF\u0002:\u0003\u001bCq!a$\u0002\u0008\u0002\u0007\u0011(A\u0003cY>\u001c7\u000e\u0003\u0005\u0002\u0014\u0006eA\u0011BAK\u00039qW\r\u001f;CY>\u001c7n\u0015;beR$2!OAL\u0011\u001d\ty)!%A\u0002eB\u0001\"a\'\u0002\u001a\u0011%\u0011QT\u0001\nM&dGN\u00117pG.$\u0002\"!\n\u0002 \u0006\u0005\u0016Q\u0015\u0005\u0008\u0003\u001f\u000bI\n1\u0001:\u0011!\t\u0019+!\'A\u0002\u0005-\u0012!B3mK6\u001c\u0008\u0002CAT\u00033\u0003\r!a\u000b\u0002\u00131,g\r^8wKJ\u001c\u0008\u0002CAV\u00033!I!!,\u0002\u0013%t7/\u001a:u\u00032dG\u0003CA\u0013\u0003_\u000b\u0019,a.\t\u000f\u0005E\u0016\u0011\u0016a\u0001s\u0005)\u0011\r\u001e)pg\"9\u0011QWAU\u0001\u0004I\u0014!\u00032fM>\u0014X\rU8t\u0011!\t\u0019+!+A\u0002\u0005-\u0002\u0002CA^\u00033!\t!!0\u0002\u000bM\u0004H.\u001b;\u0016\u0005\u0005}\u0006CBAa\u0003\u000f\u000c\t$\u0004\u0002\u0002D*\u0019\u0011Q\u0019\u0004\u0002\u0013%lW.\u001e;bE2,\u0017\u0002BAe\u0003\u0007\u0014A\u0001T5ti\"A\u0011QZA\r\t\u0003\ny-A\u0003nKJ<W\rF\u0002\u007f\u0003#D\u0001\"a5\u0002L\u0002\u0007\u0011\u0011G\u0001\u0005i\"\u000cG\u000f\u0003\u0005\u0002X\u0006eA\u0011AAm\u0003I\u0019\u0008n\\;mIN\u0003H.\u001b;GkJ$\u0008.\u001a:\u0016\u0005\u0005m\u0007cA\u000c\u0002^&\u0019\u0011q\u001c\u0005\u0003\u000f\t{w\u000e\\3b]\u001eA\u00111\u001d\u0002\t\u0002\u0011\t)/\u0001\nQCJD\u0015m\u001d5TKR\u001cu.\u001c2j]\u0016\u0014\u0008c\u0001\u0010\u0002h\u001a9\u0011A\u0001E\u0001\t\u0005%8cAAtC!9q(a:\u0005\u0002\u00055HCAAs\u0011)\t\t0a:C\u0002\u0013\u0005!\u0001O\u0001\u0011I&\u001c8M]5nS:\u000cg\u000e\u001e2jiND\u0001\"!>\u0002h\u0002\u0006I!O\u0001\u0012I&\u001c8M]5nS:\u000cg\u000e\u001e2jiN\u0004\u0003BCA}\u0003O\u0014\r\u0011\"\u0001\u0003q\u0005Ia.^7cY>\u001c7n\u001d\u0005\t\u0003{\u000c9\u000f)A\u0005s\u0005Qa.^7cY>\u001c7n\u001d\u0011\t\u0015\t\u0005\u0011q\u001db\u0001\n\u0003\u0011\u0001(\u0001\teSN\u001c\'/[7j]\u0006tG/\\1tW\"A!QAAtA\u0003%\u0011(A\teSN\u001c\'/[7j]\u0006tG/\\1tW\u0002B!B!\u0003\u0002h\n\u0007I\u0011\u0001\u00029\u00035qwN\\7bg.dWM\\4uQ\"A!QBAtA\u0003%\u0011(\u0001\u0008o_:l\u0017m]6mK:<G\u000f\u001b\u0011\t\u0011\tE\u0011q\u001dC\u0001\u0005\'\tQ!\u00199qYf,BA!\u0006\u0003\u001cU\u0011!q\u0003\t\u0005=\u0001\u0011I\u0002E\u0002\u0012\u00057!aa\u0005B\u0008\u0005\u0004)\u0002"
.end annotation


# instance fields
.field private final nonmasklen:I

.field private final scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue:I

.field private final tableLoadFactor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 120
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner;->tableLoadFactor:I

    .line 121
    sget-object p1, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->numblocks()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/parallel/BucketCombiner;-><init>(I)V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->$init$(Lscala/collection/mutable/FlatHashTable$HashUtils;)V

    .line 124
    sget-object p1, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->nonmasklength()I

    move-result p1

    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner;->nonmasklen:I

    const/16 p1, 0x1b

    .line 125
    iput p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner;->scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue:I

    return-void
.end method

.method public static apply()Lscala/collection/parallel/mutable/ParHashSetCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object v0

    return-object v0
.end method

.method private nonmasklen()I
    .locals 1

    .line 124
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner;->nonmasklen:I

    return v0
.end method

.method private parPopulate()Lscala/collection/mutable/FlatHashTable$Contents;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TT;>;"
        }
    .end annotation

    .line 148
    new-instance v6, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->size()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->tableLoadFactor()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue()I

    move-result v2

    invoke-direct {v6, p0, v0, v1, v2}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;III)V

    .line 149
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v7

    new-instance v8, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;[Lscala/collection/mutable/UnrolledBuffer;Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;II)V

    invoke-interface {v7, v8}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/UnrolledBuffer;

    const/4 v2, 0x0

    .line 150
    invoke-static {v2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v2

    .line 151
    new-instance v3, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;

    invoke-direct {v3, p0, v6, v2}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;Lscala/runtime/IntRef;)V

    invoke-virtual {v1, v3}, Lscala/collection/mutable/UnrolledBuffer;->foreach(Lscala/Function1;)V

    .line 152
    iget v1, v2, Lscala/runtime/IntRef;->elem:I

    add-int/2addr v1, v0

    invoke-virtual {v6, v1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->setSize(I)V

    .line 153
    invoke-virtual {v6}, Lscala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable;->hashTableContents()Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private seqPopulate()Lscala/collection/mutable/FlatHashTable$Contents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/FlatHashTable$Contents<",
            "TT;>;"
        }
    .end annotation

    .line 159
    new-instance v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner;)V

    .line 168
    invoke-interface {v0}, Lscala/collection/mutable/FlatHashTable;->hashTableContents()Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v0

    return-object v0
.end method

.method private tableLoadFactor()I
    .locals 1

    .line 120
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner;->tableLoadFactor:I

    return v0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParHashSetCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParHashSetCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->sz()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->sz_$eq(I)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->improve(II)I

    move-result v0

    .line 131
    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->nonmasklen()I

    move-result v1

    ushr-int/2addr v0, v1

    .line 132
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/UnrolledBuffer;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v3}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/mutable/UnrolledBuffer;-><init>(Lscala/reflect/ClassTag;)V

    aput-object v2, v1, v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->buckets()[Lscala/collection/mutable/UnrolledBuffer;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/UnrolledBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/UnrolledBuffer;

    return-object p0
.end method

.method public final elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->elemToEntry(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final entryToElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 120
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->entryToElem(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final improve(II)I
    .locals 0

    .line 120
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->improve(Lscala/collection/mutable/FlatHashTable$HashUtils;II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->result()Lscala/collection/parallel/mutable/ParHashSet;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/mutable/ParHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParHashSet<",
            "TT;>;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->size()I

    move-result v0

    sget-object v1, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->MODULE$:Lscala/collection/parallel/mutable/ParHashSetCombiner$;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$;->numblocks()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->sizeMapBucketSize()I

    move-result v2

    mul-int v1, v1, v2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->parPopulate()Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;->seqPopulate()Lscala/collection/mutable/FlatHashTable$Contents;

    move-result-object v0

    .line 143
    :goto_0
    new-instance v1, Lscala/collection/parallel/mutable/ParHashSet;

    invoke-direct {v1, v0}, Lscala/collection/parallel/mutable/ParHashSet;-><init>(Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-object v1
.end method

.method public scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue()I
    .locals 1

    .line 125
    iget v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner;->scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue:I

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .line 120
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .line 120
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method
