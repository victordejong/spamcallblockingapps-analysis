.class public interface abstract Lscala/collection/generic/GenericOrderedTraversableTemplate;
.super Ljava/lang/Object;
.source "GenericOrderedTraversableTemplate.scala"

# interfaces
.implements Lscala/collection/generic/HasNewBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "CC::",
        "Lscala/collection/Traversable<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/HasNewBuilder<",
        "TA;TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001m3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0011HK:,\'/[2Pe\u0012,\'/\u001a3Ue\u00064XM]:bE2,G+Z7qY\u0006$XM\u0003\u0002\u0004\t\u00059q-\u001a8fe&\u001c\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001Qc\u0001\u0006\u0016AM\u0019\u0001aC\u0008\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\r\u0005\u0003\u0011#MqR\"\u0001\u0002\n\u0005I\u0011!!\u0004%bg:+wOQ;jY\u0012,\'\u000f\u0005\u0002\u0015+1\u0001AA\u0002\u000c\u0001\t\u000b\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=+\u0005}Y\u0003c\u0001\u000b!\'\u00111\u0011\u0005\u0001CC\u0002\t\u0012!aQ\"\u0016\u0005\rJ\u0013C\u0001\r%!\r)c\u0005K\u0007\u0002\t%\u0011q\u0005\u0002\u0002\u000c)J\u000cg/\u001a:tC\ndW\r\u0005\u0002\u0015S\u0011)!\u0006\tb\u0001/\t\t\u0001lK\u0001-!\ti#\'D\u0001/\u0015\ty\u0003\'A\u0005v]\u000eDWmY6fI*\u0011\u0011GB\u0001\u000bC:tw\u000e^1uS>t\u0017BA\u001a/\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0005\u0006k\u0001!\tAN\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003]\u0002\"\u0001\u0004\u001d\n\u0005e2!\u0001B+oSRDqa\u000f\u0001CB\u001bMA(A\u0002pe\u0012,\u0012!\u0010\t\u0004}\u0005\u001bbB\u0001\u0007@\u0013\t\u0001e!A\u0004qC\u000e\\\u0017mZ3\n\u0005\t\u001b%\u0001C(sI\u0016\u0014\u0018N\\4\u000b\u0005\u00013\u0001\"B#\u0001\r\u00031\u0015\u0001E8sI\u0016\u0014X\rZ\"p[B\u000cg.[8o+\u00059\u0005c\u0001\tI\u0015&\u0011\u0011J\u0001\u0002\u0018\u000f\u0016tWM]5d\u001fJ$WM]3e\u0007>l\u0007/\u00198j_:\u0004\"\u0001\u0006\u0011\t\u000b1\u0003A\u0011A\'\u0002+\u001d,g.\u001a:jG>\u0013H-\u001a:fI\n+\u0018\u000e\u001c3feV\u0011aJ\u0016\u000b\u0003\u001ff\u0003B\u0001U*V16\t\u0011K\u0003\u0002S\t\u00059Q.\u001e;bE2,\u0017B\u0001+R\u0005\u001d\u0011U/\u001b7eKJ\u0004\"\u0001\u0006,\u0005\u000b][%\u0019A\u000c\u0003\u0003\t\u00032\u0001\u0006\u0011V\u0011\u0015Y4\nq\u0001[!\rq\u0014)\u0016"
.end annotation


# virtual methods
.method public abstract genericOrderedBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)",
            "Lscala/collection/mutable/Builder<",
            "TB;TCC;>;"
        }
    .end annotation
.end method

.method public abstract ord()Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract orderedCompanion()Lscala/collection/generic/GenericOrderedCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericOrderedCompanion<",
            "TCC;>;"
        }
    .end annotation
.end method
