.class public interface abstract Lscala/collection/parallel/mutable/ParTrieMapCombiner;
.super Ljava/lang/Object;
.source "ParTrieMap.scala"

# interfaces
.implements Lscala/collection/parallel/Combiner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Combiner<",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Lscala/collection/parallel/mutable/ParTrieMap<",
        "TK;TV;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00153\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005!A\u0003\u0002\u0013!\u0006\u0014HK]5f\u001b\u0006\u00048i\\7cS:,\'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003!\u0001\u0018M]1mY\u0016d\'BA\u0004\t\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u0013\u0005)1oY1mCV\u00191\"\u0007\u0013\u0014\u0007\u0001a\u0001\u0003\u0005\u0002\u000e\u001d5\t\u0001\"\u0003\u0002\u0010\u0011\t1\u0011I\\=SK\u001a\u0004B!\u0005\n\u0015M5\tA!\u0003\u0002\u0014\t\tA1i\\7cS:,\'\u000f\u0005\u0003\u000e+]\u0019\u0013B\u0001\u000c\t\u0005\u0019!V\u000f\u001d7feA\u0011\u0001$\u0007\u0007\u0001\t\u0015Q\u0002A1\u0001\u001d\u0005\u0005Y5\u0001A\t\u0003;\u0001\u0002\"!\u0004\u0010\n\u0005}A!a\u0002(pi\"Lgn\u001a\t\u0003\u001b\u0005J!A\t\u0005\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0019I\u0011)Q\u0005\u0001b\u00019\t\ta\u000b\u0005\u0003(Q]\u0019S\"\u0001\u0002\n\u0005%\u0012!A\u0003)beR\u0013\u0018.Z\'ba\")1\u0006\u0001C\u0001Y\u00051A%\u001b8ji\u0012\"\u0012!\u000c\t\u0003\u001b9J!a\u000c\u0005\u0003\tUs\u0017\u000e\u001e\u0005\u0006c\u0001!\tAM\u0001\u0008G>l\'-\u001b8f+\r\u0019dG\u000f\u000b\u0003iu\u0002B!\u0005\n6sA\u0011\u0001D\u000e\u0003\u0006oA\u0012\r\u0001\u000f\u0002\u0002\u001dF\u0011Q\u0004\u0006\t\u00031i\"Qa\u000f\u0019C\u0002q\u0012QAT3x)>\u000c\"A\n\u0011\t\u000by\u0002\u0004\u0019\u0001\u001b\u0002\u000b=$\u0008.\u001a:\t\u000b\u0001\u0003A\u0011I!\u0002\u0017\r\u000cgNQ3TQ\u0006\u0014X\rZ\u000b\u0002\u0005B\u0011QbQ\u0005\u0003\t\"\u0011qAQ8pY\u0016\u000cg\u000e"
.end annotation


# virtual methods
.method public abstract canBeShared()Z
.end method

.method public abstract combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lscala/Tuple2<",
            "TK;TV;>;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;"
        }
    .end annotation
.end method
