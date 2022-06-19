.class public interface abstract Lscala/collection/generic/Growable;
.super Ljava/lang/Object;
.source "Growable.scala"

# interfaces
.implements Lscala/collection/generic/Clearable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/Clearable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00013q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005He><\u0018M\u00197f\u0015\t\u0019A!A\u0004hK:,\'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t3c\u0001\u0001\u000c\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005A\tR\"\u0001\u0002\n\u0005I\u0011!!C\"mK\u0006\u0014\u0018M\u00197f\u0011\u0015!\u0002\u0001\"\u0001\u0016\u0003\u0019!\u0013N\\5uIQ\ta\u0003\u0005\u0002\r/%\u0011\u0001D\u0002\u0002\u0005+:LG\u000fC\u0003\u001b\u0001\u0019\u00051$\u0001\u0005%a2,8\u000fJ3r)\taR$D\u0001\u0001\u0011\u0015q\u0012\u00041\u0001 \u0003\u0011)G.Z7\u0011\u0005\u0001\nC\u0002\u0001\u0003\u0007E\u0001A)\u0019A\u0012\u0003\u0003\u0005\u000b\"\u0001J\u0014\u0011\u00051)\u0013B\u0001\u0014\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u0015\n\u0005%2!aA!os\")!\u0004\u0001C\u0001WQ!A\u0004\u000c\u00181\u0011\u0015i#\u00061\u0001 \u0003\u0015)G.Z72\u0011\u0015y#\u00061\u0001 \u0003\u0015)G.Z73\u0011\u0015\t$\u00061\u00013\u0003\u0015)G.Z7t!\ra1gH\u0005\u0003i\u0019\u0011!\u0002\u0010:fa\u0016\u000cG/\u001a3?\u0011\u00151\u0004\u0001\"\u00018\u00035!\u0003\u000f\\;tIAdWo\u001d\u0013fcR\u0011A\u0004\u000f\u0005\u0006sU\u0002\rAO\u0001\u0003qN\u00042a\u000f\u001f \u001b\u0005!\u0011BA\u001f\u0005\u0005=!&/\u0019<feN\u000c\'\r\\3P]\u000e,\u0007\"B \u0001\r\u0003)\u0012!B2mK\u0006\u0014\u0008"
.end annotation


# virtual methods
.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method
