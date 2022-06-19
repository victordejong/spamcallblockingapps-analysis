.class public abstract Lscala/collection/generic/MutableMapFactory;
.super Lscala/collection/generic/MapFactory;
.source "MutableMapFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/mutable/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/MapFactory<",
        "TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\r3Q!\u0001\u0002\u0002\u0002%\u0011\u0011#T;uC\ndW-T1q\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,\'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0001\u0001\u000c!\raQbD\u0007\u0002\u0005%\u0011aB\u0001\u0002\u000b\u001b\u0006\u0004h)Y2u_JL\u0008C\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011!aQ\"\u0016\u0007Q\u0019#&\u0005\u0002\u00163A\u0011acF\u0007\u0002\r%\u0011\u0001D\u0002\u0002\u0008\u001d>$\u0008.\u001b8h%\rQB\u0004\u000c\u0004\u00057\u0001\u0001\u0011D\u0001\u0007=e\u00164\u0017N\\3nK:$h\u0008\u0005\u0003\u001eA\tJS\"\u0001\u0010\u000b\u0005}!\u0011aB7vi\u0006\u0014G.Z\u0005\u0003Cy\u00111!T1q!\t\u00012\u0005B\u0003%#\t\u0007QEA\u0001B#\t)b\u0005\u0005\u0002\u0017O%\u0011\u0001F\u0002\u0002\u0004\u0003:L\u0008C\u0001\t+\t\u0015Y\u0013C1\u0001&\u0005\u0005\u0011\u0005#B\u000f.E%z\u0013B\u0001\u0018\u001f\u0005\u001di\u0015\r\u001d\'jW\u0016\u0004B\u0001E\t#S!)\u0011\u0007\u0001C\u0001e\u00051A(\u001b8jiz\"\u0012a\r\t\u0004\u0019\u0001y\u0001\"B\u001b\u0001\t\u00032\u0014A\u00038fo\n+\u0018\u000e\u001c3feV\u0019qgP!\u0016\u0003a\u0002B!H\u001d<\u0005&\u0011!H\u0008\u0002\u0008\u0005VLG\u000eZ3s!\u00111BH\u0010!\n\u0005u2!A\u0002+va2,\'\u0007\u0005\u0002\u0011\u007f\u0011)A\u0005\u000eb\u0001KA\u0011\u0001#\u0011\u0003\u0006WQ\u0012\r!\n\t\u0005!Eq\u0004\t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lscala/collection/generic/MapFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;TCC;>;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lscala/collection/generic/MutableMapFactory;->empty()Lscala/collection/Map;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    return-object v0
.end method
