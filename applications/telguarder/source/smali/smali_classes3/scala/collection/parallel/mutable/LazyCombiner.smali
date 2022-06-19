.class public interface abstract Lscala/collection/parallel/mutable/LazyCombiner;
.super Ljava/lang/Object;
.source "LazyCombiner.scala"

# interfaces
.implements Lscala/collection/parallel/Combiner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        "Buff::",
        "Lscala/collection/generic/Growable<",
        "TElem;>;:",
        "Lscala/collection/generic/Sizing;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Combiner<",
        "TElem;TTo;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001A4q!\u0001\u0002\u0011\u0002\u0007\u00051B\u0001\u0007MCjL8i\\7cS:,\'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003!\u0001\u0018M]1mY\u0016d\'BA\u0004\t\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u0013\u0005)1oY1mC\u000e\u0001Q\u0003\u0002\u0007\u0018CI\u001a2\u0001A\u0007\u0012!\tqq\"D\u0001\t\u0013\t\u0001\u0002B\u0001\u0004B]f\u0014VM\u001a\t\u0005%M)\u0002%D\u0001\u0005\u0013\t!BA\u0001\u0005D_6\u0014\u0017N\\3s!\t1r\u0003\u0004\u0001\u0005\u000ba\u0001!\u0019A\r\u0003\t\u0015cW-\\\t\u00035u\u0001\"AD\u000e\n\u0005qA!a\u0002(pi\"Lgn\u001a\t\u0003\u001dyI!a\u0008\u0005\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0017C\u00111!\u0005\u0001CC\u0002e\u0011!\u0001V8\t\u000b\u0011\u0002A\u0011A\u0013\u0002\r\u0011Jg.\u001b;%)\u00051\u0003C\u0001\u0008(\u0013\tA\u0003B\u0001\u0003V]&$\u0008b\u0002\u0016\u0001\u0005\u00045\taK\u0001\u0006G\"\u000c\u0017N\\\u000b\u0002YA\u0019QfL\u0019\u000e\u00039R!a\u0001\u0004\n\u0005Ar#aC!se\u0006L()\u001e4gKJ\u0004\"A\u0006\u001a\u0005\u000bM\u0002!\u0019\u0001\u001b\u0003\t\t+hMZ\t\u00035U\u00122A\u000e\u001d?\r\u00119\u0004\u0001A\u001b\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u0007ebT#D\u0001;\u0015\tYd!A\u0004hK:,\'/[2\n\u0005uR$\u0001C$s_^\u000c\'\r\\3\u0011\u0005ez\u0014B\u0001!;\u0005\u0019\u0019\u0016N_5oO\"9!\t\u0001b\u0001\n\u0003\u0019\u0015\u0001\u00037bgR\u0014WO\u001a4\u0016\u0003EBa!\u0012\u0001!\u0002\u0013\t\u0014!\u00037bgR\u0014WO\u001a4!\u0011\u00159\u0005\u0001\"\u0001I\u0003!!\u0003\u000f\\;tI\u0015\u000cHCA%K\u001b\u0005\u0001\u0001\"B&G\u0001\u0004)\u0012\u0001B3mK6DQ!\u0014\u0001\u0005\u00029\u000baA]3tk2$H#\u0001\u0011\t\u000bA\u0003A\u0011A\u0013\u0002\u000b\rdW-\u0019:\t\u000bI\u0003A\u0011A*\u0002\u000f\r|WNY5oKV\u0019AkV.\u0015\u0005Us\u0006\u0003\u0002\n\u0014-j\u0003\"AF,\u0005\u000ba\u000b&\u0019A-\u0003\u00039\u000b\"AG\u000b\u0011\u0005YYF!\u0002/R\u0005\u0004i&!\u0002(foR{\u0017C\u0001\u0011\u001e\u0011\u0015y\u0016\u000b1\u0001V\u0003\u0015yG\u000f[3s\u0011\u0015\t\u0007\u0001\"\u0001c\u0003\u0011\u0019\u0018N_3\u0016\u0003\r\u0004\"A\u00043\n\u0005\u0015D!aA%oi\")q\r\u0001D\u0001Q\u0006y\u0011\r\u001c7pG\u0006$X-\u00118e\u0007>\u0004\u00180F\u0001!\u0011\u0015Q\u0007A\"\u0001l\u0003=qWm\u001e\'buf\u001cu.\u001c2j]\u0016\u0014HC\u00017o!\u0015i\u0007!\u0006\u00112\u001b\u0005\u0011\u0001\"B8j\u0001\u0004a\u0013!\u00032vM\u001a\u001c\u0007.Y5o\u0001"
.end annotation


# virtual methods
.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/LazyCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/parallel/mutable/LazyCombiner<",
            "TElem;TTo;TBuff;>;"
        }
    .end annotation
.end method

.method public abstract allocateAndCopy()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation
.end method

.method public abstract chain()Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TBuff;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:TElem;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;"
        }
    .end annotation
.end method

.method public abstract lastbuff()Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuff;"
        }
    .end annotation
.end method

.method public abstract newLazyCombiner(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/parallel/mutable/LazyCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TBuff;>;)",
            "Lscala/collection/parallel/mutable/LazyCombiner<",
            "TElem;TTo;TBuff;>;"
        }
    .end annotation
.end method

.method public abstract result()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation
.end method

.method public abstract scala$collection$parallel$mutable$LazyCombiner$_setter_$lastbuff_$eq(Lscala/collection/generic/Growable;)V
.end method

.method public abstract size()I
.end method
