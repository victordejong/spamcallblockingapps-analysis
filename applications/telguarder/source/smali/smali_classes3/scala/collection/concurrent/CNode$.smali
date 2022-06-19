.class public final Lscala/collection/concurrent/CNode$;
.super Ljava/lang/Object;
.source "TrieMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/concurrent/CNode$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/concurrent/CNode$;

    invoke-direct {v0}, Lscala/collection/concurrent/CNode$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/concurrent/CNode$;->MODULE$:Lscala/collection/concurrent/CNode$;

    return-void
.end method


# virtual methods
.method public dual(Lscala/collection/concurrent/SNode;ILscala/collection/concurrent/SNode;IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/SNode<",
            "TK;TV;>;I",
            "Lscala/collection/concurrent/SNode<",
            "TK;TV;>;II",
            "Lscala/collection/concurrent/Gen;",
            ")",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    move/from16 v0, p5

    move-object/from16 v7, p6

    const/16 v1, 0x23

    if-ge v0, v1, :cond_2

    ushr-int v1, p2, v0

    and-int/lit8 v1, v1, 0x1f

    ushr-int v2, p4, v0

    and-int/lit8 v2, v2, 0x1f

    const/4 v8, 0x1

    shl-int v3, v8, v1

    shl-int v4, v8, v2

    or-int v9, v3, v4

    const/4 v10, 0x0

    if-ne v1, v2, :cond_0

    .line 600
    new-instance v11, Lscala/collection/concurrent/INode;

    invoke-direct {v11, v7}, Lscala/collection/concurrent/INode;-><init>(Lscala/collection/concurrent/Gen;)V

    add-int/lit8 v5, v0, 0x5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 601
    invoke-virtual/range {v0 .. v6}, Lscala/collection/concurrent/CNode$;->dual(Lscala/collection/concurrent/SNode;ILscala/collection/concurrent/SNode;IILscala/collection/concurrent/Gen;)Lscala/collection/concurrent/MainNode;

    move-result-object v0

    iput-object v0, v11, Lscala/collection/concurrent/INodeBase;->mainnode:Lscala/collection/concurrent/MainNode;

    .line 602
    new-instance v0, Lscala/collection/concurrent/CNode;

    new-array v1, v8, [Lscala/collection/concurrent/BasicNode;

    aput-object v11, v1, v10

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Lscala/collection/concurrent/BasicNode;

    invoke-direct {v0, v9, v1, v7}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ge v1, v2, :cond_1

    .line 604
    new-instance v1, Lscala/collection/concurrent/CNode;

    new-array v0, v0, [Lscala/collection/concurrent/BasicNode;

    aput-object p1, v0, v10

    aput-object p3, v0, v8

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Lscala/collection/concurrent/BasicNode;

    invoke-direct {v1, v9, v0, v7}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    goto :goto_0

    .line 605
    :cond_1
    new-instance v1, Lscala/collection/concurrent/CNode;

    new-array v0, v0, [Lscala/collection/concurrent/BasicNode;

    aput-object p3, v0, v10

    aput-object p1, v0, v8

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Lscala/collection/concurrent/BasicNode;

    invoke-direct {v1, v9, v0, v7}, Lscala/collection/concurrent/CNode;-><init>(I[Lscala/collection/concurrent/BasicNode;Lscala/collection/concurrent/Gen;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 608
    :cond_2
    new-instance v0, Lscala/collection/concurrent/LNode;

    invoke-virtual {p1}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3}, Lscala/collection/concurrent/SNode;->k()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3}, Lscala/collection/concurrent/SNode;->v()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/collection/concurrent/LNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method
