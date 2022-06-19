.class public final Lscala/collection/immutable/Stream$$anonfun$range$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final end$1:Ljava/lang/Object;

.field private final evidence$1$1:Lscala/math/Integral;

.field private final num$1:Lscala/math/Integral;

.field private final start$3:Ljava/lang/Object;

.field private final step$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;Lscala/math/Integral;)V
    .locals 0

    .line 1295
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->start$3:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->end$1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->step$2:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->evidence$1$1:Lscala/math/Integral;

    iput-object p5, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->num$1:Lscala/math/Integral;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1295
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$range$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1295
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->num$1:Lscala/math/Integral;

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->start$3:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->step$2:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/math/Integral$IntegralOps;->$plus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->end$1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->step$2:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Stream$$anonfun$range$1;->evidence$1$1:Lscala/math/Integral;

    invoke-virtual {v0, v1, v2, v3, v4}, Lscala/collection/immutable/Stream$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
