.class public final Lscala/collection/mutable/Publisher$$anonfun$publish$1;
.super Lscala/runtime/AbstractFunction1;
.source "Publisher.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/Publisher;->publish(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/Subscriber<",
        "TEvt;",
        "Lscala/collection/mutable/Publisher;",
        ">;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/Publisher;

.field public final event$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Publisher;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Publisher<",
            "TEvt;>;)V"
        }
    .end annotation

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->$outer:Lscala/collection/mutable/Publisher;

    iput-object p2, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->event$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Lscala/collection/mutable/Subscriber;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->apply(Lscala/collection/mutable/Subscriber;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Subscriber<",
            "TEvt;",
            "Lscala/collection/mutable/Publisher;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->$outer:Lscala/collection/mutable/Publisher;

    invoke-interface {v0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$suspended()Lscala/collection/mutable/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->$outer:Lscala/collection/mutable/Publisher;

    invoke-interface {v0}, Lscala/collection/mutable/Publisher;->scala$collection$mutable$Publisher$$filters()Lscala/collection/mutable/HashMap;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/MultiMap;

    new-instance v1, Lscala/collection/mutable/Publisher$$anonfun$publish$1$$anonfun$apply$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/Publisher$$anonfun$publish$1$$anonfun$apply$1;-><init>(Lscala/collection/mutable/Publisher$$anonfun$publish$1;)V

    invoke-interface {v0, p1, v1}, Lscala/collection/mutable/MultiMap;->entryExists(Ljava/lang/Object;Lscala/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->$outer:Lscala/collection/mutable/Publisher;

    invoke-interface {v0}, Lscala/collection/mutable/Publisher;->self()Lscala/collection/mutable/Publisher;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->event$1:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lscala/collection/mutable/Subscriber;->notify(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
