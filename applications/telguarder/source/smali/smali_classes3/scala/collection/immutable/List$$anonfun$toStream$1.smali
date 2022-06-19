.class public final Lscala/collection/immutable/List$$anonfun$toStream$1;
.super Lscala/runtime/AbstractFunction0;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/List;->toStream()Lscala/collection/immutable/Stream;
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
.field private final synthetic $outer:Lscala/collection/immutable/List;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 403
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/List$$anonfun$toStream$1;->$outer:Lscala/collection/immutable/List;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 403
    invoke-virtual {p0}, Lscala/collection/immutable/List$$anonfun$toStream$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lscala/collection/immutable/List$$anonfun$toStream$1;->$outer:Lscala/collection/immutable/List;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
