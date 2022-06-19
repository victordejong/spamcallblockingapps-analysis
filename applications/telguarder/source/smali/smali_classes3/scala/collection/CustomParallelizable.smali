.class public interface abstract Lscala/collection/CustomParallelizable;
.super Ljava/lang/Object;
.source "CustomParallelizable.scala"

# interfaces
.implements Lscala/collection/Parallelizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "ParRepr::",
        "Lscala/collection/Parallel;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/Parallelizable<",
        "TA;TParRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001I2q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u000bDkN$x.\u001c)be\u0006dG.\u001a7ju\u0006\u0014G.\u001a\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\u0004\u0011MQ2c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0004\u0003:L\u0008\u0003\u0002\u0008\u0010#ei\u0011AA\u0005\u0003!\t\u0011a\u0002U1sC2dW\r\\5{C\ndW\r\u0005\u0002\u0013\'1\u0001AA\u0002\u000b\u0001\t\u000b\u0007QCA\u0001B#\t1\u0012\u0002\u0005\u0002\u000b/%\u0011\u0001\u0004\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t\u0011\"\u0004\u0002\u0004\u001c\u0001\u0011\u0015\r\u0001\u0008\u0002\u0008!\u0006\u0014(+\u001a9s#\t1R\u0004\u0005\u0002\u000f=%\u0011qD\u0001\u0002\t!\u0006\u0014\u0018\r\u001c7fY\")\u0011\u0005\u0001C\u0001E\u00051A%\u001b8ji\u0012\"\u0012a\t\t\u0003\u0015\u0011J!!\n\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006O\u00011\t\u0005K\u0001\u0004a\u0006\u0014X#A\r\t\r)\u0002\u0001\u0015\"\u0015,\u0003-\u0001\u0018M]\"p[\nLg.\u001a:\u0016\u00031\u0002B!\u000c\u0019\u001235\taF\u0003\u00020\u0005\u0005A\u0001/\u0019:bY2,G.\u0003\u00022]\tA1i\\7cS:,\'\u000f"
.end annotation


# virtual methods
.method public abstract par()Lscala/collection/Parallel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParRepr;"
        }
    .end annotation
.end method

.method public abstract parCombiner()Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;TParRepr;>;"
        }
    .end annotation
.end method
