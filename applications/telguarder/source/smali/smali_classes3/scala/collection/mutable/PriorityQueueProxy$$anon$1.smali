.class public final Lscala/collection/mutable/PriorityQueueProxy$$anon$1;
.super Lscala/collection/mutable/PriorityQueueProxy;
.source "PriorityQueueProxy.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/PriorityQueueProxy;->clone()Lscala/collection/mutable/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/PriorityQueueProxy<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/PriorityQueueProxy;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/PriorityQueueProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/PriorityQueueProxy<",
            "TA;>;)V"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/PriorityQueueProxy$$anon$1;->$outer:Lscala/collection/mutable/PriorityQueueProxy;

    invoke-virtual {p1}, Lscala/collection/mutable/PriorityQueueProxy;->scala$collection$mutable$PriorityQueueProxy$$super$ord()Lscala/math/Ordering;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/mutable/PriorityQueueProxy;-><init>(Lscala/math/Ordering;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lscala/collection/mutable/PriorityQueueProxy$$anon$1;->self()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public self()Lscala/collection/mutable/PriorityQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/PriorityQueue<",
            "TA;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lscala/collection/mutable/PriorityQueueProxy$$anon$1;->$outer:Lscala/collection/mutable/PriorityQueueProxy;

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueueProxy;->self()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/PriorityQueue;->clone()Lscala/collection/mutable/PriorityQueue;

    move-result-object v0

    return-object v0
.end method
