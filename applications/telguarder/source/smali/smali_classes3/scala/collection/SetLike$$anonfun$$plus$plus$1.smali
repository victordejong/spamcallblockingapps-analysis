.class public final Lscala/collection/SetLike$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction2;
.source "SetLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SetLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TThis;TA;TThis;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/SetLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SetLike<",
            "TA;TThis;>;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Lscala/collection/Set;

    invoke-virtual {p0, p1, p2}, Lscala/collection/SetLike$$anonfun$$plus$plus$1;->apply(Lscala/collection/Set;Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Set;Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;TA;)TThis;"
        }
    .end annotation

    .line 141
    invoke-interface {p1, p2}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method
