.class public final Lscala/collection/immutable/LongMap$$anonfun$toList$1;
.super Lscala/runtime/AbstractFunction1;
.source "LongMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/LongMap;->toList()Lscala/collection/immutable/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lscala/collection/mutable/ListBuffer<",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TT;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final buffer$1:Lscala/collection/mutable/ListBuffer;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/LongMap;Lscala/collection/mutable/ListBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 162
    iput-object p2, p0, Lscala/collection/immutable/LongMap$$anonfun$toList$1;->buffer$1:Lscala/collection/mutable/ListBuffer;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/LongMap$$anonfun$toList$1;->apply(Lscala/Tuple2;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;)",
            "Lscala/collection/mutable/ListBuffer<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lscala/collection/immutable/LongMap$$anonfun$toList$1;->buffer$1:Lscala/collection/mutable/ListBuffer;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method
