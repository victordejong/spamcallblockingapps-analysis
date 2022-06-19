.class public interface abstract Lscala/ref/Reference;
.super Ljava/lang/Object;
.source "Reference.scala"

# interfaces
.implements Lscala/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q2q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0005SK\u001a,\'/\u001a8dK*\u00111\u0001B\u0001\u0004e\u00164\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001BE\n\u0004\u0001%i\u0001C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB\u0019!B\u0004\t\n\u0005=!!!\u0003$v]\u000e$\u0018n\u001c81!\t\t\"\u0003\u0004\u0001\u0005\rM\u0001AQ1\u0001\u0015\u0005\u0005!\u0016CA\u000b\n!\tQa#\u0003\u0002\u0018\t\t9aj\u001c;iS:<\u0007\"B\r\u0001\t\u0003Q\u0012A\u0002\u0013j]&$H\u0005F\u0001\u001c!\tQA$\u0003\u0002\u001e\t\t!QK\\5u\u0011\u0015y\u0002A\"\u0001!\u0003\u0015\t\u0007\u000f\u001d7z)\u0005\u0001\u0002\"\u0002\u0012\u0001\r\u0003\u0019\u0013aA4fiV\tA\u0005E\u0002\u000bKAI!A\n\u0003\u0003\r=\u0003H/[8o\u0011\u0015A\u0003\u0001\"\u0011*\u0003!!xn\u0015;sS:<G#\u0001\u0016\u0011\u0005-\u0002T\"\u0001\u0017\u000b\u00055r\u0013\u0001\u00027b]\u001eT\u0011aL\u0001\u0005U\u00064\u0018-\u0003\u00022Y\t11\u000b\u001e:j]\u001eDQa\r\u0001\u0007\u0002i\tQa\u00197fCJDQ!\u000e\u0001\u0007\u0002Y\nq!\u001a8rk\u0016,X\rF\u00018!\tQ\u0001(\u0003\u0002:\t\t9!i\\8mK\u0006t\u0007\"B\u001e\u0001\r\u00031\u0014AC5t\u000b:\u000cX/Z;fI\u0002"
.end annotation


# virtual methods
.method public abstract apply()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract enqueue()Z
.end method

.method public abstract get()Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract isEnqueued()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
