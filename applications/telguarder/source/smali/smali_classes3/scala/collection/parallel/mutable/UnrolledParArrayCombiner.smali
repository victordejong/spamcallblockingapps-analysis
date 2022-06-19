.class public interface abstract Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
.super Ljava/lang/Object;
.source "UnrolledParArrayCombiner.scala"

# interfaces
.implements Lscala/collection/parallel/Combiner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$CopyUnrolledToArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Combiner<",
        "TT;",
        "Lscala/collection/parallel/mutable/ParArray<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005=daB\u0001\u0003!\u0003\r\ta\u0003\u0002\u0019+:\u0014x\u000e\u001c7fIB\u000b\'/\u0011:sCf\u001cu.\u001c2j]\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\u000c\'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001D\u000c\u0014\u0007\u0001i\u0011\u0003\u0005\u0002\u000f\u001f5\t\u0001\"\u0003\u0002\u0011\u0011\t1\u0011I\\=SK\u001a\u0004BAE\n\u0016A5\tA!\u0003\u0002\u0015\t\tA1i\\7cS:,\'\u000f\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!\u0001+\u0012\u0005ii\u0002C\u0001\u0008\u001c\u0013\ta\u0002BA\u0004O_RD\u0017N\\4\u0011\u00059q\u0012BA\u0010\t\u0005\r\te.\u001f\t\u0004C\t*R\"\u0001\u0002\n\u0005\r\u0012!\u0001\u0003)be\u0006\u0013(/Y=\t\u000b\u0015\u0002A\u0011\u0001\u0014\u0002\r\u0011Jg.\u001b;%)\u00059\u0003C\u0001\u0008)\u0013\tI\u0003B\u0001\u0003V]&$\u0008bB\u0016\u0001\u0005\u0004%\t\u0001L\u0001\u0005EV4g-F\u0001.!\r\tc&H\u0005\u0003_\t\u0011a\u0003R8vE2LgnZ+oe>dG.\u001a3Ck\u001a4WM\u001d\u0005\u0007c\u0001\u0001\u000b\u0011B\u0017\u0002\u000b\t,hM\u001a\u0011\t\u000bM\u0002A\u0011\u0001\u001b\u0002\u0011\u0011\u0002H.^:%KF$\"!\u000e\u001c\u000e\u0003\u0001AQa\u000e\u001aA\u0002U\tA!\u001a7f[\")\u0011\u0008\u0001C\u0001u\u00051!/Z:vYR$\u0012\u0001\t\u0005\u0006y\u0001!\tAJ\u0001\u0006G2,\u0017M\u001d\u0005\u0006}\u0001!\teP\u0001\tg&TX\rS5oiR\u0011q\u0005\u0011\u0005\u0006\u0003v\u0002\rAQ\u0001\u0003gj\u0004\"AD\"\n\u0005\u0011C!aA%oi\")a\t\u0001C\u0001\u000f\u000691m\\7cS:,Wc\u0001%L\u001fR\u0011\u0011J\u0015\t\u0005%MQe\n\u0005\u0002\u0017\u0017\u0012)A*\u0012b\u0001\u001b\n\ta*\u0005\u0002\u001b+A\u0011ac\u0014\u0003\u0006!\u0016\u0013\r!\u0015\u0002\u0006\u001d\u0016<Hk\\\t\u0003AuAQaU#A\u0002%\u000bQa\u001c;iKJDQ!\u0016\u0001\u0005\u0002Y\u000bAa]5{KV\t!I\u0002\u0003Y\u0001\u0001I&aE\"paf,fN]8mY\u0016$Gk\\!se\u0006L8cA,\u000e5B!!cW\u0014^\u0013\taFA\u0001\u0003UCN\\\u0007CA\u001bX\u0011!yvK!A!\u0002\u0013\u0001\u0017!B1se\u0006L\u0008c\u0001\u0008b;%\u0011!\r\u0003\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\tI^\u0013\t\u0011)A\u0005\u0005\u00061qN\u001a4tKRD\u0001BZ,\u0003\u0002\u0003\u0006IAQ\u0001\u0008Q><X.\u00198z\u0011\u0015Aw\u000b\"\u0001j\u0003\u0019a\u0014N\\5u}Q!QL[6m\u0011\u0015yv\r1\u0001a\u0011\u0015!w\r1\u0001C\u0011\u00151w\r1\u0001C\u0011\u001dIt\u000b1A\u0005\u00029,\u0012a\n\u0005\u0008a^\u0003\r\u0011\"\u0001r\u0003)\u0011Xm];mi~#S-\u001d\u000b\u0003OIDqa]8\u0002\u0002\u0003\u0007q%A\u0002yIEBa!^,!B\u00139\u0013a\u0002:fgVdG\u000f\t\u0005\u0006o^#\t\u0001_\u0001\u0005Y\u0016\u000cg\r\u0006\u0002(s\")!P\u001ea\u0001w\u0006!\u0001O]3w!\rqApJ\u0005\u0003{\"\u0011aa\u00149uS>t\u0007BB@X\t\u0013\t\t!A\u0005gS:$7\u000b^1siR!\u00111AA\u000e!\u0019q\u0011QAA\u0005\u0005&\u0019\u0011q\u0001\u0005\u0003\rQ+\u0008\u000f\\33!\u0015\tY!!\u0006\u001e\u001d\u0011\ti!!\u0005\u000e\u0005\u0005=!BA\u0002\u0007\u0013\u0011\t\u0019\"a\u0004\u0002\u001dUs\'o\u001c7mK\u0012\u0014UO\u001a4fe&!\u0011qCA\r\u0005!)fN]8mY\u0016$\'\u0002BA\n\u0003\u001fAa!!\u0008\u007f\u0001\u0004\u0011\u0015a\u00019pg\"9\u0011\u0011E,\u0005\u0002\u0005\r\u0012!B:qY&$XCAA\u0013!\u0015\t9#!\u000c^\u001b\t\tICC\u0002\u0002,\u0019\t\u0011\"[7nkR\u000c\'\r\\3\n\t\u0005=\u0012\u0011\u0006\u0002\u0005\u0019&\u001cH\u000fC\u0004\u00024]#\t!!\u000e\u0002%MDw.\u001e7e\'Bd\u0017\u000e\u001e$veRDWM]\u000b\u0003\u0003o\u00012ADA\u001d\u0013\r\tY\u0004\u0003\u0002\u0008\u0005>|G.Z1o\u0011\u001d\tyd\u0016C!\u0003\u0003\n\u0001\u0002^8TiJLgn\u001a\u000b\u0003\u0003\u0007\u0002B!!\u0012\u0002P5\u0011\u0011q\t\u0006\u0005\u0003\u0013\nY%\u0001\u0003mC:<\'BAA\'\u0003\u0011Q\u0017M^1\n\t\u0005E\u0013q\t\u0002\u0007\'R\u0014\u0018N\\4\u0008\u000f\u0005U#\u0001#\u0001\u0002X\u0005ARK\u001c:pY2,G\rU1s\u0003J\u0014\u0018-_\"p[\nLg.\u001a:\u0011\u0007\u0005\nIF\u0002\u0004\u0002\u0005!\u0005\u00111L\n\u0004\u00033j\u0001b\u00025\u0002Z\u0011\u0005\u0011q\u000c\u000b\u0003\u0003/B\u0001\"a\u0019\u0002Z\u0011\u0005\u0011QM\u0001\u0006CB\u0004H._\u000b\u0005\u0003O\ni\u0007\u0006\u0002\u0002jA!\u0011\u0005AA6!\r1\u0012Q\u000e\u0003\u00071\u0005\u0005$\u0019A\r"
.end annotation


# virtual methods
.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/DoublingUnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:TT;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;"
        }
    .end annotation
.end method

.method public abstract result()Lscala/collection/parallel/mutable/ParArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract scala$collection$parallel$mutable$UnrolledParArrayCombiner$_setter_$buff_$eq(Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;)V
.end method

.method public abstract size()I
.end method

.method public abstract sizeHint(I)V
.end method
