.class public final Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsJava.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsJava;->mapAsJavaConcurrentMapConverter(Lscala/collection/concurrent/Map;)Lscala/collection/convert/Decorators$AsJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final m$3:Lscala/collection/concurrent/Map;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/concurrent/Map;)V
    .locals 0

    .line 298
    iput-object p2, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1;->m$3:Lscala/collection/concurrent/Map;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1;->apply()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 298
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaConcurrentMapConverter$1;->m$3:Lscala/collection/concurrent/Map;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->mapAsJavaConcurrentMap(Lscala/collection/concurrent/Map;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method
