.class public final Lscala/collection/concurrent/RDCSS_Descriptor$;
.super Ljava/lang/Object;
.source "TrieMap.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/concurrent/RDCSS_Descriptor$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/concurrent/RDCSS_Descriptor$;

    invoke-direct {v0}, Lscala/collection/concurrent/RDCSS_Descriptor$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/concurrent/RDCSS_Descriptor$;->MODULE$:Lscala/collection/concurrent/RDCSS_Descriptor$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 614
    sget-object v0, Lscala/collection/concurrent/RDCSS_Descriptor$;->MODULE$:Lscala/collection/concurrent/RDCSS_Descriptor$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Lscala/collection/concurrent/RDCSS_Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/RDCSS_Descriptor<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    new-instance v0, Lscala/collection/concurrent/RDCSS_Descriptor;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/concurrent/RDCSS_Descriptor;-><init>(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RDCSS_Descriptor"

    return-object v0
.end method

.method public unapply(Lscala/collection/concurrent/RDCSS_Descriptor;)Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/RDCSS_Descriptor<",
            "TK;TV;>;)",
            "Lscala/Option<",
            "Lscala/Tuple3<",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 614
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/Tuple3;

    invoke-virtual {p1}, Lscala/collection/concurrent/RDCSS_Descriptor;->old()Lscala/collection/concurrent/INode;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain()Lscala/collection/concurrent/MainNode;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/concurrent/RDCSS_Descriptor;->nv()Lscala/collection/concurrent/INode;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
