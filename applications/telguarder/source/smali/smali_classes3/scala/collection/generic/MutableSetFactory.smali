.class public abstract Lscala/collection/generic/MutableSetFactory;
.super Lscala/collection/generic/SetFactory;
.source "MutableSetFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/mutable/Set<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/SetFactory<",
        "TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q2Q!\u0001\u0002\u0002\u0002%\u0011\u0011#T;uC\ndWmU3u\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,\'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0001\u0001\u000c!\raQbD\u0007\u0002\u0005%\u0011aB\u0001\u0002\u000b\'\u0016$h)Y2u_JL\u0008C\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011!aQ\"\u0016\u0005Q\u0019\u0013CA\u000b\u001a!\t1r#D\u0001\u0007\u0013\tAbAA\u0004O_RD\u0017N\\4\u0013\u0007ia\u0012F\u0002\u0003\u001c\u0001\u0001I\"\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004cA\u000f!E5\taD\u0003\u0002 \t\u00059Q.\u001e;bE2,\u0017BA\u0011\u001f\u0005\r\u0019V\r\u001e\t\u0003!\r\"Q\u0001J\tC\u0002\u0015\u0012\u0011\u0001W\t\u0003+\u0019\u0002\"AF\u0014\n\u0005!2!aA!osB!QD\u000b\u0012-\u0013\tYcDA\u0004TKRd\u0015n[3\u0011\u0007A\t\"\u0005C\u0003/\u0001\u0011\u0005q&\u0001\u0004=S:LGO\u0010\u000b\u0002aA\u0019A\u0002A\u0008\t\u000bI\u0002A\u0011A\u001a\u0002\u00159,wOQ;jY\u0012,\'/\u0006\u00025sU\tQ\u0007\u0005\u0003\u001emaZ\u0014BA\u001c\u001f\u0005\u001d\u0011U/\u001b7eKJ\u0004\"\u0001E\u001d\u0005\u000bi\n$\u0019A\u0013\u0003\u0003\u0005\u00032\u0001E\t9\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lscala/collection/generic/SetFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lscala/collection/mutable/GrowingBuilder;

    invoke-virtual {p0}, Lscala/collection/generic/MutableSetFactory;->empty()Lscala/collection/GenTraversable;

    move-result-object v1

    check-cast v1, Lscala/collection/generic/Growable;

    invoke-direct {v0, v1}, Lscala/collection/mutable/GrowingBuilder;-><init>(Lscala/collection/generic/Growable;)V

    return-object v0
.end method
