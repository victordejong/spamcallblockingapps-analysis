.class public final Lscala/collection/mutable/Publisher$$anonfun$publish$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "Publisher.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/Publisher$$anonfun$publish$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Function1<",
        "TEvt;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/Publisher$$anonfun$publish$1;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Publisher$$anonfun$publish$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Publisher<",
            "TEvt;>.$anonfun$publish$1;)V"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1$$anonfun$apply$1;->$outer:Lscala/collection/mutable/Publisher$$anonfun$publish$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lscala/Function1;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/Publisher$$anonfun$publish$1$$anonfun$apply$1;->apply(Lscala/Function1;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TEvt;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lscala/collection/mutable/Publisher$$anonfun$publish$1$$anonfun$apply$1;->$outer:Lscala/collection/mutable/Publisher$$anonfun$publish$1;

    iget-object v0, v0, Lscala/collection/mutable/Publisher$$anonfun$publish$1;->event$1:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
