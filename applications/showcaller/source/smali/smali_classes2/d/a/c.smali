.class final Ld/a/c;
.super Ljava/lang/Object;
.source "PersistentHashArrayMappedTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/c$d;,
        Ld/a/c$b;,
        Ld/a/c$a;,
        Ld/a/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ld/a/c$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/c$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ld/a/c;-><init>(Ld/a/c$d;)V

    return-void
.end method

.method private constructor <init>(Ld/a/c$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/c$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ld/a/c;->a:Ld/a/c$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/a/c;->a:Ld/a/c$d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Ld/a/c$d;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ld/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ld/a/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/a/c;->a:Ld/a/c$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/a/c;

    new-instance v1, Ld/a/c$c;

    invoke-direct {v1, p1, p2}, Ld/a/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ld/a/c;-><init>(Ld/a/c$d;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ld/a/c;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, p1, p2, v2, v3}, Ld/a/c$d;->b(Ljava/lang/Object;Ljava/lang/Object;II)Ld/a/c$d;

    move-result-object p1

    invoke-direct {v1, p1}, Ld/a/c;-><init>(Ld/a/c$d;)V

    return-object v1
.end method
