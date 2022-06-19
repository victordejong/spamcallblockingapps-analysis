.class public Lscala/collection/mutable/PriorityQueue;
.super Lscala/collection/mutable/AbstractIterable;
.source "PriorityQueue.scala"

# interfaces
.implements Lscala/collection/generic/GenericOrderedTraversableTemplate;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/Serializable;
.implements Lscala/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractIterable<",
        "TA;>;",
        "Lscala/collection/generic/GenericOrderedTraversableTemplate<",
        "TA;",
        "Lscala/collection/mutable/PriorityQueue;",
        ">;",
        "Lscala/collection/mutable/Builder<",
        "TA;",
        "Lscala/collection/mutable/PriorityQueue<",
        "TA;>;>;",
        "Lscala/Serializable;",
        "Lscala/Cloneable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t%d\u0001B\u0001\u0003\u0001%\u0011Q\u0002\u0015:j_JLG/_)vKV,\'BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\t\u0014\u0013\u0001Y1DH\u0013+[A\u001a\u0004c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\t\u0001\u0012IY:ue\u0006\u001cG/\u0013;fe\u0006\u0014G.\u001a\t\u0003!Ea\u0001\u0001B\u0003\u0013\u0001\t\u00071CA\u0001B#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007CA\u000b\u001a\u0013\tQbAA\u0002B]f\u00042\u0001\u0004\u000f\u0010\u0013\ti\"A\u0001\u0005Ji\u0016\u0014\u0018M\u00197f!\u0011y\"e\u0004\u0013\u000e\u0003\u0001R!!\t\u0003\u0002\u000f\u001d,g.\u001a:jG&\u00111\u0005\t\u0002\"\u000f\u0016tWM]5d\u001fJ$WM]3e)J\u000cg/\u001a:tC\ndW\rV3na2\u000cG/\u001a\t\u0003\u0019\u0001\u0001BAJ\u0014\u0010S5\tA!\u0003\u0002)\t\ta\u0011\n^3sC\ndW\rT5lKB\u0019A\u0002A\u0008\u0011\u0007}Ys\"\u0003\u0002-A\tAqI]8xC\ndW\r\u0005\u0003\r]=I\u0013BA\u0018\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!F\u0019\n\u0005I2!\u0001D*fe&\u000cG.\u001b>bE2,\u0007CA\u000b5\u0013\t)dAA\u0005DY>tW-\u00192mK\"Aq\u0007\u0001BC\u0002\u0013\r\u0001(A\u0002pe\u0012,\u0012!\u000f\t\u0004uuzaBA\u000b<\u0013\tad!A\u0004qC\u000e\\\u0017mZ3\n\u0005yz$\u0001C(sI\u0016\u0014\u0018N\\4\u000b\u0005q2\u0001\u0002C!\u0001\u0005\u0003\u0005\u000b\u0011B\u001d\u0002\t=\u0014H\r\t\u0005\u0006\u0007\u0002!\t\u0001R\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0015#\"!\u000b$\t\u000b]\u0012\u00059A\u001d\u0007\t!\u0003A!\u0013\u0002\u0015%\u0016\u001c\u0018N_1cY\u0016\u000c%O]1z\u0003\u000e\u001cWm]:\u0016\u0005){5\u0003B$L!B\u00022\u0001\u0004\'O\u0013\ti%AA\u0006BEN$(/Y2u\'\u0016\u000c\u0008C\u0001\tP\t\u0015\u0011rI1\u0001\u0014!\ra\u0011KT\u0005\u0003%\n\u0011aBU3tSj\u000c\'\r\\3BeJ\u000c\u0017\u0010C\u0003D\u000f\u0012\u0005A\u000bF\u0001V!\r1vIT\u0007\u0002\u0001!)\u0001l\u0012C\u00013\u00069\u0001oX:ju\u0016\u0004T#\u0001.\u0011\u0005UY\u0016B\u0001/\u0007\u0005\rIe\u000e\u001e\u0005\u0006=\u001e#\taX\u0001\u000ca~\u001b\u0018N_31?\u0012*\u0017\u000f\u0006\u0002aGB\u0011Q#Y\u0005\u0003E\u001a\u0011A!\u00168ji\")A-\u0018a\u00015\u0006\t1\u000fC\u0003g\u000f\u0012\u0005q-A\u0004q?\u0006\u0014(/Y=\u0016\u0003!\u00042!F5l\u0013\tQgAA\u0003BeJ\u000c\u0017\u0010\u0005\u0002\u0016Y&\u0011QN\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b=<E\u0011\u00019\u0002\u0019A|VM\\:ve\u0016\u001c\u0016N_3\u0015\u0005\u0001\u000c\u0008\"\u0002:o\u0001\u0004Q\u0016!\u00018\t\u000bQ<E\u0011A;\u0002\rA|6o^1q)\r\u0001g\u000f\u001f\u0005\u0006oN\u0004\rAW\u0001\u0002C\")\u0011p\u001da\u00015\u0006\t!\r\u0003\u0004|\u0001\u0001&\t\u0006`\u0001\u000b]\u0016<()^5mI\u0016\u0014X#A\u0015\t\u000fy\u0004!\u0019!C\u0005\u007f\u00061!/Z:beJ,\"!!\u0001\u0011\u0007Y;u\u0002\u0003\u0005\u0002\u0006\u0001\u0001\u000b\u0011BA\u0001\u0003\u001d\u0011Xm]1se\u0002Ba!!\u0003\u0001\t\u0003I\u0016A\u00027f]\u001e$\u0008\u000e\u0003\u0004\u0002\u000e\u0001!\t%W\u0001\u0005g&TX\rC\u0004\u0002\u0012\u0001!\t%a\u0005\u0002\u000f%\u001cX)\u001c9usV\u0011\u0011Q\u0003\t\u0004+\u0005]\u0011bAA\r\r\t9!i\\8mK\u0006t\u0007BBA\u000f\u0001\u0011\u0005C0\u0001\u0003sKB\u0014\u0008bBA\u0011\u0001\u0011\u0005\u00111E\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0015\u0003%Bq!a\n\u0001\t\u0003\nI#\u0001\tpe\u0012,\'/\u001a3D_6\u0004\u0018M\\5p]V\u0011\u00111\u0006\u0008\u0004\u0019\u00055raBA\u0018\u0005!\u0005\u0011\u0011G\u0001\u000e!JLwN]5usF+X-^3\u0011\u00071\t\u0019D\u0002\u0004\u0002\u0005!\u0005\u0011QG\n\u0006\u0003g\t9\u0004\r\t\u0005?\u0005eB%C\u0002\u0002<\u0001\u0012\u0011d\u0014:eKJ,G\r\u0016:bm\u0016\u00148/\u00192mK\u001a\u000b7\r^8ss\"91)a\r\u0005\u0002\u0005}BCAA\u0019\u0011\u001dY\u00181\u0007C\u0001\u0003\u0007*B!!\u0012\u0002LQ!\u0011qIA\'!\u0011a\u0001!!\u0013\u0011\u0007A\tY\u0005\u0002\u0004\u0013\u0003\u0003\u0012\ra\u0005\u0005\u0008o\u0005\u0005\u00039AA(!\u0011QT(!\u0013\t\u0011\u0005M\u00131\u0007C\u0002\u0003+\nAbY1o\u0005VLG\u000e\u001a$s_6,B!a\u0016\u0002nQ!\u0011\u0011LA9!%y\u00121LA0\u0003W\ny\'C\u0002\u0002^\u0001\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!!\u0019\u0002d5\u0011\u00111G\u0005\u0005\u0003K\n9G\u0001\u0003D_2d\u0017bAA5A\t9r)\u001a8fe&\u001cwJ\u001d3fe\u0016$7i\\7qC:LwN\u001c\t\u0004!\u00055DA\u0002\n\u0002R\t\u00071\u0003\u0005\u0003\r\u0001\u0005-\u0004bB\u001c\u0002R\u0001\u000f\u00111\u000f\t\u0005uu\nY\u0007\u0003\u0006\u0002x\u0005M\u0012\u0011!C\u0005\u0003s\n1B]3bIJ+7o\u001c7wKR\u0011\u00111\u0010\t\u0005\u0003{\n9)\u0004\u0002\u0002\u0000)!\u0011\u0011QAB\u0003\u0011a\u0017M\\4\u000b\u0005\u0005\u0015\u0015\u0001\u00026bm\u0006LA!!#\u0002\u0000\t1qJ\u00196fGRDq!!$\u0001\t\u0013\ty)A\u0002u_\u0006#2aDAI\u0011\u001d\t\u0019*a#A\u0002-\u000c\u0011\u0001\u001f\u0005\u0008\u0003/\u0003A\u0011CAM\u0003\u00151\u0017\u000e_+q)\u0015\u0001\u00171TAP\u0011\u001d\ti*!&A\u0002!\u000c!!Y:\t\u000f\u0005\u0005\u0016Q\u0013a\u00015\u0006\tQ\u000eC\u0004\u0002&\u0002!\t\"a*\u0002\u000f\u0019L\u0007\u0010R8x]R9\u0001-!+\u0002,\u00065\u0006bBAO\u0003G\u0003\r\u0001\u001b\u0005\u0008\u0003C\u000b\u0019\u000b1\u0001[\u0011\u0019\u0011\u00181\u0015a\u00015\"9\u0011\u0011\u0017\u0001\u0005\u0002\u0005M\u0016\u0001\u0003\u0013qYV\u001cH%Z9\u0015\u0007Y\u000b)\u000cC\u0004\u00028\u0006=\u0006\u0019A\u0008\u0002\t\u0015dW-\u001c\u0005\u0008\u0003w\u0003A\u0011AA_\u0003)!\u0003\u000f\\;tIAdWo\u001d\u000b\u0004S\u0005}\u0006\u0002CAa\u0003s\u0003\r!a1\u0002\u0005a\u001c\u0008\u0003\u0002\u0014\u0002F>I1!a2\u0005\u0005I9UM\u001c+sCZ,\'o]1cY\u0016|enY3\t\u000f\u0005-\u0007\u0001\"\u0001\u0002N\u00069QM\\9vKV,Gc\u00011\u0002P\"A\u0011\u0011[Ae\u0001\u0004\t\u0019.A\u0003fY\u0016l7\u000f\u0005\u0003\u0016\u0003+|\u0011bAAl\r\tQAH]3qK\u0006$X\r\u001a \t\u000f\u0005m\u0007\u0001\"\u0001\u0002^\u00069A-Z9vKV,G#A\u0008\t\u000f\u0005\u0005\u0008\u0001\"\u0001\u0002d\u0006QA-Z9vKV,\u0017\t\u001c7\u0016\r\u0005\u0015\u0018Q`Au)\u0011\t9/!<\u0011\u0007A\tI\u000fB\u0004\u0002l\u0006}\'\u0019A\n\u0003\tQC\u0017\r\u001e\u0005\t\u0003_\u000cy\u000eq\u0001\u0002r\u0006\u0011!M\u001a\u0019\u0005\u0003g\u000c9\u0010E\u0005 \u00037\n)0a?\u0002hB\u0019\u0001#a>\u0005\u0017\u0005e\u0018Q^A\u0001\u0002\u0003\u0015\ta\u0005\u0002\u0004?\u0012\n\u0004c\u0001\t\u0002~\u0012A\u0011q`Ap\u0005\u0004\u0011\tA\u0001\u0002BcE\u0011q\u0002\u0007\u0005\u0008\u0005\u000b\u0001A\u0011\tB\u0004\u0003\u0011AW-\u00193\u0016\u0003=AqAa\u0003\u0001\t\u0003\u0011i!A\u0003dY\u0016\u000c\'\u000fF\u0001a\u0011\u001d\u0011\t\u0002\u0001C!\u0005\'\t\u0001\"\u001b;fe\u0006$xN]\u000b\u0003\u0005+\u0001BA\nB\u000c\u001f%\u0019!\u0011\u0004\u0003\u0003\u0011%#XM]1u_JDaA!\u0008\u0001\t\u0003a\u0018a\u0002:fm\u0016\u00148/\u001a\u0005\u0008\u0005C\u0001A\u0011\u0001B\n\u0003=\u0011XM^3sg\u0016LE/\u001a:bi>\u0014\u0008b\u0002B\u0013\u0001\u0011\u0005#qE\u0001\tQ\u0006\u001c\u0008nQ8eKR\t!\u000cC\u0004\u0003,\u0001!\tA!\u000c\u0002\u000fQ|\u0017+^3vKV\u0011!q\u0006\t\u0005\u0019\tEr\"C\u0002\u00034\t\u0011Q!U;fk\u0016DqAa\u000e\u0001\t\u0003\u0012I$\u0001\u0005u_N#(/\u001b8h)\t\u0011Y\u0004\u0005\u0003\u0003>\t\rcbA\u000b\u0003@%\u0019!\u0011\t\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\u0011)Ea\u0012\u0003\rM#(/\u001b8h\u0015\r\u0011\tE\u0002\u0005\u0008\u0005\u0017\u0002A\u0011\tB\'\u0003\u0019!x\u000eT5tiV\u0011!q\n\t\u0005u\tEs\"C\u0002\u0003T}\u0012A\u0001T5ti\"9!q\u000b\u0001\u0005B\u0005\r\u0012!B2m_:,\u0007f\u0002\u0001\u0003\\\t\u0005$Q\r\t\u0004+\tu\u0013b\u0001B0\r\t)B-\u001a9sK\u000e\u000cG/\u001a3J]\",\'/\u001b;b]\u000e,\u0017E\u0001B2\u0003}\u0003&/[8sSRL\u0018+^3vK\u0002J7\u000f\t8pi\u0002Jg\u000e^3oI\u0016$\u0007\u0005^8!E\u0016\u00043/\u001e2dY\u0006\u001c8/\u001a3!IV,\u0007\u0005^8!Kb$XM\\:jm\u0016\u0004\u0003O]5wCR,\u0007%[7qY\u0016lWM\u001c;bi&|g\u000e\t3fi\u0006LGn\u001d\u0018\"\u0005\t\u001d\u0014A\u0002\u001a/cEr\u0003\u0007"
.end annotation


# instance fields
.field private final ord:Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final scala$collection$mutable$PriorityQueue$$resarr:Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>.ResizableArrayAccess<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/math/Ordering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lscala/collection/mutable/PriorityQueue;->ord:Lscala/math/Ordering;

    .line 40
    invoke-direct {p0}, Lscala/collection/mutable/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/GenericOrderedTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericOrderedTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 61
    new-instance p1, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    invoke-direct {p1, p0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;-><init>(Lscala/collection/mutable/PriorityQueue;)V

    iput-object p1, p0, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr:Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    .line 63
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0_$eq(I)V

    return-void
.end method

.method public static apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/Traversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/PriorityQueue$;->MODULE$:Lscala/collection/mutable/PriorityQueue$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/PriorityQueue$;->apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/Traversable;

    move-result-object p0

    return-object p0
.end method

.method public static canBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/PriorityQueue<",
            "*>;TA;",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/PriorityQueue$;->MODULE$:Lscala/collection/mutable/PriorityQueue$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/PriorityQueue$;->canBuildFrom(Lscala/math/Ordering;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    return-object p0
.end method

.method public static empty(Lscala/math/Ordering;)Lscala/collection/Traversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/PriorityQueue$;->MODULE$:Lscala/collection/mutable/PriorityQueue$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/PriorityQueue$;->empty(Lscala/math/Ordering;)Lscala/collection/Traversable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lscala/collection/mutable/PriorityQueue;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 39
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lscala/collection/mutable/PriorityQueue;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_ensureSize(I)V

    .line 106
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v1

    aput-object p1, v0, v1

    .line 107
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_array()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/PriorityQueue;->fixUp([Ljava/lang/Object;I)V

    .line 108
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0_$eq(I)V

    return-object p0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->clone()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/PriorityQueue;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/PriorityQueue;

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0_$eq(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->clone()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    .line 249
    new-instance v0, Lscala/collection/mutable/PriorityQueue;

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->ord()Lscala/math/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/PriorityQueue;-><init>(Lscala/math/Ordering;)V

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/PriorityQueue;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/PriorityQueue;

    return-object v0
.end method

.method public dequeue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0_$eq(I)V

    .line 135
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_swap(II)V

    .line 136
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lscala/collection/mutable/PriorityQueue;->fixDown([Ljava/lang/Object;II)V

    .line 137
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "no element to remove from heap"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dequeueAll(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "*TA1;TThat;>;)TThat;"
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object p1

    .line 143
    :goto_0
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public enqueue(Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lscala/collection/mutable/PriorityQueue;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-void
.end method

.method public fixDown([Ljava/lang/Object;II)V
    .locals 4

    :goto_0
    mul-int/lit8 v0, p2, 0x2

    if-lt p3, v0, :cond_2

    if-ge v0, p3, :cond_0

    .line 86
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->ord()Lscala/math/Ordering;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/math/Ordering;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lscala/math/Ordering$Ops;->$less(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 88
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->ord()Lscala/math/Ordering;

    move-result-object v1

    aget-object v2, p1, p2

    invoke-virtual {p0, v2}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/math/Ordering;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/math/Ordering$Ops;->$greater$eq(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 91
    :cond_1
    aget-object v1, p1, p2

    .line 92
    aget-object v2, p1, v0

    aput-object v2, p1, p2

    .line 93
    aput-object v1, p1, v0

    move p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fixUp([Ljava/lang/Object;I)V
    .locals 3

    :goto_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->ord()Lscala/math/Ordering;

    move-result-object v0

    div-int/lit8 v1, p2, 0x2

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/math/Ordering;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    aget-object v2, p1, p2

    invoke-virtual {p0, v2}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/math/Ordering$Ops;->$less(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_swap(II)V

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public genericOrderedBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/mutable/Builder<",
            "TB;",
            "Lscala/collection/mutable/PriorityQueue<",
            "TB;>;>;"
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lscala/collection/generic/GenericOrderedTraversableTemplate$class;->genericOrderedBuilder(Lscala/collection/generic/GenericOrderedTraversableTemplate;Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lscala/collection/mutable/PriorityQueue;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsuitable as hash key"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_array()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->p_size0()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 169
    new-instance v0, Lscala/collection/mutable/PriorityQueue$$anon$2;

    invoke-direct {v0, p0}, Lscala/collection/mutable/PriorityQueue$$anon$2;-><init>(Lscala/collection/mutable/PriorityQueue;)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->newBuilder()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lscala/collection/mutable/PriorityQueue;

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->ord()Lscala/math/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/PriorityQueue;-><init>(Lscala/math/Ordering;)V

    return-object v0
.end method

.method public ord()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lscala/collection/mutable/PriorityQueue;->ord:Lscala/math/Ordering;

    return-object v0
.end method

.method public bridge synthetic orderedCompanion()Lscala/collection/generic/GenericOrderedCompanion;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->orderedCompanion()Lscala/collection/mutable/PriorityQueue$;

    move-result-object v0

    return-object v0
.end method

.method public orderedCompanion()Lscala/collection/mutable/PriorityQueue$;
    .locals 1

    .line 71
    sget-object v0, Lscala/collection/mutable/PriorityQueue$;->MODULE$:Lscala/collection/mutable/PriorityQueue$;

    return-object v0
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->repr()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public repr()Lscala/collection/mutable/PriorityQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->result()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/PriorityQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public reverse()Lscala/collection/mutable/PriorityQueue;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    .line 193
    new-instance v0, Lscala/collection/mutable/PriorityQueue;

    new-instance v1, Lscala/collection/mutable/PriorityQueue$$anon$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/PriorityQueue$$anon$1;-><init>(Lscala/collection/mutable/PriorityQueue;)V

    invoke-direct {v0, v1}, Lscala/collection/mutable/PriorityQueue;-><init>(Lscala/math/Ordering;)V

    .line 196
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->length()I

    move-result v1

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1, v3}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->end()I

    move-result v1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->terminalElement()I

    move-result v6

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v1, :cond_2

    if-eq v4, v6, :cond_3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v9

    if-ge v8, v9, :cond_3

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    move-result-object v9

    invoke-virtual {v9, v4}, Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;->apply(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lscala/collection/mutable/PriorityQueue;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/PriorityQueue;

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v7

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 207
    new-instance v0, Lscala/collection/mutable/PriorityQueue$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/mutable/PriorityQueue$$anon$3;-><init>(Lscala/collection/mutable/PriorityQueue;)V

    return-object v0
.end method

.method public scala$collection$mutable$PriorityQueue$$resarr()Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>.ResizableArrayAccess<TA;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lscala/collection/mutable/PriorityQueue;->scala$collection$mutable$PriorityQueue$$resarr:Lscala/collection/mutable/PriorityQueue$ResizableArrayAccess;

    return-object v0
.end method

.method public scala$collection$mutable$PriorityQueue$$toA(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 65
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->length()I

    move-result v0

    return v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 39
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

    .line 39
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

    .line 39
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

    .line 39
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lscala/collection/mutable/PriorityQueue;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toQueue()Lscala/collection/mutable/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "TA;>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/collection/mutable/Queue;

    invoke-direct {v0}, Lscala/collection/mutable/Queue;-><init>()V

    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/Queue;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Queue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 235
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    const-string v1, "PriorityQueue("

    const-string v2, ", "

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueue;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/PriorityQueue;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
