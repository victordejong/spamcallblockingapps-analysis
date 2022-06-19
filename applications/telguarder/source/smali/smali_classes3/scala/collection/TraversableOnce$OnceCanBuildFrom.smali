.class public Lscala/collection/TraversableOnce$OnceCanBuildFrom;
.super Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
.source "TraversableOnce.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableOnce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnceCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/TraversableOnce$BufferedCanBuildFrom<",
        "TA;",
        "Lscala/collection/TraversableOnce;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 450
    invoke-direct {p0}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom;-><init>()V

    return-void
.end method


# virtual methods
.method public bufferToColl(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Lscala/collection/mutable/ArrayBuffer;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bufferToColl(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/TraversableOnce;
    .locals 0

    .line 450
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$OnceCanBuildFrom;->bufferToColl(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/Traversable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversable<",
            "TB;>;)",
            "Lscala/collection/Traversable<",
            "TB;>;"
        }
    .end annotation

    .line 452
    invoke-interface {p1}, Lscala/collection/GenTraversable;->seq()Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/TraversableOnce;
    .locals 0

    .line 450
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$OnceCanBuildFrom;->traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/Traversable;

    move-result-object p1

    return-object p1
.end method
