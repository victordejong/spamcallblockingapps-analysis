.class public Lscala/collection/mutable/History;
.super Lscala/collection/mutable/AbstractIterable;
.source "History.scala"

# interfaces
.implements Lscala/collection/mutable/Subscriber;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Evt:",
        "Ljava/lang/Object;",
        "Pub:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractIterable<",
        "Lscala/Tuple2<",
        "TPub;TEvt;>;>;",
        "Lscala/collection/mutable/Subscriber<",
        "TEvt;TPub;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001%4A!\u0001\u0002\u0001\u0013\t9\u0001*[:u_JL(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001)2AC\u0010\u0016\'\u0015\u00011\"\t\u0013(!\raQbD\u0007\u0002\u0005%\u0011aB\u0001\u0002\u0011\u0003\n\u001cHO]1di&#XM]1cY\u0016\u0004B\u0001E\t\u0014=5\ta!\u0003\u0002\u0013\r\t1A+\u001e9mKJ\u0002\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\u0019\u0001+\u001e2\u0012\u0005aY\u0002C\u0001\t\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u0005Aa\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0003)}!Q\u0001\t\u0001C\u0002]\u00111!\u0012<u!\u0011a!EH\n\n\u0005\r\u0012!AC*vEN\u001c\'/\u001b2feB\u0019A\"J\u0008\n\u0005\u0019\u0012!\u0001C%uKJ\u000c\'\r\\3\u0011\u0005AA\u0013BA\u0015\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u0015Y\u0003\u0001\"\u0001-\u0003\u0019a\u0014N\\5u}Q\tQ\u0006\u0005\u0003\r\u0001y\u0019\u0002bB\u0018\u0001\u0005\u0004%\t\u0002M\u0001\u0004Y><W#A\u0019\u0011\u00071\u0011t\"\u0003\u00024\u0005\t)\u0011+^3vK\"1Q\u0007\u0001Q\u0001\nE\nA\u0001\\8hA!9q\u0007\u0001b\u0001\n\u0003A\u0014AC7bq\"K7\u000f^8ssV\t\u0011\u0008\u0005\u0002\u0011u%\u00111H\u0002\u0002\u0004\u0013:$\u0008BB\u001f\u0001A\u0003%\u0011(A\u0006nCbD\u0015n\u001d;pef\u0004\u0003\"B \u0001\t\u0003\u0001\u0015A\u00028pi&4\u0017\u0010F\u0002B\t\u001a\u0003\"\u0001\u0005\"\n\u0005\r3!\u0001B+oSRDQ!\u0012 A\u0002M\t1\u0001];c\u0011\u00159e\u00081\u0001\u001f\u0003\u0015)g/\u001a8u\u0011\u0015I\u0005\u0001\"\u00119\u0003\u0011\u0019\u0018N_3\t\u000b-\u0003A\u0011\u0001\'\u0002\u0011%$XM]1u_J,\u0012!\u0014\t\u0004\u001d>{Q\"\u0001\u0003\n\u0005A#!\u0001C%uKJ\u000cGo\u001c:\t\u000bI\u0003A\u0011A*\u0002\r\u00154XM\u001c;t+\u0005!\u0006c\u0001(P=!)a\u000b\u0001C\u0001/\u0006)1\r\\3beR\t\u0011\tC\u0003Z\u0001\u0011\u0005#,\u0001\u0004fcV\u000cGn\u001d\u000b\u00037z\u0003\"\u0001\u0005/\n\u0005u3!a\u0002\"p_2,\u0017M\u001c\u0005\u0006?b\u0003\raG\u0001\u0004_\nT\u0007\"B1\u0001\t\u0003\u0012\u0017\u0001\u00035bg\"\u001cu\u000eZ3\u0015\u0003eBC\u0001\u00013hQB\u0011\u0001#Z\u0005\u0003M\u001a\u0011\u0001cU3sS\u0006dg+\u001a:tS>tW+\u0013#\u0002\u000bY\u000cG.^3\u001f\u0011!sw\u000c\u0005e\u001553\u0008"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x486e5f10c8149aecL


# instance fields
.field private final log:Lscala/collection/mutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Queue<",
            "Lscala/Tuple2<",
            "TPub;TEvt;>;>;"
        }
    .end annotation
.end field

.field private final maxHistory:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lscala/collection/mutable/AbstractIterable;-><init>()V

    .line 35
    new-instance v0, Lscala/collection/mutable/Queue;

    invoke-direct {v0}, Lscala/collection/mutable/Queue;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/History;->log:Lscala/collection/mutable/Queue;

    const/16 v0, 0x3e8

    .line 36
    iput v0, p0, Lscala/collection/mutable/History;->maxHistory:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 60
    instance-of v0, p1, Lscala/collection/mutable/History;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/History;

    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Queue;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public events()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TEvt;>;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/History$$anonfun$events$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/History$$anonfun$events$1;-><init>(Lscala/collection/mutable/History;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TPub;TEvt;>;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public log()Lscala/collection/mutable/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Queue<",
            "Lscala/Tuple2<",
            "TPub;TEvt;>;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lscala/collection/mutable/History;->log:Lscala/collection/mutable/Queue;

    return-object v0
.end method

.method public maxHistory()I
    .locals 1

    .line 36
    iget v0, p0, Lscala/collection/mutable/History;->maxHistory:I

    return v0
.end method

.method public notify(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPub;TEvt;)V"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->length()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/mutable/History;->maxHistory()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->dequeue()Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 47
    :goto_0
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Lscala/Tuple2;

    const/4 v3, 0x0

    new-instance v4, Lscala/Tuple2;

    invoke-direct {v4, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/Queue;->enqueue(Lscala/collection/Seq;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lscala/collection/mutable/History;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->length()I

    move-result v0

    return v0
.end method
