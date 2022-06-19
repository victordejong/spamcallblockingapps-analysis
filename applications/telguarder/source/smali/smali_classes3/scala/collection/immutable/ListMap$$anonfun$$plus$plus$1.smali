.class public final Lscala/collection/immutable/ListMap$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction2;
.source "ListMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/ListMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/ListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/ListMap<",
        "TA;TB1;>;",
        "Lscala/Tuple2<",
        "TA;TB1;>;",
        "Lscala/collection/immutable/ListMap<",
        "TA;TB1;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Lscala/collection/immutable/ListMap;

    check-cast p2, Lscala/Tuple2;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListMap$$anonfun$$plus$plus$1;->apply(Lscala/collection/immutable/ListMap;Lscala/Tuple2;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/ListMap;Lscala/Tuple2;)Lscala/collection/immutable/ListMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 108
    invoke-virtual {p1, p2}, Lscala/collection/immutable/ListMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method
