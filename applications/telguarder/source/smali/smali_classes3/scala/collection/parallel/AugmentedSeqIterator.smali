.class public interface abstract Lscala/collection/parallel/AugmentedSeqIterator;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/collection/parallel/AugmentedIterableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/AugmentedIterableIterator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001}4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005A\u0001\u0003\u0002\u0015\u0003V<W.\u001a8uK\u0012\u001cV-]%uKJ\u000cGo\u001c:\u000b\u0005\r!\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017-\u0006\u0002\n)M\u0019\u0001A\u0003\u0008\u0011\u0005-aQ\"\u0001\u0004\n\u000551!AB!osJ+g\rE\u0002\u0010!Ii\u0011AA\u0005\u0003#\t\u0011\u0011$Q;h[\u0016tG/\u001a3Ji\u0016\u0014\u0018M\u00197f\u0013R,\'/\u0019;peB\u00111\u0003\u0006\u0007\u0001\t\u0019)\u0002\u0001\"b\u0001/\t\tAk\u0001\u0001\u0012\u0005aY\u0002CA\u0006\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u0005-a\u0012BA\u000f\u0007\u0005\r\te.\u001f\u0005\u0006?\u0001!\t\u0001I\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0005\u0002\"a\u0003\u0012\n\u0005\r2!\u0001B+oSRDQ!\n\u0001\u0007\u0002\u0019\n\u0011B]3nC&t\u0017N\\4\u0016\u0003\u001d\u0002\"a\u0003\u0015\n\u0005%2!aA%oi\")1\u0006\u0001C\u0001Y\u0005a\u0001O]3gSbdUM\\4uQR\u0011q%\u000c\u0005\u0006])\u0002\raL\u0001\u0005aJ,G\r\u0005\u0003\u000caI\u0011\u0014BA\u0019\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\u000cg%\u0011AG\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u00151\u0004\u0001\"\u00118\u0003)Ig\u000eZ3y/\",\'/\u001a\u000b\u0003OaBQAL\u001bA\u0002=BQA\u000f\u0001\u0005\u0002m\na\u0002\\1ti&sG-\u001a=XQ\u0016\u0014X\r\u0006\u0002(y!)a&\u000fa\u0001_!)a\u0008\u0001C\u0001\u007f\u0005Y1m\u001c:sKN\u0004xN\u001c3t+\t\u0001E\n\u0006\u0002B\u001dR\u0011!G\u0011\u0005\u0006\u0007v\u0002\r\u0001R\u0001\u0005i\"\u000cG\u000fE\u0002F\u0011.s!a\u0003$\n\u0005\u001d3\u0011a\u00029bG.\u000cw-Z\u0005\u0003\u0013*\u0013\u0001\"\u0013;fe\u0006$xN\u001d\u0006\u0003\u000f\u001a\u0001\"a\u0005\'\u0005\u000b5k$\u0019A\u000c\u0003\u0003MCQaT\u001fA\u0002A\u000bAaY8seB)1\"\u0015\nLe%\u0011!K\u0002\u0002\n\rVt7\r^5p]JBQ\u0001\u0016\u0001\u0005\u0002U\u000b\u0001C]3wKJ\u001cXMM2p[\nLg.\u001a:\u0016\u0007Y[v\u000c\u0006\u0002XCB!q\u0002\u0017._\u0013\tI&A\u0001\u0005D_6\u0014\u0017N\\3s!\t\u00192\u000cB\u0003]\'\n\u0007QLA\u0001V#\t\u00112\u0004\u0005\u0002\u0014?\u0012)\u0001m\u0015b\u0001/\t!A\u000b[5t\u0011\u0015\u00117\u000b1\u0001X\u0003\t\u0019\'\rC\u0003e\u0001\u0011\u0005Q-A\nsKZ,\'o]3NCB\u00144m\\7cS:,\'/F\u0002gS.$2aZ7q!\u0011y\u0001\u000c\u001b6\u0011\u0005MIG!B\'d\u0005\u00049\u0002CA\nl\t\u0015a7M1\u0001\u0018\u0005\u0011!\u0006.\u0019;\t\u000b9\u001c\u0007\u0019A8\u0002\u0003\u0019\u0004Ba\u0003\u0019\u0013Q\")!m\u0019a\u0001O\")!\u000f\u0001C\u0001g\u0006\u0001R\u000f\u001d3bi\u0016$\'gY8nE&tWM]\u000b\u0004i^LH\u0003B;{yz\u0004Ba\u0004-wqB\u00111c\u001e\u0003\u00069F\u0014\r!\u0018\t\u0003\'e$Q\u0001\\9C\u0002]AQa_9A\u0002\u001d\nQ!\u001b8eKbDQ!`9A\u0002Y\u000cA!\u001a7f[\")!-\u001da\u0001k\u0002"
.end annotation


# virtual methods
.method public abstract corresponds(Lscala/Function2;Lscala/collection/Iterator;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TS;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "TS;>;)Z"
        }
    .end annotation
.end method

.method public abstract indexWhere(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract lastIndexWhere(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract prefixLength(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract remaining()I
.end method

.method public abstract reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation
.end method

.method public abstract reverseMap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation
.end method

.method public abstract updated2combiner(ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITU;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation
.end method
