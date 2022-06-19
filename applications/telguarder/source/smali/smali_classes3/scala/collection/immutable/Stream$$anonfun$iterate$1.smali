.class public final Lscala/collection/immutable/Stream$$anonfun$iterate$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$;->iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$6:Lscala/Function1;

.field private final start$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/Function1;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$iterate$1;->start$2:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$iterate$1;->f$6:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1248
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$iterate$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1248
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$iterate$1;->f$6:Lscala/Function1;

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$iterate$1;->start$2:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$iterate$1;->f$6:Lscala/Function1;

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/Stream$;->iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
