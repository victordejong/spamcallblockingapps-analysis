.class abstract Lscala/collection/concurrent/INodeBase;
.super Lscala/collection/concurrent/BasicNode;
.source "INodeBase.java"


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
.field public static final RESTART:Ljava/lang/Object;

.field public static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/INodeBase;",
            "Lscala/collection/concurrent/MainNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final gen:Lscala/collection/concurrent/Gen;

.field public volatile mainnode:Lscala/collection/concurrent/MainNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    const-class v0, Lscala/collection/concurrent/INodeBase;

    const-class v1, Lscala/collection/concurrent/MainNode;

    const-string v2, "mainnode"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lscala/collection/concurrent/INodeBase;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lscala/collection/concurrent/INodeBase;->RESTART:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lscala/collection/concurrent/Gen;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lscala/collection/concurrent/BasicNode;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lscala/collection/concurrent/INodeBase;->mainnode:Lscala/collection/concurrent/MainNode;

    .line 26
    iput-object p1, p0, Lscala/collection/concurrent/INodeBase;->gen:Lscala/collection/concurrent/Gen;

    return-void
.end method


# virtual methods
.method public prev()Lscala/collection/concurrent/BasicNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
