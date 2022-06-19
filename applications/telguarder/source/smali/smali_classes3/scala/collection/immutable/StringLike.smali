.class public interface abstract Lscala/collection/immutable/StringLike;
.super Ljava/lang/Object;
.source "StringLike.scala"

# interfaces
.implements Lscala/collection/IndexedSeqOptimized;
.implements Lscala/math/Ordered;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IndexedSeqOptimized<",
        "Ljava/lang/Object;",
        "TRepr;>;",
        "Lscala/math/Ordered<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tet!B\u0001\u0003\u0011\u0003I\u0011AC*ue&tw\rT5lK*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001\u0001\"AC\u0006\u000e\u0003\t1Q\u0001\u0004\u0002\t\u00025\u0011!b\u0015;sS:<G*[6f\'\tYa\u0002\u0005\u0002\u0010!5\ta!\u0003\u0002\u0012\r\t1\u0011I\\=SK\u001aDQaE\u0006\u0005\u0002Q\ta\u0001P5oSRtD#A\u0005\t\u000fYY!\u0019!C\u0007/\u0005\u0011AJR\u000b\u00021=\t\u0011$H\u0001\u000b\u0011\u0019Y2\u0002)A\u00071\u0005\u0019AJ\u0012\u0011\t\u000fuY!\u0019!C\u0007=\u0005\u0011aIR\u000b\u0002?=\t\u0001%H\u0001\r\u0011\u0019\u00113\u0002)A\u0007?\u0005\u0019aI\u0012\u0011\t\u000f\u0011Z!\u0019!C\u0007K\u0005\u00111IU\u000b\u0002M=\tq%H\u0001\u000e\u0011\u0019I3\u0002)A\u0007M\u0005\u00191I\u0015\u0011\t\u000f-Z!\u0019!C\u0007Y\u0005\u00111+V\u000b\u0002[=\ta&H\u0001\u001b\u0011\u0019\u00014\u0002)A\u0007[\u0005\u00191+\u0016\u0011\u0007\u00131\u0011\u0001\u0013aA\u0001e\t]TCA\u001aA\'\u0011\tDg\u000e$\u0011\u0005=)\u0014B\u0001\u001c\u0007\u0005\r\te.\u001f\t\u0005qeZd(D\u0001\u0005\u0013\tQDAA\nJ]\u0012,\u00070\u001a3TKF|\u0005\u000f^5nSj,G\r\u0005\u0002\u0010y%\u0011QH\u0002\u0002\u0005\u0007\"\u000c\'\u000f\u0005\u0002@\u00012\u0001AAB!2\t\u000b\u0007!I\u0001\u0003SKB\u0014\u0018CA\"5!\tyA)\u0003\u0002F\r\t9aj\u001c;iS:<\u0007cA$K\u001b:\u0011q\u0002S\u0005\u0003\u0013\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002L\u0019\n9qJ\u001d3fe\u0016$\'BA%\u0007!\tq\u0015K\u0004\u0002\u0010\u001f&\u0011\u0001KB\u0001\u0007!J,G-\u001a4\n\u0005I\u001b&AB*ue&twM\u0003\u0002Q\r!)Q+\rC\u0001-\u00061A%\u001b8ji\u0012\"\u0012a\u0016\t\u0003\u001faK!!\u0017\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u00077F\u0002k\u0011\u0003/\u0002\u00159,wOQ;jY\u0012,\'/F\u0001^!\u0011q\u0016m\u000f \u000e\u0003}S!\u0001\u0019\u0003\u0002\u000f5,H/\u00192mK&\u0011!m\u0018\u0002\u0008\u0005VLG\u000eZ3s\u0011\u0015!\u0017\u0007\"\u0001f\u0003\u0015\t\u0007\u000f\u001d7z)\tYd\rC\u0003hG\u0002\u0007\u0001.A\u0001o!\ty\u0011.\u0003\u0002k\r\t\u0019\u0011J\u001c;\t\u000b1\u000cD\u0011A7\u0002\r1,gn\u001a;i+\u0005A\u0007\"B82\t\u0003\u0002\u0018\u0001C7l\'R\u0014\u0018N\\4\u0016\u00035CQA]\u0019\u0005BM\u000cQa\u001d7jG\u0016$2A\u0010;w\u0011\u0015)\u0018\u000f1\u0001i\u0003\u00111\'o\\7\t\u000b]\u000c\u0008\u0019\u00015\u0002\u000bUtG/\u001b7\t\u000be\u000cD\u0011\u0001>\u0002\r\u0011\"\u0018.\\3t)\ti5\u0010C\u0003hq\u0002\u0007\u0001\u000eC\u0003~c\u0011\u0005c0A\u0004d_6\u0004\u0018M]3\u0015\u0005!|\u0008BBA\u0001y\u0002\u0007Q*A\u0003pi\",\'\u000fC\u0004\u0002\u0006E\"I!a\u0002\u0002\u0017%\u001cH*\u001b8f\u0005J,\u0017m\u001b\u000b\u0005\u0003\u0013\ty\u0001E\u0002\u0010\u0003\u0017I1!!\u0004\u0007\u0005\u001d\u0011un\u001c7fC:Dq!!\u0005\u0002\u0004\u0001\u00071(A\u0001d\u0011\u0019\t)\"\rC\u0001a\u0006a1\u000f\u001e:ja2Kg.Z#oI\"9\u0011\u0011D\u0019\u0005\u0002\u0005m\u0011a\u00057j]\u0016\u001cx+\u001b;i\'\u0016\u0004\u0018M]1u_J\u001cXCAA\u000f!\u0011A\u0014qD\'\n\u0007\u0005\u0005BA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d\t)#\rC\u0001\u00037\tQ\u0001\\5oKNDq!!\u000b2\t\u0003\tY\"A\u0007mS:,7/\u0013;fe\u0006$xN\u001d\u0015\t\u0003O\ti#a\r\u00028A\u0019q\"a\u000c\n\u0007\u0005EbA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c#!!\u000e\u0002)U\u001bX\r\t1mS:,7\u000f\u0019\u0011j]N$X-\u00193/C\t\tI$\u0001\u00043]E\nd\u0006\r\u0005\u0007\u0003{\tD\u0011\u00019\u0002\u0015\r\u000c\u0007/\u001b;bY&TX\rC\u0004\u0002BE\"\t!a\u0011\u0002\u0017M$(/\u001b9Qe\u00164\u0017\u000e\u001f\u000b\u0005\u0003\u000b\n\u0019\u0006\u0005\u0003\u0002H\u0005ESBAA%\u0015\u0011\tY%!\u0014\u0002\t1\u000cgn\u001a\u0006\u0003\u0003\u001f\nAA[1wC&\u0019!+!\u0013\t\u000f\u0005U\u0013q\u0008a\u0001\u001b\u00061\u0001O]3gSbDq!!\u00172\t\u0003\tY&A\u0006tiJL\u0007oU;gM&DH\u0003BA#\u0003;Bq!a\u0018\u0002X\u0001\u0007Q*\u0001\u0004tk\u001a4\u0017\u000e\u001f\u0005\u0008\u0003G\nD\u0011AA3\u0003M\u0011X\r\u001d7bG\u0016\u000cE\u000e\u001c\'ji\u0016\u0014\u0018\r\u001c7z)\u0015i\u0015qMA6\u0011\u001d\tI\'!\u0019A\u00025\u000bq\u0001\\5uKJ\u000cG\u000eC\u0004\u0002n\u0005\u0005\u0004\u0019A\'\u0002\u0017I,\u0007\u000f\\1dK6,g\u000e\u001e\u0005\u0008\u0003c\nD\u0011AA:\u0003-\u0019HO]5q\u001b\u0006\u0014x-\u001b8\u0015\u00075\u000b)\u0008C\u0004\u0002x\u0005=\u0004\u0019A\u001e\u0002\u00155\u000c\'oZ5o\u0007\"\u000c\'\u000f\u0003\u0004\u0002rE\"\t\u0001\u001d\u0005\u0008\u0003{\nD\u0011BA@\u0003\u0019)7oY1qKR\u0019Q*!!\t\u000f\u0005\r\u00151\u0010a\u0001w\u0005\u00111\r\u001b\u0005\u0008\u0003\u000f\u000bD\u0011AAE\u0003\u0015\u0019\u0008\u000f\\5u)\u0011\tY)!%\u0011\t=\ti)T\u0005\u0004\u0003\u001f3!!B!se\u0006L\u0008bBAJ\u0003\u000b\u0003\raO\u0001\ng\u0016\u0004\u0018M]1u_JDq!a\"2\t\u0003\t9\n\u0006\u0003\u0002\u000c\u0006e\u0005\u0002CAN\u0003+\u0003\r!!(\u0002\u0015M,\u0007/\u0019:bi>\u00148\u000f\u0005\u0003\u0010\u0003\u001b[\u0004FBAK\u0003C\u000b9\u000cE\u0003\u0010\u0003G\u000b9+C\u0002\u0002&\u001a\u0011a\u0001\u001e5s_^\u001c\u0008\u0003BAU\u0003gk!!a+\u000b\t\u00055\u0016qV\u0001\u0006e\u0016<W\r\u001f\u0006\u0005\u0003c\u000bi%\u0001\u0003vi&d\u0017\u0002BA[\u0003W\u0013a\u0003U1ui\u0016\u0014hnU=oi\u0006DX\t_2faRLwN\\\u0012\u0003\u0003OCq!a/2\t\u0003\ti,A\u0001s+\t\ty\u000c\u0005\u0003\u0002B\u0006%WBAAb\u0015\u0011\t)-a2\u0002\u00115\u000cGo\u00195j]\u001eT1!!-\u0007\u0013\u0011\tY-a1\u0003\u000bI+w-\u001a=\t\u000f\u0005m\u0016\u0007\"\u0001\u0002PR!\u0011qXAi\u0011!\t\u0019.!4A\u0002\u0005U\u0017AC4s_V\u0004h*Y7fgB!q\"a6N\u0013\r\tIN\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004bBAoc\u0011\u0005\u0011q\\\u0001\ni>\u0014un\u001c7fC:,\"!!\u0003\t\u000f\u0005\r\u0018\u0007\"\u0001\u0002f\u00061Ao\u001c\"zi\u0016,\"!a:\u0011\u0007=\tI/C\u0002\u0002l\u001a\u0011AAQ=uK\"9\u0011q^\u0019\u0005\u0002\u0005E\u0018a\u0002;p\'\"|\'\u000f^\u000b\u0003\u0003g\u00042aDA{\u0013\r\t9P\u0002\u0002\u0006\'\"|\'\u000f\u001e\u0005\u0007\u0003w\u000cD\u0011A7\u0002\u000bQ|\u0017J\u001c;\t\u000f\u0005}\u0018\u0007\"\u0001\u0003\u0002\u00051Ao\u001c\'p]\u001e,\"Aa\u0001\u0011\u0007=\u0011)!C\u0002\u0003\u0008\u0019\u0011A\u0001T8oO\"9!1B\u0019\u0005\u0002\t5\u0011a\u0002;p\r2|\u0017\r^\u000b\u0003\u0005\u001f\u00012a\u0004B\t\u0013\r\u0011\u0019B\u0002\u0002\u0006\r2|\u0017\r\u001e\u0005\u0008\u0005/\tD\u0011\u0001B\r\u0003!!x\u000eR8vE2,WC\u0001B\u000e!\ry!QD\u0005\u0004\u0005?1!A\u0002#pk\ndW\rC\u0004\u0003$E\"IA!\n\u0002\u0019A\u000c\'o]3C_>dW-\u00198\u0015\t\u0005%!q\u0005\u0005\u0008\u0005S\u0011\t\u00031\u0001N\u0003\u0005\u0019\u0008b\u0002B\u0017c\u0011\u0005#qF\u0001\u0008i>\u000c%O]1z+\u0011\u0011\tDa\u000e\u0015\t\tM\"Q\u0008\t\u0006\u001f\u00055%Q\u0007\t\u0004\u007f\t]B\u0001\u0003B\u001d\u0005W\u0011\rAa\u000f\u0003\u0003\t\u000b\"a\u000f\u001b\t\u0015\t}\"1FA\u0001\u0002\u0008\u0011\t%\u0001\u0006fm&$WM\\2fIE\u0002bAa\u0011\u0003J\tURB\u0001B#\u0015\r\u00119EB\u0001\u0008e\u00164G.Z2u\u0013\u0011\u0011YE!\u0012\u0003\u0011\rc\u0017m]:UC\u001eDqAa\u00142\t\u0013\u0011\t&A\u0005v]^\u0014\u0018\r]!sOR\u0019aBa\u0015\t\u000f\tU#Q\na\u0001i\u0005\u0019\u0011M]4\t\u000f\te\u0013\u0007\"\u0001\u0003\\\u00051am\u001c:nCR$2!\u0014B/\u0011!\u0011yFa\u0016A\u0002\t\u0005\u0014\u0001B1sON\u0004BaDAli!9!QM\u0019\u0005\u0002\t\u001d\u0014a\u00034pe6\u000cG\u000fT8dC2$R!\u0014B5\u0005kB\u0001Ba\u001b\u0003d\u0001\u0007!QN\u0001\u0002YB!!q\u000eB9\u001b\t\ty+\u0003\u0003\u0003t\u0005=&A\u0002\'pG\u0006dW\r\u0003\u0005\u0003`\t\r\u0004\u0019\u0001B1!\rQ\u0011G\u0010"
.end annotation


# virtual methods
.method public abstract $times(I)Ljava/lang/String;
.end method

.method public abstract apply(I)C
.end method

.method public abstract capitalize()Ljava/lang/String;
.end method

.method public abstract compare(Ljava/lang/String;)I
.end method

.method public abstract format(Lscala/collection/Seq;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract lines()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract linesIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract linesWithSeparators()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mkString()Ljava/lang/String;
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "TRepr;>;"
        }
    .end annotation
.end method

.method public abstract r()Lscala/util/matching/Regex;
.end method

.method public abstract r(Lscala/collection/Seq;)Lscala/util/matching/Regex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/util/matching/Regex;"
        }
    .end annotation
.end method

.method public abstract replaceAllLiterally(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract slice(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TRepr;"
        }
    .end annotation
.end method

.method public abstract split(C)[Ljava/lang/String;
.end method

.method public abstract split([C)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation
.end method

.method public abstract stripLineEnd()Ljava/lang/String;
.end method

.method public abstract stripMargin()Ljava/lang/String;
.end method

.method public abstract stripMargin(C)Ljava/lang/String;
.end method

.method public abstract stripPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract stripSuffix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract toBoolean()Z
.end method

.method public abstract toByte()B
.end method

.method public abstract toDouble()D
.end method

.method public abstract toFloat()F
.end method

.method public abstract toInt()I
.end method

.method public abstract toLong()J
.end method

.method public abstract toShort()S
.end method
