.class public final Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsScala.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsScala;->mapAsScalaConcurrentMapConverter(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Decorators$AsScala;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/concurrent/Map<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final m$2:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    .line 168
    iput-object p2, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1;->m$2:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1;->apply()Lscala/collection/concurrent/Map;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/concurrent/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 168
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$mapAsScalaConcurrentMapConverter$1;->m$2:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->mapAsScalaConcurrentMap(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/concurrent/Map;

    move-result-object v0

    return-object v0
.end method
