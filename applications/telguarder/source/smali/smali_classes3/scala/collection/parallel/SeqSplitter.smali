.class public interface abstract Lscala/collection/parallel/SeqSplitter;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/collection/parallel/IterableSplitter;
.implements Lscala/collection/parallel/AugmentedSeqIterator;
.implements Lscala/collection/parallel/PreciseSplitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/SeqSplitter$Taken;,
        Lscala/collection/parallel/SeqSplitter$Mapped;,
        Lscala/collection/parallel/SeqSplitter$Zipped;,
        Lscala/collection/parallel/SeqSplitter$Patched;,
        Lscala/collection/parallel/SeqSplitter$Appended;,
        Lscala/collection/parallel/SeqSplitter$ZippedAll;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Lscala/collection/parallel/AugmentedSeqIterator<",
        "TT;>;",
        "Lscala/collection/parallel/PreciseSplitter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tMf\u0001C\u0001\u0003!\u0003\r\t!C\u0017\u0003\u0017M+\u0017o\u00159mSR$XM\u001d\u0006\u0003\u0007\u0011\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0015U\u0019R\u0001A\u0006\u0010=\u0005\u0002\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0011\u0013R,\'/\u00192mKN\u0003H.\u001b;uKJ\u0004\"\u0001F\u000b\r\u0001\u00111a\u0003\u0001CC\u0002]\u0011\u0011\u0001V\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\u0008\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\u0011?MI!\u0001\t\u0002\u0003)\u0005+x-\\3oi\u0016$7+Z9Ji\u0016\u0014\u0018\r^8s!\r\u0001\"eE\u0005\u0003G\t\u0011q\u0002\u0015:fG&\u001cXm\u00159mSR$XM\u001d\u0005\u0006K\u0001!\tAJ\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u001d\u0002\"\u0001\u0004\u0015\n\u0005%2!\u0001B+oSRDQa\u000b\u0001\u0007\u00021\n1\u0001Z;q+\u0005i\u0003c\u0001\t\u0001\'!)q\u0006\u0001D\u0001a\u0005)1\u000f\u001d7jiV\t\u0011\u0007E\u00023k5r!\u0001D\u001a\n\u0005Q2\u0011a\u00029bG.\u000cw-Z\u0005\u0003m]\u00121aU3r\u0015\t!d\u0001C\u0003:\u0001\u0019\u0005!(\u0001\u0004qgBd\u0017\u000e\u001e\u000b\u0003cmBQ\u0001\u0010\u001dA\u0002u\nQa]5{KN\u00042\u0001\u0004 A\u0013\tydA\u0001\u0006=e\u0016\u0004X-\u0019;fIz\u0002\"\u0001D!\n\u0005\t3!aA%oi\")A\t\u0001C!a\u0005\u00192\u000f\u001d7ji^KG\u000f[*jO:\u000cG\u000e\\5oO\")a\t\u0001C\u0001\u000f\u0006!\u0002o\u001d9mSR<\u0016\u000e\u001e5TS\u001et\u0017\r\u001c7j]\u001e$\"!\r%\t\u000bq*\u0005\u0019A\u001f\t\u000b)\u0003a\u0011A&\u0002\u0013I,W.Y5oS:<W#\u0001!\u0007\t5\u0003\u0001A\u0014\u0002\u0006)\u0006\\WM\\\n\u0004\u0019>k\u0003C\u0001)R\u001b\u0005\u0001\u0011BA\'\u0012\u0011!\u0019FJ!A!\u0002\u0013\u0001\u0015A\u0001;l\u0011\u0015)F\n\"\u0001W\u0003\u0019a\u0014N\\5u}Q\u0011q\u000b\u0017\t\u0003!2CQa\u0015+A\u0002\u0001CQa\u000b\'\u0005B1BQa\u000c\'\u0005BABQ!\u000f\'\u0005\u0002q#\"!M/\t\u000bqZ\u0006\u0019A\u001f\t\r}\u0003A\u0011\t\u0003a\u0003!qWm\u001e+bW\u0016tGCA,b\u0011\u0015\u0011g\u000c1\u0001A\u0003\u0015)h\u000e^5m\u0011\u0015!\u0007\u0001\"\u0011f\u0003\u0011!\u0018m[3\u0015\u000552\u0007\"B4d\u0001\u0004\u0001\u0015!\u00018\t\u000b%\u0004A\u0011\t6\u0002\u000bMd\u0017nY3\u0015\u00075ZW\u000eC\u0003mQ\u0002\u0007\u0001)A\u0003ge>l\u0017\u0007C\u0003oQ\u0002\u0007\u0001)\u0001\u0004v]RLG.\r\u0004\u0005a\u0002\u0001\u0011O\u0001\u0004NCB\u0004X\rZ\u000b\u0003eZ\u001c2a\\:y!\r\u0001F/^\u0005\u0003aF\u0001\"\u0001\u0006<\u0005\u000b]|\'\u0019A\u000c\u0003\u0003M\u00032\u0001\u0005\u0001v\u0011!QxN!A!\u0002\u0013Y\u0018!\u00014\u0011\t1a8#^\u0005\u0003{\u001a\u0011\u0011BR;oGRLwN\\\u0019\t\u000bU{G\u0011A@\u0015\t\u0005\u0005\u00111\u0001\t\u0004!>,\u0008\"\u0002>\u007f\u0001\u0004Y\u0008BB\u0016p\t\u0003\n9!F\u0001y\u0011\u0019ys\u000e\"\u0011\u0002\u000cU\u0011\u0011Q\u0002\t\u0004eUB\u0008BB\u001dp\t\u0003\t\t\u0002\u0006\u0003\u0002\u000e\u0005M\u0001B\u0002\u001f\u0002\u0010\u0001\u0007Q\u0008C\u0004\u0002\u0018\u0001!\t%!\u0007\u0002\u00075\u000c\u0007/\u0006\u0003\u0002\u001c\u0005\u0005B\u0003BA\u000f\u0003G\u0001B\u0001U8\u0002 A\u0019A#!\t\u0005\r]\u000c)B1\u0001\u0018\u0011\u001dQ\u0018Q\u0003a\u0001\u0003K\u0001R\u0001\u0004?\u0014\u0003?1a!!\u000b\u0001\u0001\u0005-\"\u0001C!qa\u0016tG-\u001a3\u0016\r\u00055\u0012QGA\u001f\'\u0019\t9#a\u000c\u0002DA9\u0001+!\r\u00024\u0005m\u0012bAA\u0015#A\u0019A#!\u000e\u0005\u0011\u0005]\u0012q\u0005b\u0001\u0003s\u0011\u0011!V\t\u0003\'m\u00012\u0001FA\u001f\t!\ty$a\nC\u0002\u0005\u0005#A\u0001)J#\rA\u00121\t\t\u0005!\u0001\t\u0019\u0004C\u0007\u0002H\u0005\u001d\"\u0011!Q\u0001\n\u0005m\u0012\u0011J\u0001\u0003SRLA!a\u0013\u00022\u0005!A\u000f[1u\u0011\u001d)\u0016q\u0005C\u0001\u0003\u001f\"B!!\u0015\u0002TA9\u0001+a\n\u00024\u0005m\u0002\u0002CA$\u0003\u001b\u0002\r!a\u000f\t\u000f-\n9\u0003\"\u0011\u0002XU\u0011\u00111\t\u0005\u0008_\u0005\u001dB\u0011IA.+\t\ti\u0006\u0005\u00033k\u0005\r\u0003bB\u001d\u0002(\u0011\u0005\u0011\u0011\r\u000b\u0005\u0003;\n\u0019\u0007\u0003\u0004=\u0003?\u0002\r!\u0010\u0005\u0008\u0003O\u0002A\u0011AA5\u00031\t\u0007\u000f]3oIB\u000b\'oU3r+\u0019\tY\'!\u001d\u0002vQ!\u0011QNA>!\u001d\u0001\u0016qEA8\u0003g\u00022\u0001FA9\t!\t9$!\u001aC\u0002\u0005e\u0002c\u0001\u000b\u0002v\u0011A\u0011qHA3\u0005\u0004\t9(E\u0002\u0019\u0003s\u0002B\u0001\u0005\u0001\u0002p!A\u00111JA3\u0001\u0004\t\u0019H\u0002\u0004\u0002\u0000\u0001\u0001\u0011\u0011\u0011\u0002\u00075&\u0004\u0008/\u001a3\u0016\t\u0005\r\u00151R\n\u0007\u0003{\n))!$\u0011\u000bA\u000b9)!#\n\u0007\u0005}\u0014\u0003E\u0002\u0015\u0003\u0017#aa^A?\u0005\u00049\u0002\u0003\u0002\t\u0001\u0003\u001f\u0003b\u0001DAI\'\u0005%\u0015bAAJ\r\t1A+\u001e9mKJBQ\"a&\u0002~\t\u0005\t\u0015!\u0003\u0002\u001a\u0006m\u0015A\u0001;j!\u0011\u0001\u0002!!#\n\t\u0005-\u0013q\u0011\u0005\u0008+\u0006uD\u0011AAP)\u0011\t\t+a)\u0011\u000bA\u000bi(!#\t\u0011\u0005]\u0015Q\u0014a\u0001\u00033CqaKA?\t\u0003\n9+\u0006\u0002\u0002\u000e\"9q&! \u0005B\u0005-VCAAW!\u0011\u0011T\'!$\t\u000fe\ni\u0008\"\u0001\u00022R!\u0011QVAZ\u0011\u001d\t),a,A\u0002u\n1a\u001d>t\u0011\u001d\tI\u000c\u0001C!\u0003w\u000b\u0011B_5q!\u0006\u00148+Z9\u0016\t\u0005u\u00161\u0019\u000b\u0005\u0003\u007f\u000b)\rE\u0003Q\u0003{\n\t\rE\u0002\u0015\u0003\u0007$aa^A\\\u0005\u00049\u0002\u0002CA&\u0003o\u0003\r!a2\u0011\tA\u0001\u0011\u0011\u0019\u0004\u0007\u0003\u0017\u0004\u0001!!4\u0003\u0013iK\u0007\u000f]3e\u00032dWCBAh\u0003/\u000cYn\u0005\u0004\u0002J\u0006E\u0017Q\u001c\t\u0008!\u0006M\u0017Q[Am\u0013\r\tY-\u0005\t\u0004)\u0005]G\u0001CA\u001c\u0003\u0013\u0014\r!!\u000f\u0011\u0007Q\tY\u000e\u0002\u0004x\u0003\u0013\u0014\ra\u0006\t\u0005!\u0001\ty\u000eE\u0004\r\u0003#\u000b).!7\t\u001b\u0005]\u0015\u0011\u001aB\u0001B\u0003%\u00111]As!\u0011\u0001\u0002!!7\n\t\u0005-\u00131\u001b\u0005\u000e\u0003S\u000cIM!A!\u0002\u0013\t).a;\u0002\u000bQD\u0017n]3\n\t\u00055\u00181[\u0001\ti\"L7/\u001a7f[\"i\u0011\u0011_Ae\u0005\u0003\u0005\u000b\u0011BAm\u0003g\u000cQ\u0001\u001e5bi\u0016LA!!>\u0002T\u0006AA\u000f[1uK2,W\u000eC\u0004V\u0003\u0013$\t!!?\u0015\u0011\u0005m\u0018Q`A\u0000\u0005\u0003\u0001r\u0001UAe\u0003+\u000cI\u000e\u0003\u0005\u0002\u0018\u0006]\u0008\u0019AAr\u0011!\tI/a>A\u0002\u0005U\u0007\u0002CAy\u0003o\u0004\r!!7\t\u000f-\nI\r\"\u0011\u0003\u0006U\u0011\u0011Q\u001c\u0005\t\u0005\u0013\tI\r\"\u0003\u0003\u000c\u00059\u0001/\u0019;dQ\u0016lWC\u0001B\u0007!\u001da\u0011\u0011\u0013B\u0008\u0003G\u0004B\u0001\u0005\u0001\u0002V\"9q&!3\u0005B\tMQC\u0001B\u000b!\u0011\u0011T\'!8\t\u000fe\nI\r\"\u0001\u0003\u001aQ!!Q\u0003B\u000e\u0011\u0019a$q\u0003a\u0001{!9!q\u0004\u0001\u0005B\t\u0005\u0012\u0001\u0004>ja\u0006cG\u000eU1s\'\u0016\u000cX\u0003\u0003B\u0012\u0005k\u0011IC!\u000c\u0015\u0011\t\u0015\"q\u0007B\u001e\u0005\u007f\u0001r\u0001UAe\u0005O\u0011Y\u0003E\u0002\u0015\u0005S!\u0001\"a\u000e\u0003\u001e\t\u0007\u0011\u0011\u0008\t\u0004)\t5B\u0001\u0003B\u0018\u0005;\u0011\rA!\r\u0003\u0003I\u000b2Aa\r\u001c!\r!\"Q\u0007\u0003\u0007o\nu!\u0019A\u000c\t\u0011\u0005-#Q\u0004a\u0001\u0005s\u0001B\u0001\u0005\u0001\u00034!A!Q\u0008B\u000f\u0001\u0004\u00119#\u0001\u0005uQ&\u001cX\t\\3n\u0011!\u0011\tE!\u0008A\u0002\t-\u0012\u0001\u0003;iCR,E.Z7\t\r\t\u0015\u0003\u0001\"\u0001-\u0003\u001d\u0011XM^3sg\u00164aA!\u0013\u0001\u0001\t-#a\u0002)bi\u000eDW\rZ\u000b\u0005\u0005\u001b\u0012\u0019fE\u0003\u0003H-\u0011y\u0005\u0005\u0003\u0011\u0001\tE\u0003c\u0001\u000b\u0003T\u0011A\u0011q\u0007B$\u0005\u0004\tI\u0004\u0003\u0006\u0003X\t\u001d#\u0011!Q\u0001\n\u0001\u000bAA\u001a:p[\"Y!1\u000cB$\u0005\u0003\u0005\u000b\u0011\u0002B(\u0003\u0015\u0001\u0018\r^2i\u0011)\u0011yFa\u0012\u0003\u0002\u0003\u0006I\u0001Q\u0001\te\u0016\u0004H.Y2fI\"9QKa\u0012\u0005\u0002\t\rD\u0003\u0003B3\u0005O\u0012IGa\u001b\u0011\u000bA\u00139E!\u0015\t\u000f\t]#\u0011\ra\u0001\u0001\"A!1\u000cB1\u0001\u0004\u0011y\u0005C\u0004\u0003`\t\u0005\u0004\u0019\u0001!\t\u0013\t=$q\tQ\u0001\n\tE\u0014\u0001\u0002;sS>\u0004rAa\u001d\u0002(\tES\u0006E\u0004.\u0003O\u0011\tFa\u0014\t\u0011\t]$q\tC\u0001\u0005s\nq\u0001[1t\u001d\u0016DH/\u0006\u0002\u0003|A\u0019AB! \n\u0007\t}dAA\u0004C_>dW-\u00198\t\u0011\t\r%q\tC\u0001\u0005\u000b\u000bAA\\3yiR\u0011!\u0011\u000b\u0005\u0007\u0015\n\u001dC\u0011A&\t\u000f-\u00129\u0005\"\u0001\u0003\u000cV\u0011!Q\u0012\t\u0006[\t\u001d#\u0011\u000b\u0005\u0008_\t\u001dC\u0011\u0001BI+\t\u0011\u0019\n\u0005\u00033k\t=\u0003bB\u001d\u0003H\u0011\u0005!q\u0013\u000b\u0005\u0005\'\u0013I\n\u0003\u0004=\u0005+\u0003\r!\u0010\u0005\u0008\u0005;\u0003A\u0011\u0001BP\u0003-\u0001\u0018\r^2i!\u0006\u00148+Z9\u0016\t\t\u0005&q\u0015\u000b\t\u0005G\u0013IKa+\u00032B)\u0001Ka\u0012\u0003&B\u0019ACa*\u0005\u0011\u0005]\"1\u0014b\u0001\u0003sAqAa\u0016\u0003\u001c\u0002\u0007\u0001\t\u0003\u0005\u0003.\nm\u0005\u0019\u0001BX\u0003)\u0001\u0018\r^2i\u000b2,Wn\u001d\t\u0005!\u0001\u0011)\u000bC\u0004\u0003`\tm\u0005\u0019\u0001!"
.end annotation


# virtual methods
.method public abstract appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Appended<TU;TPI;>;"
        }
    .end annotation
.end method

.method public abstract dup()Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Mapped<TS;>;"
        }
    .end annotation
.end method

.method public abstract newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Taken;"
        }
    .end annotation
.end method

.method public abstract patchParSeq(ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Patched<TU;>;"
        }
    .end annotation
.end method

.method public abstract psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract remaining()I
.end method

.method public abstract reverse()Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract slice(II)Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract split()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract splitWithSignalling()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract take(I)Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;
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
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.ZippedAll<TU;TR;>;"
        }
    .end annotation
.end method

.method public abstract zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Zipped<TS;>;"
        }
    .end annotation
.end method
