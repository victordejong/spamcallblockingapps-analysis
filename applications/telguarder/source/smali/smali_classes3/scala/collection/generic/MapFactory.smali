.class public abstract Lscala/collection/generic/MapFactory;
.super Lscala/collection/generic/GenMapFactory;
.source "MapFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenMapFactory<",
        "TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001m2Q!\u0001\u0002\u0002\u0002%\u0011!\"T1q\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,\'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0001\u0001\u000c!\raQbD\u0007\u0002\u0005%\u0011aB\u0001\u0002\u000e\u000f\u0016tW*\u00199GC\u000e$xN]=\u0011\u0005A\tB\u0002\u0001\u0003\u0006%\u0001\u0011\ra\u0005\u0002\u0003\u0007\u000e+2\u0001F\u0011)#\t)\u0012\u0004\u0005\u0002\u0017/5\ta!\u0003\u0002\u0019\r\t9aj\u001c;iS:<\'c\u0001\u000e\u001dU\u0019!1\u0004\u0001\u0001\u001a\u00051a$/\u001a4j]\u0016lWM\u001c;?!\u0011ib\u0004I\u0014\u000e\u0003\u0011I!a\u0008\u0003\u0003\u00075\u000b\u0007\u000f\u0005\u0002\u0011C\u0011)!%\u0005b\u0001G\t\t\u0011)\u0005\u0002\u0016IA\u0011a#J\u0005\u0003M\u0019\u00111!\u00118z!\t\u0001\u0002\u0006B\u0003*#\t\u00071EA\u0001C!\u0015i2\u0006I\u0014.\u0013\taCAA\u0004NCBd\u0015n[3\u0011\tA\t\u0002e\n\u0005\u0006_\u0001!\t\u0001M\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003E\u00022\u0001\u0004\u0001\u0010\u0011\u0015\u0019\u0004A\"\u00015\u0003\u0015)W\u000e\u001d;z+\r)\u0004HO\u000b\u0002mA!\u0001#E\u001c:!\t\u0001\u0002\u0008B\u0003#e\t\u00071\u0005\u0005\u0002\u0011u\u0011)\u0011F\rb\u0001G\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lscala/collection/generic/GenMapFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract empty()Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()TCC;"
        }
    .end annotation
.end method
