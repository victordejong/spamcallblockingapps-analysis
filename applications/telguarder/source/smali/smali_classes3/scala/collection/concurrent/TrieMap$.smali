.class public final Lscala/collection/concurrent/TrieMap$;
.super Lscala/collection/generic/MutableMapFactory;
.source "TrieMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/MutableMapFactory<",
        "Lscala/collection/concurrent/TrieMap;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/concurrent/TrieMap$;


# instance fields
.field private final inodeupdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/INodeBase<",
            "**>;",
            "Lscala/collection/concurrent/MainNode<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/concurrent/TrieMap$;

    invoke-direct {v0}, Lscala/collection/concurrent/TrieMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 947
    invoke-direct {p0}, Lscala/collection/generic/MutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/concurrent/TrieMap$;->MODULE$:Lscala/collection/concurrent/TrieMap$;

    .line 948
    const-class v0, Lscala/collection/concurrent/INodeBase;

    const-class v1, Lscala/collection/concurrent/MainNode;

    const-string v2, "mainnode"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/concurrent/TrieMap$;->inodeupdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 947
    sget-object v0, Lscala/collection/concurrent/TrieMap$;->MODULE$:Lscala/collection/concurrent/TrieMap$;

    return-object v0
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/concurrent/TrieMap<",
            "**>;",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 950
    new-instance v0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;-><init>(Lscala/collection/generic/GenMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .line 947
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap$;->empty()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 947
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMap$;->empty()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/concurrent/TrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 952
    new-instance v0, Lscala/collection/concurrent/TrieMap;

    invoke-direct {v0}, Lscala/collection/concurrent/TrieMap;-><init>()V

    return-object v0
.end method

.method public inodeupdater()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/collection/concurrent/INodeBase<",
            "**>;",
            "Lscala/collection/concurrent/MainNode<",
            "**>;>;"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lscala/collection/concurrent/TrieMap$;->inodeupdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method
