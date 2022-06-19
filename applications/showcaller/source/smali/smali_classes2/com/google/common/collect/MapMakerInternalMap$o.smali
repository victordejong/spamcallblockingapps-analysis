.class final Lcom/google/common/collect/MapMakerInternalMap$o;
.super Lcom/google/common/collect/MapMakerInternalMap$b;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$b<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$o<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$u<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$o<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile d:Lcom/google/common/collect/MapMakerInternalMap$v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$o<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$o<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$h;)V

    .line 2
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lcom/google/common/collect/MapMakerInternalMap$v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    return-void
.end method

.method static synthetic d(Lcom/google/common/collect/MapMakerInternalMap$o;)Lcom/google/common/collect/MapMakerInternalMap$v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    return-object p0
.end method

.method static synthetic e(Lcom/google/common/collect/MapMakerInternalMap$o;Lcom/google/common/collect/MapMakerInternalMap$v;)Lcom/google/common/collect/MapMakerInternalMap$v;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    return-object p1
.end method


# virtual methods
.method public b()Lcom/google/common/collect/MapMakerInternalMap$v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$o<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    return-object v0
.end method

.method f(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$o;)Lcom/google/common/collect/MapMakerInternalMap$o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$o<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$o<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$o;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$o;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$o;)V

    .line 2
    iget-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    invoke-interface {p2, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$v;->b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$h;)Lcom/google/common/collect/MapMakerInternalMap$v;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    return-object v0
.end method

.method g(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    .line 2
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$w;

    invoke-direct {v1, p2, p1, p0}, Lcom/google/common/collect/MapMakerInternalMap$w;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$h;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$v;->clear()V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$o;->d:Lcom/google/common/collect/MapMakerInternalMap$v;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$v;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
