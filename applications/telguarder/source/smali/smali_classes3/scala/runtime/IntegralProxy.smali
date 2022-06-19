.class public interface abstract Lscala/runtime/IntegralProxy;
.super Ljava/lang/Object;
.source "ScalaNumberProxy.scala"

# interfaces
.implements Lscala/runtime/ScalaWholeNumberProxy;
.implements Lscala/runtime/RangedProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/runtime/ScalaWholeNumberProxy<",
        "TT;>;",
        "Lscala/runtime/RangedProxy<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001I3q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0007J]R,wM]1m!J|\u00070\u001f\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001C\n\u0014\t\u0001IQ\"\u0007\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u00111!\u00118z!\rqq\"E\u0007\u0002\u0005%\u0011\u0001C\u0001\u0002\u0016\'\u000e\u000cG.Y,i_2,g*^7cKJ\u0004&o\u001c=z!\t\u00112\u0003\u0004\u0001\u0005\u000bQ\u0001!\u0019A\u000b\u0003\u0003Q\u000b\"AF\u0005\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u00042A\u0004\u000e\u0012\u0013\tY\"AA\u0006SC:<W\r\u001a)s_bL\u0008\"B\u000f\u0001\t\u0003q\u0012A\u0002\u0013j]&$H\u0005F\u0001 !\tQ\u0001%\u0003\u0002\"\t\t!QK\\5u\u0011\u0015\u0019\u0003Ab\u0005%\u0003\rqW/\\\u000b\u0002KA\u0019a%K\t\u000f\u0005)9\u0013B\u0001\u0015\u0005\u0003\u001d\u0001\u0018mY6bO\u0016L!AK\u0016\u0003\u0011%sG/Z4sC2T!\u0001\u000b\u0003\u0006\t5\u0002\u0001A\u000c\u0002\u0012%\u0016\u001cX\u000f\u001c;XSRDw.\u001e;Ti\u0016\u0004\u0008cA\u00185#5\t\u0001G\u0003\u00022e\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003g\u0011\t!bY8mY\u0016\u001cG/[8o\u0013\t)\u0004G\u0001\u0007Ok6,\'/[2SC:<W\rC\u00038\u0001\u0011\u0005\u0001(A\u0003v]RLG\u000e\u0006\u0002:\u0001B\u0019!(P\t\u000f\u0005=Z\u0014B\u0001\u001f1\u00031qU/\\3sS\u000e\u0014\u0016M\\4f\u0013\tqtHA\u0005Fq\u000edWo]5wK*\u0011A\u0008\r\u0005\u0006\u0003Z\u0002\r!E\u0001\u0004K:$\u0007\"B\u001c\u0001\t\u0003\u0019EcA\u001dE\u000b\")\u0011I\u0011a\u0001#!)aI\u0011a\u0001#\u0005!1\u000f^3q\u0011\u0015A\u0005\u0001\"\u0001J\u0003\t!x\u000e\u0006\u0002K\u001bB\u0019!hS\t\n\u00051{$!C%oG2,8/\u001b<f\u0011\u0015\tu\t1\u0001\u0012\u0011\u0015A\u0005\u0001\"\u0001P)\rQ\u0005+\u0015\u0005\u0006\u0003:\u0003\r!\u0005\u0005\u0006\r:\u0003\r!\u0005"
.end annotation


# virtual methods
.method public abstract num()Lscala/math/Integral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Integral<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Inclusive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Inclusive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract until(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract until(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "TT;>;"
        }
    .end annotation
.end method
