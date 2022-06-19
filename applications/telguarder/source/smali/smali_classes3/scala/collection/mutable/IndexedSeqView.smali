.class public interface abstract Lscala/collection/mutable/IndexedSeqView;
.super Ljava/lang/Object;
.source "IndexedSeqView.scala"

# interfaces
.implements Lscala/collection/mutable/IndexedSeq;
.implements Lscala/collection/mutable/IndexedSeqOptimized;
.implements Lscala/collection/SeqView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/IndexedSeqView$Sliced;,
        Lscala/collection/mutable/IndexedSeqView$Filtered;,
        Lscala/collection/mutable/IndexedSeqView$Reversed;,
        Lscala/collection/mutable/IndexedSeqView$TakenWhile;,
        Lscala/collection/mutable/IndexedSeqView$Transformed;,
        Lscala/collection/mutable/IndexedSeqView$DroppedWhile;,
        Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Coll:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/IndexedSeq<",
        "TA;>;",
        "Lscala/collection/mutable/IndexedSeqOptimized<",
        "TA;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>;>;",
        "Lscala/collection/SeqView<",
        "TA;TColl;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t-d\u0001C\u0001\u0003!\u0003\r\t!C\u0011\u0003\u001d%sG-\u001a=fIN+\u0017OV5fo*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rQQcI\n\u0007\u0001-ya$J\u0015\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011!\"\u00138eKb,GmU3r!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\u000c\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB!\u0001cH\n\"\u0013\t\u0001#AA\nJ]\u0012,\u00070\u001a3TKF|\u0005\u000f^5nSj,G\r\u0005\u0003\u0011\u0001M\u0011\u0003C\u0001\u000b$\t\u0019!\u0003\u0001\"b\u0001/\t!1i\u001c7m!\u00111se\u0005\u0012\u000e\u0003\u0011I!\u0001\u000b\u0003\u0003\u000fM+\u0017OV5foB)aEK\n#C%\u00111\u0006\u0002\u0002\u000c\'\u0016\u000ch+[3x\u0019&\\W\rC\u0003.\u0001\u0011\u0005a&\u0001\u0004%S:LG\u000f\n\u000b\u0002_A\u0011A\u0002M\u0005\u0003c\u0019\u0011A!\u00168ji\u001611\u0007\u0001Q\u0001\n\u0005\u0012A\u0001\u00165jg\")Q\u0007\u0001D\u0001m\u00051Q\u000f\u001d3bi\u0016$2aL\u001c=\u0011\u0015AD\u00071\u0001:\u0003\rIG\r\u001f\t\u0003\u0019iJ!a\u000f\u0004\u0003\u0007%sG\u000fC\u0003>i\u0001\u00071#\u0001\u0003fY\u0016lgaB \u0001!\u0003\r\t\u0001\u0011\u0002\u000c)J\u000cgn\u001d4pe6,G-\u0006\u0002B\tN!ah\u0003\"G!\u0011\u0001\u0002a\u0011\u0012\u0011\u0005Q!E!B#?\u0005\u00049\"!\u0001\"\u0011\u0007\u001dC5)D\u0001\u0001\u0013\ty$\u0006C\u0003.}\u0011\u0005a\u0006C\u00036}\u0019\u00051\nF\u00020\u00196CQ\u0001\u000f&A\u0002eBQ!\u0010&A\u0002\rCQa\u0014 \u0005BA\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002#B\u0011!kV\u0007\u0002\'*\u0011A+V\u0001\u0005Y\u0006twMC\u0001W\u0003\u0011Q\u0017M^1\n\u0005a\u001b&AB*ue&twM\u0002\u0004[\u0001\u0005\u0005Aa\u0017\u0002\u0014\u0003\n\u001cHO]1diR\u0013\u0018M\\:g_JlW\rZ\u000b\u00039\u0002\u001c2!W/b!\r9elX\u0005\u00035*\u0002\"\u0001\u00061\u0005\u000b\u0015K&\u0019A\u000c\u0011\u0007\u001dst\u000cC\u0003d3\u0012\u0005A-\u0001\u0004=S:LGO\u0010\u000b\u0002KB\u0019q)W0\u0007\u000f\u001d\u0004\u0001\u0013aA\u0001Q\n11\u000b\\5dK\u0012\u001cBAZ\u0006jWB\u0011qI[\u0005\u0003O*\u00022a\u0012 \u0014\u0011\u0015ic\r\"\u0001/\u0011\u0015qg\r\"\u0011p\u0003\u0019aWM\\4uQV\t\u0011\u0008C\u00036M\u0012\u0005\u0011\u000fF\u00020eNDQ\u0001\u000f9A\u0002eBQ!\u00109A\u0002M1q!\u001e\u0001\u0011\u0002\u0007\u0005aO\u0001\u0005GS2$XM]3e\'\u0011!8b^6\u0011\u0005\u001dC\u0018BA;+\u0011\u0015iC\u000f\"\u0001/\u0011\u0015)D\u000f\"\u0001|)\ryC0 \u0005\u0006qi\u0004\r!\u000f\u0005\u0006{i\u0004\ra\u0005\u0004\t\u007f\u0002\u0001\n1!\u0001\u0002\u0002\tQA+Y6f]^C\u0017\u000e\\3\u0014\u000by\\\u00111A6\u0011\u0007\u001d\u000b)!\u0003\u0002\u0000U!)QF C\u0001]!1QG C\u0001\u0003\u0017!RaLA\u0007\u0003\u001fAa\u0001OA\u0005\u0001\u0004I\u0004BB\u001f\u0002\n\u0001\u00071CB\u0005\u0002\u0014\u0001\u0001\n1!\u0001\u0002\u0016\taAI]8qa\u0016$w\u000b[5mKN1\u0011\u0011C\u0006\u0002\u0018-\u00042aRA\r\u0013\r\t\u0019B\u000b\u0005\u0007[\u0005EA\u0011\u0001\u0018\t\u000fU\n\t\u0002\"\u0001\u0002 Q)q&!\t\u0002$!1\u0001(!\u0008A\u0002eBa!PA\u000f\u0001\u0004\u0019b!CA\u0014\u0001A\u0005\u0019\u0011AA\u0015\u0005!\u0011VM^3sg\u0016$7CBA\u0013\u0017\u0005-2\u000eE\u0002H\u0003[I1!a\n+\u0011\u0019i\u0013Q\u0005C\u0001]!9Q\'!\n\u0005\u0002\u0005MB#B\u0018\u00026\u0005]\u0002B\u0002\u001d\u00022\u0001\u0007\u0011\u0008\u0003\u0004>\u0003c\u0001\ra\u0005\u0005\u0008\u0003w\u0001A\u0011KA\u001f\u0003-qWm\u001e$jYR,\'/\u001a3\u0015\u0007-\u000cy\u0004\u0003\u0005\u0002B\u0005e\u0002\u0019AA\"\u0003\u0005\u0001\u0008C\u0002\u0007\u0002FM\tI%C\u0002\u0002H\u0019\u0011\u0011BR;oGRLwN\\\u0019\u0011\u00071\tY%C\u0002\u0002N\u0019\u0011qAQ8pY\u0016\u000cg\u000eC\u0004\u0002R\u0001!\t&a\u0015\u0002\u00139,wo\u00157jG\u0016$GcA6\u0002V!A\u0011qKA(\u0001\u0004\tI&\u0001\u0006`K:$\u0007o\\5oiN\u0004B!a\u0017\u0002b5\u0011\u0011Q\u000c\u0006\u0004\u0003?\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0005\u0003G\niFA\u0007TY&\u001cW-\u00138uKJ4\u0018\r\u001c\u0005\u0008\u0003O\u0002A\u0011KA5\u0003=qWm\u001e#s_B\u0004X\rZ,iS2,GcA6\u0002l!A\u0011\u0011IA3\u0001\u0004\t\u0019\u0005C\u0004\u0002p\u0001!\t&!\u001d\u0002\u001b9,w\u000fV1lK:<\u0006.\u001b7f)\rY\u00171\u000f\u0005\t\u0003\u0003\ni\u00071\u0001\u0002D!9\u0011q\u000f\u0001\u0005R\u0005e\u0014a\u00038foJ+g/\u001a:tK\u0012,\u0012a\u001b\u0005\u0008\u0003{\u0002A\u0011IA@\u0003\u00191\u0017\u000e\u001c;feR!\u0011\u0011QAB!\t9%\u0007\u0003\u0005\u0002B\u0005m\u0004\u0019AA\"\u0011\u001d\t9\t\u0001C!\u0003\u0013\u000bA!\u001b8jiV\u0011\u0011\u0011\u0011\u0005\u0008\u0003\u001b\u0003A\u0011IAH\u0003\u0011!\'o\u001c9\u0015\t\u0005\u0005\u0015\u0011\u0013\u0005\u0008\u0003\'\u000bY\t1\u0001:\u0003\u0005q\u0007bBAL\u0001\u0011\u0005\u0013\u0011T\u0001\u0005i\u0006\\W\r\u0006\u0003\u0002\u0002\u0006m\u0005bBAJ\u0003+\u0003\r!\u000f\u0005\u0008\u0003?\u0003A\u0011IAQ\u0003\u0015\u0019H.[2f)\u0019\t\t)a)\u0002(\"9\u0011QUAO\u0001\u0004I\u0014\u0001\u00024s_6Dq!!+\u0002\u001e\u0002\u0007\u0011(A\u0003v]RLG\u000eC\u0004\u0002.\u0002!\t%a,\u0002\u0013\u0011\u0014x\u000e],iS2,G\u0003BAA\u0003cC\u0001\"!\u0011\u0002,\u0002\u0007\u00111\t\u0005\u0008\u0003k\u0003A\u0011IA\\\u0003%!\u0018m[3XQ&dW\r\u0006\u0003\u0002\u0002\u0006e\u0006\u0002CA!\u0003g\u0003\r!a\u0011\t\u000f\u0005u\u0006\u0001\"\u0011\u0002@\u0006!1\u000f]1o)\u0011\t\t-a2\u0011\u000f1\t\u0019-!!\u0002\u0002&\u0019\u0011Q\u0019\u0004\u0003\rQ+\u0008\u000f\\33\u0011!\t\t%a/A\u0002\u0005\r\u0003bBAf\u0001\u0011\u0005\u0013QZ\u0001\u0008gBd\u0017\u000e^!u)\u0011\t\t-a4\t\u000f\u0005M\u0015\u0011\u001aa\u0001s!9\u00111\u001b\u0001\u0005B\u0005%\u0015a\u0002:fm\u0016\u00148/\u001a\u0005\u0008\u0003/\u0004A\u0011IAm\u0003\u0011!\u0018-\u001b7\u0016\u0003\u0005Ba\"!8\u0001!\u0003\r\t\u0011!C\u0005\u00033\u000cy.\u0001\u0006tkB,\'\u000f\n;bS2LA!a6\u0002b&\u0019\u00111\u001d\u0003\u0003\'Q\u0013\u0018M^3sg\u0006\u0014G.\u001a,jK^d\u0015n[3\u0008\u000f\u0005\u001d(\u0001#\u0001\u0002j\u0006q\u0011J\u001c3fq\u0016$7+Z9WS\u0016<\u0008c\u0001\t\u0002l\u001a1\u0011A\u0001E\u0001\u0003[\u001c2!a;\u000c\u0011\u001d\u0019\u00171\u001eC\u0001\u0003c$\"!!;\u0006\r\u0011\nY\u000fAA{a\u0019\t9P!\u0002\u0002\u0000B9a%!?\u0002~\n\r\u0011bAA~\t\tyAK]1wKJ\u001c\u0018M\u00197f-&,w\u000fE\u0002\u0015\u0003\u007f$1B!\u0001\u0002t\u0006\u0005\t\u0011!B\u0001/\t\u0019q\u000cJ\u0019\u0011\u0007Q\u0011)\u0001\u0002\u0007\u0003\u0008\u0005M\u0018\u0011!A\u0001\u0006\u0003\u0011IAA\u0001D#\rA\"1\u0002\u0019\u0005\u0005\u001b\u0011)\u0002E\u0003\u0011\u0005\u001f\u0011\u0019\"C\u0002\u0003\u0012\t\u00111\u0002\u0016:bm\u0016\u00148/\u00192mKB\u0019AC!\u0006\u0005\u0017\t]!\u0011DA\u0001\u0002\u0003\u0015\ta\u0006\u0002\u0004?\u0012\u0012D\u0001\u0004B\u0004\u0003g\u000c\t\u0011!A\u0003\u0002\t%\u0001\u0002\u0003B\u000f\u0003W$\u0019Aa\u0008\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\t\t\u0005\"qF\u000b\u0003\u0005G\u0001\"\"a\u0017\u0003&\t%\"Q\u0006B\u0019\u0013\u0011\u00119#!\u0018\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t\t-\u00121_\u0007\u0003\u0003W\u00042\u0001\u0006B\u0018\t\u00191\"1\u0004b\u0001/A1ae\nB\u0017\u0005g\u0001DA!\u000e\u0003>A)\u0001Ca\u000e\u0003<%\u0019!\u0011\u0008\u0002\u0003\u0007M+\u0017\u000fE\u0002\u0015\u0005{!1Ba\u0010\u0003\u001c\u0005\u0005\t\u0011!B\u0001/\t\u0019q\u000cJ\u001a\t\u0011\t\r\u00131\u001eC\u0002\u0005\u000b\nq\"\u0019:s\u0007\u0006t\')^5mI\u001a\u0013x.\\\u000b\u0005\u0005\u000f\u0012)\'\u0006\u0002\u0003JAQ\u00111\u000cB\u0013\u0005\u0017\u0012\u0019Ga\u001a1\t\t5#\u0011\u000b\t\u0008M\u0005e(q\nB+!\r!\"\u0011\u000b\u0003\u000c\u0005\'\u0012\t%!A\u0001\u0002\u000b\u0005qCA\u0002`IU\u0002DAa\u0016\u0003`A)AB!\u0017\u0003^%\u0019!1\u000c\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0007Q\u0011y\u0006B\u0006\u0003b\t\u0005\u0013\u0011!A\u0001\u0006\u00039\"aA0%mA\u0019AC!\u001a\u0005\rY\u0011\tE1\u0001\u0018!\u00191sEa\u0019\u0003jA)AB!\u0017\u0003d\u0001"
.end annotation


# virtual methods
.method public abstract drop(I)Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract dropWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract filter(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract init()Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newFiltered(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newReversed()Lscala/collection/mutable/IndexedSeqView$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/SliceInterval;",
            ")",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract newTakenWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>.Transformed<TA;>;"
        }
    .end annotation
.end method

.method public abstract reverse()Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$mutable$IndexedSeqView$$super$tail()Lscala/collection/mutable/IndexedSeqView;
.end method

.method public abstract slice(II)Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract span(Lscala/Function1;)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;>;"
        }
    .end annotation
.end method

.method public abstract splitAt(I)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;>;"
        }
    .end annotation
.end method

.method public abstract tail()Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract take(I)Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract takeWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;"
        }
    .end annotation
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method
