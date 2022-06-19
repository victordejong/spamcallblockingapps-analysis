.class public interface abstract Lscala/collection/parallel/IterableSplitter;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/collection/parallel/AugmentedIterableIterator;
.implements Lscala/collection/parallel/Splitter;
.implements Lscala/collection/generic/DelegatedSignalling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/IterableSplitter$Taken;,
        Lscala/collection/parallel/IterableSplitter$Mapped;,
        Lscala/collection/parallel/IterableSplitter$Zipped;,
        Lscala/collection/parallel/IterableSplitter$Appended;,
        Lscala/collection/parallel/IterableSplitter$ZippedAll;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/AugmentedIterableIterator<",
        "TT;>;",
        "Lscala/collection/parallel/Splitter<",
        "TT;>;",
        "Lscala/collection/generic/DelegatedSignalling;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tEh\u0001C\u0001\u0003!\u0003\r\t!C\u001f\u0003!%#XM]1cY\u0016\u001c\u0006\u000f\\5ui\u0016\u0014(BA\u0002\u0005\u0003!\u0001\u0018M]1mY\u0016d\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016\'\u0019\u00011b\u0004\u0010\"OA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0007A\t2#D\u0001\u0003\u0013\t\u0011\"AA\rBk\u001elWM\u001c;fI&#XM]1cY\u0016LE/\u001a:bi>\u0014\u0008C\u0001\u000b\u0016\u0019\u0001!aA\u0006\u0001\u0005\u0006\u00049\"!\u0001+\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0004!}\u0019\u0012B\u0001\u0011\u0003\u0005!\u0019\u0006\u000f\\5ui\u0016\u0014\u0008C\u0001\u0012&\u001b\u0005\u0019#B\u0001\u0013\u0005\u0003\u001d9WM\\3sS\u000eL!AJ\u0012\u0003\u0015MKwM\\1mY&tw\r\u0005\u0002#Q%\u0011\u0011f\t\u0002\u0014\t\u0016dWmZ1uK\u0012\u001c\u0016n\u001a8bY2Lgn\u001a\u0005\u0006W\u0001!\t\u0001L\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u00035\u0002\"\u0001\u0004\u0018\n\u0005=2!\u0001B+oSRDq!\r\u0001A\u0002\u0013\u0005!\'\u0001\u0008tS\u001et\u0017\r\u001c#fY\u0016<\u0017\r^3\u0016\u0003\u0005Bq\u0001\u000e\u0001A\u0002\u0013\u0005Q\'\u0001\ntS\u001et\u0017\r\u001c#fY\u0016<\u0017\r^3`I\u0015\u000cHCA\u00177\u0011\u001d94\'!AA\u0002\u0005\n1\u0001\u001f\u00132\u0011\u0019I\u0004\u0001)Q\u0005C\u0005y1/[4oC2$U\r\\3hCR,\u0007\u0005C\u0003<\u0001\u0019\u0005A(A\u0002ekB,\u0012!\u0010\t\u0004!\u0001\u0019\u0002\"B \u0001\r\u0003\u0001\u0015!B:qY&$X#A!\u0011\u0007\t+UH\u0004\u0002\r\u0007&\u0011AIB\u0001\u0008a\u0006\u001c7.Y4f\u0013\t1uIA\u0002TKFT!\u0001\u0012\u0004\t\u000b%\u0003A\u0011\u0001!\u0002\'M\u0004H.\u001b;XSRD7+[4oC2d\u0017N\\4\t\u000b-\u0003A\u0011\u0001\'\u0002%MDw.\u001e7e\'Bd\u0017\u000e\u001e$veRDWM]\u000b\u0003\u001b^#2AT)Z!\taq*\u0003\u0002Q\r\t9!i\\8mK\u0006t\u0007\"\u0002*K\u0001\u0004\u0019\u0016\u0001B2pY2\u00042\u0001\u0005+W\u0013\t)&AA\u0006QCJLE/\u001a:bE2,\u0007C\u0001\u000bX\t\u0015A&J1\u0001\u0018\u0005\u0005\u0019\u0006\"\u0002.K\u0001\u0004Y\u0016\u0001\u00059be\u0006dG.\u001a7jg6dUM^3m!\taA,\u0003\u0002^\r\t\u0019\u0011J\u001c;\t\u000b}\u0003a\u0011\u00011\u0002\u0013I,W.Y5oS:<W#A.\t\u000b\t\u0004A\u0011C2\u0002\u0017\t,\u0018\u000e\u001c3TiJLgn\u001a\u000b\u0003I.\u0004\"!\u001a5\u000f\u000511\u0017BA4\u0007\u0003\u0019\u0001&/\u001a3fM&\u0011\u0011N\u001b\u0002\u0007\'R\u0014\u0018N\\4\u000b\u0005\u001d4\u0001\"\u00027b\u0001\u0004i\u0017aB2m_N,(/\u001a\t\u0005\u00199\u0004X&\u0003\u0002p\r\tIa)\u001e8di&|g.\r\t\u0005\u00199$W\u0006\u0003\u0004s\u0001\u0011\u0005!a]\u0001\u0011I\u0016\u0014WoZ%oM>\u0014X.\u0019;j_:,\u0012\u0001\u001e\t\u0003kjl\u0011A\u001e\u0006\u0003ob\u000cA\u0001\\1oO*\t\u00110\u0001\u0003kCZ\u000c\u0017BA5w\r\u0011a\u0008\u0001A?\u0003\u000bQ\u000b7.\u001a8\u0014\u0007m\\Q\u0008\u0003\u0005\u0000w\n\u0005\t\u0015!\u0003\\\u0003\u0015!\u0018m[3o\u0011\u001d\t\u0019a\u001fC\u0001\u0003\u000b\ta\u0001P5oSRtD\u0003BA\u0004\u0003\u0017\u00012!!\u0003|\u001b\u0005\u0001\u0001BB@\u0002\u0002\u0001\u00071\u000cC\u0004`w\u0002\u0007I\u0011\u00011\t\u0013\u0005E1\u00101A\u0005\u0002\u0005M\u0011!\u0004:f[\u0006Lg.\u001b8h?\u0012*\u0017\u000fF\u0002.\u0003+A\u0001bNA\u0008\u0003\u0003\u0005\ra\u0017\u0005\u0008\u00033Y\u0008\u0015)\u0003\\\u0003)\u0011X-\\1j]&tw\r\t\u0005\u0008\u0003;YH\u0011AA\u0010\u0003\u001dA\u0017m\u001d(fqR,\u0012A\u0014\u0005\u0008\u0003GYH\u0011AA\u0013\u0003\u0011qW\r\u001f;\u0015\u0003MAQaO>\u0005\u0002qBQaP>\u0005\u0002\u0001C\u0001\"!\u000c|A\u0013E\u0011qF\u0001\u0008i\u0006\\WmU3r+\u0011\t\t$!\u0010\u0015\t\u0005M\u0012Q\n\u000b\u0005\u0003k\t\u0019\u0005\u0005\u0004\u00028\u0005e\u00121H\u0007\u0002\t%\u0011a\t\u0002\t\u0004)\u0005uB\u0001CA \u0003W\u0011\r!!\u0011\u0003\u0005AK\u0015C\u0001\r>\u0011!\t)%a\u000bA\u0002\u0005\u001d\u0013!\u0002;bW\u0016\u0014\u0008\u0003\u0003\u0007\u0002J\u0005m2,a\u000f\n\u0007\u0005-cAA\u0005Gk:\u001cG/[8oe!A\u0011qJA\u0016\u0001\u0004\t\t&\u0001\u0002tcB!!)RA\u001e\u0011!\t)\u0006\u0001C\u0001\t\u0005]\u0013\u0001\u00038foR\u000b7.\u001a8\u0015\t\u0005\u001d\u0011\u0011\u000c\u0005\u0008\u00037\n\u0019\u00061\u0001\\\u0003\u0015)h\u000e^5m\u0011!\ty\u0006\u0001C\u0001\t\u0005\u0005\u0014\u0001\u00058foNc\u0017nY3J]R,\'O\\1m+\u0011\t\u0019\'a\u001a\u0015\r\u0005\u0015\u0014QNA9!\r!\u0012q\r\u0003\t\u0003S\niF1\u0001\u0002l\t\tQ+E\u0002\u0019\u0003\u000fA\u0001\"a\u001c\u0002^\u0001\u0007\u0011QM\u0001\u0003SRDq!a\u001d\u0002^\u0001\u00071,A\u0003ge>l\u0017\u0007C\u0004\u0002x\u0001!\t%!\u001f\u0002\tQ\u000c7.\u001a\u000b\u0004{\u0005m\u0004bBA?\u0003k\u0002\raW\u0001\u0002]\"9\u0011\u0011\u0011\u0001\u0005B\u0005\r\u0015!B:mS\u000e,G#B\u001f\u0002\u0006\u0006\u001d\u0005bBA:\u0003\u007f\u0002\ra\u0017\u0005\u0008\u0003\u0013\u000by\u00081\u0001\\\u0003\u0019)h\u000e^5mc\u00191\u0011Q\u0012\u0001\u0001\u0003\u001f\u0013a!T1qa\u0016$W\u0003BAI\u0003/\u001bR!a#\u000c\u0003\'\u0003B\u0001\u0005\u0001\u0002\u0016B\u0019A#a&\u0005\ra\u000bYI1\u0001\u0018\u0011-\tY*a#\u0003\u0002\u0003\u0006I!!(\u0002\u0003\u0019\u0004R\u0001\u00048\u0014\u0003+C\u0001\"a\u0001\u0002\u000c\u0012\u0005\u0011\u0011\u0015\u000b\u0005\u0003G\u000b)\u000b\u0005\u0004\u0002\n\u0005-\u0015Q\u0013\u0005\t\u00037\u000by\n1\u0001\u0002\u001e\"A\u0011QDAF\t\u0003\ty\u0002\u0003\u0005\u0002$\u0005-E\u0011AAV)\t\t)\n\u0003\u0004`\u0003\u0017#\t\u0001\u0019\u0005\u0008w\u0005-E\u0011AAY+\t\t\u0019\nC\u0004@\u0003\u0017#\t!!.\u0016\u0005\u0005]\u0006\u0003\u0002\"F\u0003\'Cq!a/\u0001\t\u0003\ni,A\u0002nCB,B!a0\u0002FR!\u0011\u0011YAd!\u0019\tI!a#\u0002DB\u0019A#!2\u0005\ra\u000bIL1\u0001\u0018\u0011!\tY*!/A\u0002\u0005%\u0007#\u0002\u0007o\'\u0005\rgABAg\u0001\u0001\tyM\u0001\u0005BaB,g\u000eZ3e+\u0019\t\t.a6\u0002dN)\u00111Z\u0006\u0002TB!\u0001\u0003AAk!\r!\u0012q\u001b\u0003\t\u0003S\nYM1\u0001\u0002ZF\u00111c\u0007\u0005\u000c\u0003;\u000cYM!b\u0001\n#\ty.\u0001\u0003uQ\u0006$XCAAq!\r!\u00121\u001d\u0003\t\u0003\u007f\tYM1\u0001\u0002fF\u0019\u0001$a5\t\u0017\u0005%\u00181\u001aB\u0001B\u0003%\u0011\u0011]\u0001\u0006i\"\u000cG\u000f\t\u0005\t\u0003\u0007\tY\r\"\u0001\u0002nR!\u0011q^Ay!!\tI!a3\u0002V\u0006\u0005\u0008\u0002CAo\u0003W\u0004\r!!9\t\u0015\u0005U\u00181\u001aa\u0001\n#\t90\u0001\u0003dkJ\u0014XCAAj\u0011)\tY0a3A\u0002\u0013E\u0011Q`\u0001\tGV\u0014(o\u0018\u0013fcR\u0019Q&a@\t\u0013]\nI0!AA\u0002\u0005M\u0007\"\u0003B\u0002\u0003\u0017\u0004\u000b\u0015BAj\u0003\u0015\u0019WO\u001d:!\u0011!\ti\"a3\u0005\u0002\u0005}\u0001\u0002CA\u0012\u0003\u0017$\tA!\u0003\u0015\u0005\u0005U\u0007BB0\u0002L\u0012\u0005\u0001\r\u0003\u0005\u0003\u0010\u0005-G\u0011CA\u0010\u000351\u0017N]:u\u001d>tW)\u001c9us\"91(a3\u0005\u0002\u0005]\u0008bB \u0002L\u0012\u0005!QC\u000b\u0003\u0005/\u0001BAQ#\u0002T\"9!1\u0004\u0001\u0005\u0002\tu\u0011!E1qa\u0016tG\rU1s\u0013R,\'/\u00192mKV1!q\u0004B\u0013\u0005S!BA!\t\u00030AA\u0011\u0011BAf\u0005G\u00119\u0003E\u0002\u0015\u0005K!\u0001\"!\u001b\u0003\u001a\t\u0007\u0011\u0011\u001c\t\u0004)\t%B\u0001CA \u00053\u0011\rAa\u000b\u0012\u0007a\u0011i\u0003\u0005\u0003\u0011\u0001\t\r\u0002\u0002CAo\u00053\u0001\rAa\n\u0007\r\tM\u0002\u0001\u0001B\u001b\u0005\u0019Q\u0016\u000e\u001d9fIV!!q\u0007B\"\'\u0015\u0011\td\u0003B\u001d!\u0011\u0001\u0002Aa\u000f\u0011\r1\u0011id\u0005B!\u0013\r\u0011yD\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0007Q\u0011\u0019\u0005\u0002\u0004Y\u0005c\u0011\ra\u0006\u0005\u000c\u0003;\u0014\tD!b\u0001\n#\u00119%\u0006\u0002\u0003JA)\u0001Ca\u0013\u0003B%\u0019!Q\n\u0002\u0003\u0017M+\u0017o\u00159mSR$XM\u001d\u0005\u000c\u0003S\u0014\tD!A!\u0002\u0013\u0011I\u0005\u0003\u0005\u0002\u0004\tEB\u0011\u0001B*)\u0011\u0011)Fa\u0016\u0011\r\u0005%!\u0011\u0007B!\u0011!\tiN!\u0015A\u0002\t%\u0003\u0002CA\u000f\u0005c!\t!a\u0008\t\u0011\u0005\r\"\u0011\u0007C\u0001\u0005;\"\"Aa\u000f\t\r}\u0013\t\u0004\"\u0001a\u0011\u001dY$\u0011\u0007C\u0001\u0005G*\"A!\u000f\t\u000f}\u0012\t\u0004\"\u0001\u0003hU\u0011!\u0011\u000e\t\u0005\u0005\u0016\u0013I\u0004C\u0004\u0003n\u0001!\tAa\u001c\u0002\u0013iL\u0007\u000fU1s\'\u0016\u000cX\u0003\u0002B9\u0005o\"BAa\u001d\u0003zA1\u0011\u0011\u0002B\u0019\u0005k\u00022\u0001\u0006B<\t\u0019A&1\u000eb\u0001/!A\u0011Q\u001cB6\u0001\u0004\u0011Y\u0008E\u0003\u0011\u0005\u0017\u0012)H\u0002\u0004\u0003\u0000\u0001\u0001!\u0011\u0011\u0002\n5&\u0004\u0008/\u001a3BY2,bAa!\u0003\u000c\n=5#\u0002B?\u0017\t\u0015\u0005\u0003\u0002\t\u0001\u0005\u000f\u0003r\u0001\u0004B\u001f\u0005\u0013\u0013i\tE\u0002\u0015\u0005\u0017#\u0001\"!\u001b\u0003~\t\u0007\u0011\u0011\u001c\t\u0004)\t=EA\u0002-\u0003~\t\u0007q\u0003C\u0006\u0002^\nu$Q1A\u0005\u0012\tMUC\u0001BK!\u0015\u0001\"1\nBG\u0011-\tIO! \u0003\u0002\u0003\u0006IA!&\t\u0017\tm%Q\u0010BC\u0002\u0013E!QT\u0001\ti\"L7/\u001a7f[V\u0011!\u0011\u0012\u0005\u000c\u0005C\u0013iH!A!\u0002\u0013\u0011I)A\u0005uQ&\u001cX\r\\3nA!Y!Q\u0015B?\u0005\u000b\u0007I\u0011\u0003BT\u0003!!\u0008.\u0019;fY\u0016lWC\u0001BG\u0011-\u0011YK! \u0003\u0002\u0003\u0006IA!$\u0002\u0013QD\u0017\r^3mK6\u0004\u0003\u0002CA\u0002\u0005{\"\tAa,\u0015\u0011\tE&1\u0017B[\u0005o\u0003\u0002\"!\u0003\u0003~\t%%Q\u0012\u0005\t\u0003;\u0014i\u000b1\u0001\u0003\u0016\"A!1\u0014BW\u0001\u0004\u0011I\t\u0003\u0005\u0003&\n5\u0006\u0019\u0001BG\u0011!\tiB! \u0005\u0002\u0005}\u0001\u0002CA\u0012\u0005{\"\tA!0\u0015\u0005\t\u001d\u0005BB0\u0003~\u0011\u0005\u0001\rC\u0004<\u0005{\"\tAa1\u0016\u0005\t\u0015\u0005bB \u0003~\u0011\u0005!qY\u000b\u0003\u0005\u0013\u0004BAQ#\u0003\u0006\"9!Q\u001a\u0001\u0005\u0002\t=\u0017\u0001\u0004>ja\u0006cG\u000eU1s\'\u0016\u000cX\u0003\u0003Bi\u0005G\u00149Na7\u0015\u0011\tM\'Q\u001dBu\u0005[\u0004\u0002\"!\u0003\u0003~\tU\'\u0011\u001c\t\u0004)\t]G\u0001CA5\u0005\u0017\u0014\r!!7\u0011\u0007Q\u0011Y\u000e\u0002\u0005\u0003^\n-\'\u0019\u0001Bp\u0005\u0005\u0011\u0016c\u0001Bq7A\u0019ACa9\u0005\ra\u0013YM1\u0001\u0018\u0011!\tiNa3A\u0002\t\u001d\u0008#\u0002\t\u0003L\t\u0005\u0008\u0002\u0003Bv\u0005\u0017\u0004\rA!6\u0002\u0011QD\u0017n]#mK6D\u0001Ba<\u0003L\u0002\u0007!\u0011\\\u0001\ti\"\u000cG/\u00127f[\u0002"
.end annotation


# virtual methods
.method public abstract appendParIterable(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Appended<TU;TPI;>;"
        }
    .end annotation
.end method

.method public abstract buildString(Lscala/Function1;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract debugInformation()Ljava/lang/String;
.end method

.method public abstract dup()Lscala/collection/parallel/IterableSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Mapped<TS;>;"
        }
    .end annotation
.end method

.method public abstract newSliceInternal(Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Taken;>(TU;I)TU;"
        }
    .end annotation
.end method

.method public abstract newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Taken;"
        }
    .end annotation
.end method

.method public abstract remaining()I
.end method

.method public abstract shouldSplitFurther(Lscala/collection/parallel/ParIterable;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterable<",
            "TS;>;I)Z"
        }
    .end annotation
.end method

.method public abstract signalDelegate()Lscala/collection/generic/Signalling;
.end method

.method public abstract signalDelegate_$eq(Lscala/collection/generic/Signalling;)V
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract slice(II)Lscala/collection/parallel/IterableSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract split()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract splitWithSignalling()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract take(I)Lscala/collection/parallel/IterableSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;TU;TR;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.ZippedAll<TU;TR;>;"
        }
    .end annotation
.end method

.method public abstract zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Zipped<TS;>;"
        }
    .end annotation
.end method
