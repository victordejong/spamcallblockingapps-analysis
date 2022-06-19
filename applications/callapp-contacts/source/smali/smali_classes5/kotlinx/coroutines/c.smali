.class final Lkotlinx/coroutines/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/c$b;,
        Lkotlinx/coroutines/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u000e:\u0002\u000b\u000cB\u001d\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tR$\u0010\u0004\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/AwaitAll;",
        "T",
        "",
        "Lkotlinx/coroutines/Deferred;",
        "deferreds",
        "<init>",
        "([Lkotlinx/coroutines/Deferred;)V",
        "",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "[Lkotlinx/coroutines/Deferred;",
        "AwaitAllNode",
        "DisposeHandlersOnCancel",
        "kotlinx-coroutines-core",
        ""
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final b:[Lkotlinx/coroutines/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/as<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile synthetic notCompletedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/c;

    const-string v1, "notCompletedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/c;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Lkotlinx/coroutines/as;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/as<",
            "+TT;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/c;->b:[Lkotlinx/coroutines/as;

    .line 69
    array-length p1, p1

    iput p1, p0, Lkotlinx/coroutines/c;->notCompletedCount:I

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/c;)[Lkotlinx/coroutines/as;
    .locals 0

    .line 68
    iget-object p0, p0, Lkotlinx/coroutines/c;->b:[Lkotlinx/coroutines/as;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/c/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 129
    new-instance v0, Lkotlinx/coroutines/o;

    invoke-static {p1}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/o;-><init>(Lkotlin/c/d;I)V

    .line 1096
    invoke-virtual {v0}, Lkotlinx/coroutines/o;->e()V

    .line 136
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n;

    .line 2068
    iget-object v2, p0, Lkotlinx/coroutines/c;->b:[Lkotlinx/coroutines/as;

    .line 74
    array-length v2, v2

    new-array v3, v2, [Lkotlinx/coroutines/c$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 3032
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 74
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 3068
    iget-object v7, p0, Lkotlinx/coroutines/c;->b:[Lkotlinx/coroutines/as;

    .line 75
    aget-object v6, v7, v6

    .line 76
    invoke-interface {v6}, Lkotlinx/coroutines/as;->n()Z

    .line 77
    new-instance v7, Lkotlinx/coroutines/c$a;

    invoke-direct {v7, p0, v1}, Lkotlinx/coroutines/c$a;-><init>(Lkotlinx/coroutines/c;Lkotlinx/coroutines/n;)V

    .line 78
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/ab;

    .line 137
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 78
    invoke-interface {v6, v8}, Lkotlinx/coroutines/as;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/bb;

    move-result-object v6

    .line 3104
    iput-object v6, v7, Lkotlinx/coroutines/c$a;->a:Lkotlinx/coroutines/bb;

    .line 77
    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v5, Lkotlinx/coroutines/c$b;

    invoke-direct {v5, p0, v3}, Lkotlinx/coroutines/c$b;-><init>(Lkotlinx/coroutines/c;[Lkotlinx/coroutines/c$a;)V

    :goto_1
    if-ge v4, v2, :cond_1

    .line 138
    aget-object v6, v3, v4

    .line 3109
    iput-object v5, v6, Lkotlinx/coroutines/c$a;->_disposer:Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 86
    :cond_1
    invoke-interface {v1}, Lkotlinx/coroutines/n;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v5}, Lkotlinx/coroutines/c$b;->a()V

    goto :goto_2

    .line 90
    :cond_2
    check-cast v5, Lkotlinx/coroutines/m;

    .line 140
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 90
    invoke-interface {v1, v5}, Lkotlinx/coroutines/n;->a(Lkotlin/jvm/functions/Function1;)V

    .line 141
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/o;->g()Ljava/lang/Object;

    move-result-object v0

    .line 4057
    sget-object v1, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne v0, v1, :cond_3

    const-string v1, "frame"

    .line 128
    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
