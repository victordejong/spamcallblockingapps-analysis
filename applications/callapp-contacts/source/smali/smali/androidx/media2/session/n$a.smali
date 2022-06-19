.class final Landroidx/media2/session/n$a;
.super Landroidx/c/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/common/a;",
        ">",
        "Landroidx/c/a/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:[Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/util/concurrent/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[",
            "Lcom/google/common/util/concurrent/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1830
    invoke-direct {p0}, Landroidx/c/a/a;-><init>()V

    .line 1821
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/session/n$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1831
    iput-object p2, p0, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    .line 1832
    :goto_0
    iget-object p2, p0, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    array-length v0, p2

    if-ge v1, v0, :cond_0

    .line 1834
    aget-object p2, p2, v1

    new-instance v0, Landroidx/media2/session/n$a$1;

    invoke-direct {v0, p0, v1}, Landroidx/media2/session/n$a$1;-><init>(Landroidx/media2/session/n$a;I)V

    invoke-interface {p2, v0, p1}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/a;)Landroidx/media2/session/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Landroidx/media2/common/a;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "[",
            "Lcom/google/common/util/concurrent/a<",
            "TU;>;)",
            "Landroidx/media2/session/n$a<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1826
    new-instance v0, Landroidx/media2/session/n$a;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/n$a;-><init>(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/a;)V

    return-object v0
.end method

.method static synthetic a(Landroidx/media2/session/n$a;Ljava/lang/Object;)Z
    .locals 0

    .line 1818
    invoke-virtual {p0, p1}, Landroidx/media2/session/n$a;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Landroidx/media2/session/n$a;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1818
    invoke-virtual {p0, p1}, Landroidx/media2/session/n$a;->a(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Landroidx/media2/session/n$a;Ljava/lang/Object;)Z
    .locals 0

    .line 1818
    invoke-virtual {p0, p1}, Landroidx/media2/session/n$a;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
