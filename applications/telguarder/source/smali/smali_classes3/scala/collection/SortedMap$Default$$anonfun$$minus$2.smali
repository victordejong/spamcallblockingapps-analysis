.class public final Lscala/collection/SortedMap$Default$$anonfun$$minus$2;
.super Lscala/runtime/AbstractFunction1;
.source "SortedMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SortedMap$Default;->$minus(Ljava/lang/Object;)Lscala/collection/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Lscala/collection/SortedMap<",
        "TA;TB;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/SortedMap$Default;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SortedMap$Default<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 49
    iput-object p2, p0, Lscala/collection/SortedMap$Default$$anonfun$$minus$2;->b$1:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/SortedMap$Default$$anonfun$$minus$2;->apply(Lscala/Tuple2;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/SortedMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lscala/collection/SortedMap$Default$$anonfun$$minus$2;->b$1:Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
