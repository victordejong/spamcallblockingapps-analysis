.class public Lscala/collection/immutable/PagedSeq;
.super Lscala/collection/AbstractSeq;
.source "PagedSeq.scala"

# interfaces
.implements Lscala/collection/IndexedSeq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TT;>;",
        "Lscala/collection/IndexedSeq<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005-x!B\u0001\u0003\u0011\u0003I\u0011\u0001\u0003)bO\u0016$7+Z9\u000b\u0005\r!\u0011!C5n[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001!\tQ1\"D\u0001\u0003\r\u0015a!\u0001#\u0001\u000e\u0005!\u0001\u0016mZ3e\'\u0016\u000c8CA\u0006\u000f!\ty\u0001#D\u0001\u0007\u0013\t\tbA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\'-!\t\u0001F\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003%AqAF\u0006C\u0002\u0013\u0015q#A\u0008V]\u0012,G/\u001a:nS:,G-\u00128e+\u0005Ar\"A\r\u001e\t}|\u0000\u0000@\u0005\u00077-\u0001\u000bQ\u0002\r\u0002!UsG-\u001a;fe6Lg.\u001a3F]\u0012\u0004\u0003\"B\u000f\u000c\t\u0003q\u0012\u0001\u00044s_6LE/\u001a:bi>\u0014XcA\u0010\u0002NQ\u0019\u0001%!\u0016\u0015\u0007\u0005\ny\u0005\u0005\u0003\u000bE\u0005-c\u0001\u0002\u0007\u0003\u0001\r*\"\u0001J\u0016\u0014\u0007\t*C\u0007E\u0002\'O%j\u0011\u0001B\u0005\u0003Q\u0011\u00111\"\u00112tiJ\u000c7\r^*fcB\u0011!f\u000b\u0007\u0001\t\u0015a#E1\u0001.\u0005\u0005!\u0016C\u0001\u00182!\tyq&\u0003\u00021\r\t9aj\u001c;iS:<\u0007CA\u00083\u0013\t\u0019dAA\u0002B]f\u00042AJ\u001b*\u0013\t1DA\u0001\u0006J]\u0012,\u00070\u001a3TKFD\u0001\u0002\u000f\u0012\u0003\u0002\u0003\u0006I!O\u0001\u0005[>\u0014X\r\u0005\u0004\u0010uqzthP\u0005\u0003w\u0019\u0011\u0011BR;oGRLwN\\\u001a\u0011\u0007=i\u0014&\u0003\u0002?\r\t)\u0011I\u001d:bsB\u0011q\u0002Q\u0005\u0003\u0003\u001a\u00111!\u00138u\u0011!\u0019%E!A!\u0002\u0013!\u0015A\u00024jeN$\u0018\u0007E\u0002\u000b\u000b&J!A\u0012\u0002\u0003\tA\u000bw-\u001a\u0005\t\u0011\n\u0012\t\u0011)A\u0005\u007f\u0005)1\u000f^1si\"A!J\tB\u0001B\u0003%q(A\u0002f]\u0012D\u0001\u0002\u0014\u0012\u0003\u0004\u0003\u0006Y!T\u0001\u000bKZLG-\u001a8dK\u0012\u001a\u0004c\u0001(RS5\tqJ\u0003\u0002Q\r\u00059!/\u001a4mK\u000e$\u0018B\u0001*P\u0005!\u0019E.Y:t)\u0006<\u0007\"B\n#\t#!F#B+Y3j[FC\u0001,X!\rQ!%\u000b\u0005\u0006\u0019N\u0003\u001d!\u0014\u0005\u0006qM\u0003\r!\u000f\u0005\u0006\u0007N\u0003\r\u0001\u0012\u0005\u0006\u0011N\u0003\ra\u0010\u0005\u0006\u0015N\u0003\ra\u0010\u0005\u0006\'\t\"\t!\u0018\u000b\u0003=\u0006$\"AV0\t\u000f\u0001d\u0016\u0011!a\u0002\u001b\u0006QQM^5eK:\u001cW\r\n\u001b\t\u000bab\u0006\u0019A\u001d\t\u000f\r\u0014\u0003\u0019!C\u0005I\u000691-\u001e:sK:$X#\u0001#\t\u000f\u0019\u0014\u0003\u0019!C\u0005O\u0006Y1-\u001e:sK:$x\u000cJ3r)\tA7\u000e\u0005\u0002\u0010S&\u0011!N\u0002\u0002\u0005+:LG\u000fC\u0004mK\u0006\u0005\t\u0019\u0001#\u0002\u0007a$\u0013\u0007\u0003\u0004oE\u0001\u0006K\u0001R\u0001\tGV\u0014(/\u001a8uA!)\u0001O\tC\u0005I\u00061A.\u0019;fgRDQA\u001d\u0012\u0005\nM\u000cq!\u00193e\u001b>\u0014X\rF\u0001E\u0011\u0015)(\u0005\"\u0003w\u0003\u0011\u0001\u0018mZ3\u0015\u0005\u0011;\u0008\"\u0002=u\u0001\u0004y\u0014\u0001C1cg&tG-\u001a=\t\u000bi\u0014C\u0011A>\u0002\r1,gn\u001a;i+\u0005y\u0004\"B?#\t\u0003q\u0018!B1qa2LHCA\u0015\u0000\u0011\u0019\t\t\u0001 a\u0001\u007f\u0005)\u0011N\u001c3fq\"9\u0011Q\u0001\u0012\u0005B\u0005\u001d\u0011aC5t\t\u00164\u0017N\\3e\u0003R$B!!\u0003\u0002\u0010A\u0019q\"a\u0003\n\u0007\u00055aAA\u0004C_>dW-\u00198\t\u000f\u0005\u0005\u00111\u0001a\u0001\u007f!9\u00111\u0003\u0012\u0005B\u0005U\u0011!B:mS\u000e,G#\u0002,\u0002\u0018\u0005m\u0001bBA\r\u0003#\u0001\raP\u0001\u0007?N$\u0018M\u001d;\t\u000f\u0005u\u0011\u0011\u0003a\u0001\u007f\u0005!q,\u001a8e\u0011\u001d\t\u0019B\tC\u0001\u0003C!2AVA\u0012\u0011\u0019A\u0015q\u0004a\u0001\u007f!9\u0011q\u0005\u0012\u0005B\u0005%\u0012\u0001\u0003;p\'R\u0014\u0018N\\4\u0015\u0005\u0005-\u0002\u0003BA\u0017\u0003oi!!a\u000c\u000b\t\u0005E\u00121G\u0001\u0005Y\u0006twM\u0003\u0002\u00026\u0005!!.\u0019<b\u0013\u0011\tI$a\u000c\u0003\rM#(/\u001b8hQ\u001d\u0011\u0013QHA\"\u0003\u000f\u00022aDA \u0013\r\t\tE\u0002\u0002\u0016I\u0016\u0004(/Z2bi\u0016$\u0017J\u001c5fe&$\u0018M\\2fC\t\t)%A(UQ\u0016\u0004\u0013.\u001c9mK6,g\u000e^1uS>t\u0007\u0005Z3uC&d7\u000fI8gAA\u000cw-\u001a3!g\u0016\u000cX/\u001a8dKN\u0004S.Y6fA%t\u0007.\u001a:ji&tw\r\t4s_6\u0004C\u000f[3nAUtw/[:f]\u0005\u0012\u0011\u0011J\u0001\u0007e9\n\u0014G\u000c\u0019\u0011\u0007)\ni\u0005B\u0003-9\t\u0007Q\u0006C\u0005\u0002Rq\t\t\u0011q\u0001\u0002T\u0005QQM^5eK:\u001cW\rJ\u0019\u0011\t9\u000b\u00161\n\u0005\u0008\u0003/b\u0002\u0019AA-\u0003\u0019\u0019x.\u001e:dKB)a%a\u0017\u0002L%\u0019\u0011Q\u000c\u0003\u0003\u0011%#XM]1u_JDq!!\u0019\u000c\t\u0003\t\u0019\'\u0001\u0007ge>l\u0017\n^3sC\ndW-\u0006\u0003\u0002f\u00055D\u0003BA4\u0003k\"B!!\u001b\u0002pA!!BIA6!\rQ\u0013Q\u000e\u0003\u0007Y\u0005}#\u0019A\u0017\t\u0015\u0005E\u0014qLA\u0001\u0002\u0008\t\u0019(\u0001\u0006fm&$WM\\2fII\u0002BAT)\u0002l!A\u0011qKA0\u0001\u0004\t9\u0008E\u0003\u000b\u0003s\nY\'C\u0002\u0002|\t\u0011\u0001\"\u0013;fe\u0006\u0014G.\u001a\u0005\u0008\u0003\u007fZA\u0011AAA\u0003-1\'o\\7TiJLgnZ:\u0015\t\u0005\r\u00151\u0012\t\u0005\u0015\t\n)\tE\u0002\u0010\u0003\u000fK1!!#\u0007\u0005\u0011\u0019\u0005.\u0019:\t\u0011\u0005]\u0013Q\u0010a\u0001\u0003\u001b\u0003RAJA.\u0003\u001f\u0003B!!%\u0002\u0018:\u0019q\"a%\n\u0007\u0005Ue!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003s\tIJC\u0002\u0002\u0016\u001aAq!a \u000c\t\u0003\ti\n\u0006\u0003\u0002\u0004\u0006}\u0005\u0002CA,\u00037\u0003\r!!)\u0011\u000b)\tI(a$\t\u000f\u0005\u00156\u0002\"\u0001\u0002(\u0006IaM]8n\u0019&tWm\u001d\u000b\u0005\u0003\u0007\u000bI\u000b\u0003\u0005\u0002X\u0005\r\u0006\u0019AAG\u0011\u001d\t)k\u0003C\u0001\u0003[#B!a!\u00020\"A\u0011qKAV\u0001\u0004\t\t\u000bC\u0004\u00024.!\t!!.\u0002\u0015\u0019\u0014x.\u001c*fC\u0012,\'\u000f\u0006\u0003\u0002\u0004\u0006]\u0006\u0002CA,\u0003c\u0003\r!!/\u0011\t\u0005m\u0016\u0011Y\u0007\u0003\u0003{SA!a0\u00024\u0005\u0011\u0011n\\\u0005\u0005\u0003\u0007\u000ciL\u0001\u0004SK\u0006$WM\u001d\u0005\u0008\u0003\u000f\\A\u0011AAe\u0003!1\'o\\7GS2,G\u0003BAB\u0003\u0017D\u0001\"a\u0016\u0002F\u0002\u0007\u0011Q\u001a\t\u0005\u0003w\u000by-\u0003\u0003\u0002R\u0006u&\u0001\u0002$jY\u0016Dq!a2\u000c\t\u0003\t)\u000e\u0006\u0003\u0002\u0004\u0006]\u0007\u0002CA,\u0003\'\u0004\r!a$\t\u000f\u0005m7\u0002\"\u0001\u0002^\u0006QaM]8n\'>,(oY3\u0015\t\u0005\r\u0015q\u001c\u0005\t\u0003/\nI\u000e1\u0001\u0002bB!\u00111]At\u001b\t\t)OC\u0002\u0002@\u001aIA!!;\u0002f\n11k\\;sG\u0016\u0004"
.end annotation


# instance fields
.field private current:Lscala/collection/immutable/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Page<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final end:I

.field private final evidence$3:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final first1:Lscala/collection/immutable/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Page<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final more:Lscala/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final start:I


# direct methods
.method public constructor <init>(Lscala/Function3;Lscala/collection/immutable/Page;IILscala/reflect/ClassTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/immutable/Page<",
            "TT;>;II",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lscala/collection/immutable/PagedSeq;->more:Lscala/Function3;

    .line 132
    iput-object p2, p0, Lscala/collection/immutable/PagedSeq;->first1:Lscala/collection/immutable/Page;

    .line 133
    iput p3, p0, Lscala/collection/immutable/PagedSeq;->start:I

    .line 134
    iput p4, p0, Lscala/collection/immutable/PagedSeq;->end:I

    .line 130
    iput-object p5, p0, Lscala/collection/immutable/PagedSeq;->evidence$3:Lscala/reflect/ClassTag;

    .line 135
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    .line 140
    iput-object p2, p0, Lscala/collection/immutable/PagedSeq;->current:Lscala/collection/immutable/Page;

    return-void
.end method

.method public constructor <init>(Lscala/Function3;Lscala/reflect/ClassTag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 138
    new-instance v2, Lscala/collection/immutable/Page;

    const/4 v0, 0x0

    invoke-direct {v2, v0, p2}, Lscala/collection/immutable/Page;-><init>(ILscala/reflect/ClassTag;)V

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/PagedSeq;-><init>(Lscala/Function3;Lscala/collection/immutable/Page;IILscala/reflect/ClassTag;)V

    return-void
.end method

.method public static UndeterminedEnd()I
    .locals 1

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/PagedSeq$;->UndeterminedEnd()I

    move-result v0

    return v0
.end method

.method private addMore()Lscala/collection/immutable/Page;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Page<",
            "TT;>;"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->latest()Lscala/collection/immutable/Page;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/immutable/PagedSeq;->more:Lscala/Function3;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Page;->addMore(Lscala/Function3;)Lscala/collection/immutable/Page;

    move-result-object v0

    return-object v0
.end method

.method private current()Lscala/collection/immutable/Page;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Page<",
            "TT;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lscala/collection/immutable/PagedSeq;->current:Lscala/collection/immutable/Page;

    return-object v0
.end method

.method private current_$eq(Lscala/collection/immutable/Page;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Page<",
            "TT;>;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lscala/collection/immutable/PagedSeq;->current:Lscala/collection/immutable/Page;

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromFile(Ljava/io/File;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromFile(Ljava/lang/String;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromFile(Ljava/lang/String;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Lscala/collection/immutable/Iterable;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/Iterable<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/immutable/PagedSeq<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/PagedSeq$;->fromIterable(Lscala/collection/immutable/Iterable;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterator(Lscala/collection/Iterator;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TT;>;",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/immutable/PagedSeq<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/PagedSeq$;->fromIterator(Lscala/collection/Iterator;Lscala/reflect/ClassTag;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromLines(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromLines(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromLines(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromLines(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromReader(Ljava/io/Reader;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromReader(Ljava/io/Reader;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromSource(Lscala/io/Source;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/io/Source;",
            ")",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromSource(Lscala/io/Source;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromStrings(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromStrings(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static fromStrings(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/PagedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/PagedSeq$;->MODULE$:Lscala/collection/immutable/PagedSeq$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/PagedSeq$;->fromStrings(Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/PagedSeq;

    move-result-object p0

    return-object p0
.end method

.method private latest()Lscala/collection/immutable/Page;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Page<",
            "TT;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lscala/collection/immutable/PagedSeq;->first1:Lscala/collection/immutable/Page;

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->latest()Lscala/collection/immutable/Page;

    move-result-object v0

    return-object v0
.end method

.method private page(I)Lscala/collection/immutable/Page;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Page<",
            "TT;>;"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->current()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->start()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lscala/collection/immutable/PagedSeq;->first1:Lscala/collection/immutable/Page;

    invoke-direct {p0, v0}, Lscala/collection/immutable/PagedSeq;->current_$eq(Lscala/collection/immutable/Page;)V

    .line 149
    :cond_0
    :goto_0
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->current()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->end()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->current()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->next()Lscala/collection/immutable/Page;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->current()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->next()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/PagedSeq;->current_$eq(Lscala/collection/immutable/Page;)V

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->current()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->end()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->current()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->isLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->addMore()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/PagedSeq;->current_$eq(Lscala/collection/immutable/Page;)V

    goto :goto_1

    .line 154
    :cond_2
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->current()Lscala/collection/immutable/Page;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq;->isDefinedAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/immutable/PagedSeq;->start:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/immutable/PagedSeq;->page(I)Lscala/collection/immutable/Page;

    move-result-object v0

    iget v1, p0, Lscala/collection/immutable/PagedSeq;->start:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/Page;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/IndexedSeq;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->companion(Lscala/collection/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 130
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public isDefinedAt(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    .line 177
    iget v2, p0, Lscala/collection/immutable/PagedSeq;->end:I

    iget v3, p0, Lscala/collection/immutable/PagedSeq;->start:I

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    add-int/2addr p1, v3

    if-ltz p1, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lscala/collection/immutable/PagedSeq;->page(I)Lscala/collection/immutable/Page;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/Page;->end()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 130
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 3

    .line 161
    :goto_0
    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->latest()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->latest()Lscala/collection/immutable/Page;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Page;->end()I

    move-result v0

    iget v1, p0, Lscala/collection/immutable/PagedSeq;->end:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->addMore()Lscala/collection/immutable/Page;

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 162
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/immutable/PagedSeq;->latest()Lscala/collection/immutable/Page;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/Page;->end()I

    move-result v1

    iget v2, p0, Lscala/collection/immutable/PagedSeq;->end:I

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    iget v1, p0, Lscala/collection/immutable/PagedSeq;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public seq()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->seq(Lscala/collection/IndexedSeq;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/PagedSeq;->slice(II)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public slice(I)Lscala/collection/immutable/PagedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/PagedSeq<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 205
    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/PagedSeq;->slice(II)Lscala/collection/immutable/PagedSeq;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/immutable/PagedSeq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/PagedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 188
    iget v0, p0, Lscala/collection/immutable/PagedSeq;->start:I

    invoke-direct {p0, v0}, Lscala/collection/immutable/PagedSeq;->page(I)Lscala/collection/immutable/Page;

    .line 189
    iget v0, p0, Lscala/collection/immutable/PagedSeq;->start:I

    add-int v4, v0, p1

    const p1, 0x7fffffff

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    :goto_0
    move v5, p2

    .line 191
    iget-object p1, p0, Lscala/collection/immutable/PagedSeq;->first1:Lscala/collection/immutable/Page;

    move-object v3, p1

    .line 192
    :goto_1
    invoke-virtual {v3}, Lscala/collection/immutable/Page;->end()I

    move-result p1

    if-gt p1, v4, :cond_2

    invoke-virtual {v3}, Lscala/collection/immutable/Page;->isLast()Z

    move-result p1

    if-nez p1, :cond_2

    .line 193
    invoke-virtual {v3}, Lscala/collection/immutable/Page;->next()Lscala/collection/immutable/Page;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lscala/collection/immutable/PagedSeq;->more:Lscala/Function3;

    invoke-virtual {v3, p1}, Lscala/collection/immutable/Page;->addMore(Lscala/Function3;)Lscala/collection/immutable/Page;

    goto :goto_2

    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 194
    :goto_2
    invoke-virtual {v3}, Lscala/collection/immutable/Page;->next()Lscala/collection/immutable/Page;

    move-result-object v3

    goto :goto_1

    .line 199
    :cond_2
    new-instance p1, Lscala/collection/immutable/PagedSeq;

    iget-object v2, p0, Lscala/collection/immutable/PagedSeq;->more:Lscala/Function3;

    iget-object v6, p0, Lscala/collection/immutable/PagedSeq;->evidence$3:Lscala/reflect/ClassTag;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lscala/collection/immutable/PagedSeq;-><init>(Lscala/Function3;Lscala/collection/immutable/Page;IILscala/reflect/ClassTag;)V

    return-object p1
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 130
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 209
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/PagedSeq$$anonfun$toString$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/immutable/PagedSeq$$anonfun$toString$1;-><init>(Lscala/collection/immutable/PagedSeq;Lscala/collection/mutable/StringBuilder;)V

    invoke-interface {v1, v2}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 211
    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 130
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/PagedSeq;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/collection/immutable/PagedSeq;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 130
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/PagedSeq;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
