.class abstract Lscala/collection/concurrent/MainNode;
.super Lscala/collection/concurrent/BasicNode;
.source "MainNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/concurrent/BasicNode;"
    }
.end annotation


# static fields
.field public static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/MainNode;",
            "Lscala/collection/concurrent/MainNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile prev:Lscala/collection/concurrent/MainNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lscala/collection/concurrent/MainNode;

    const-string v1, "prev"

    invoke-static {v0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lscala/collection/concurrent/MainNode;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lscala/collection/concurrent/BasicNode;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lscala/collection/concurrent/MainNode;->prev:Lscala/collection/concurrent/MainNode;

    return-void
.end method


# virtual methods
.method public CAS_PREV(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/MainNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 24
    sget-object v0, Lscala/collection/concurrent/MainNode;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public READ_PREV()Lscala/collection/concurrent/MainNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    sget-object v0, Lscala/collection/concurrent/MainNode;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/concurrent/MainNode;

    return-object v0
.end method

.method public WRITE_PREV(Lscala/collection/concurrent/MainNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 28
    sget-object v0, Lscala/collection/concurrent/MainNode;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract cachedSize(Ljava/lang/Object;)I
.end method
