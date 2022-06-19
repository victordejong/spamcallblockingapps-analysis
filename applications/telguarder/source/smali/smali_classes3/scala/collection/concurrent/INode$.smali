.class public final Lscala/collection/concurrent/INode$;
.super Ljava/lang/Object;
.source "TrieMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/concurrent/INode$;


# instance fields
.field private final KEY_ABSENT:Ljava/lang/Object;

.field private final KEY_PRESENT:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/concurrent/INode$;

    invoke-direct {v0}, Lscala/collection/concurrent/INode$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/concurrent/INode$;->MODULE$:Lscala/collection/concurrent/INode$;

    .line 384
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lscala/collection/concurrent/INode$;->KEY_PRESENT:Ljava/lang/Object;

    .line 385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lscala/collection/concurrent/INode$;->KEY_ABSENT:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public KEY_ABSENT()Ljava/lang/Object;
    .locals 1

    .line 385
    iget-object v0, p0, Lscala/collection/concurrent/INode$;->KEY_ABSENT:Ljava/lang/Object;

    return-object v0
.end method

.method public KEY_PRESENT()Ljava/lang/Object;
    .locals 1

    .line 384
    iget-object v0, p0, Lscala/collection/concurrent/INode$;->KEY_PRESENT:Ljava/lang/Object;

    return-object v0
.end method

.method public newRootNode()Lscala/collection/concurrent/INode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 388
    new-instance v0, Lscala/collection/concurrent/Gen;

    invoke-direct {v0}, Lscala/collection/concurrent/Gen;-><init>()V

    .line 389
    new-instance v1, Lscala/collection/concurrent/CNode;

    const/4 v2, 0x0

    new-array v3, v2, [Lscala/collection/concurrent/BasicNode;

    invoke-direct {v1, v2, v3, v0}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    .line 390
    new-instance v2, Lscala/collection/concurrent/INode;

    invoke-direct {v2, v1, v0}, Lscala/collection/concurrent/INode;-><init>(Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/Gen;)V

    return-object v2
.end method
