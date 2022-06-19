.class abstract Lscala/collection/concurrent/CNodeBase;
.super Lscala/collection/concurrent/MainNode;
.source "CNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/concurrent/MainNode<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lscala/collection/concurrent/CNodeBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile csize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lscala/collection/concurrent/CNodeBase;

    const-string v1, "csize"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lscala/collection/concurrent/CNodeBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lscala/collection/concurrent/MainNode;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lscala/collection/concurrent/CNodeBase;->csize:I

    return-void
.end method


# virtual methods
.method public CAS_SIZE(II)Z
    .locals 1

    .line 22
    sget-object v0, Lscala/collection/concurrent/CNodeBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public READ_SIZE()I
    .locals 1

    .line 30
    sget-object v0, Lscala/collection/concurrent/CNodeBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public WRITE_SIZE(I)V
    .locals 1

    .line 26
    sget-object v0, Lscala/collection/concurrent/CNodeBase;->updater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method
