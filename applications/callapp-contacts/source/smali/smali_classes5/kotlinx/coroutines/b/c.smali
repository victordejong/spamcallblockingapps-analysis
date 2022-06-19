.class public final Lkotlinx/coroutines/b/c;
.super Lkotlinx/coroutines/b/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/DefaultScheduler;",
        "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;",
        "()V",
        "IO",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getIO",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "close",
        "",
        "toDebugString",
        "",
        "toString",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final b:Lkotlinx/coroutines/b/c;

.field private static final e:Lkotlinx/coroutines/af;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lkotlinx/coroutines/b/c;

    invoke-direct {v0}, Lkotlinx/coroutines/b/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/b/c;->b:Lkotlinx/coroutines/b/c;

    .line 17
    new-instance v1, Lkotlinx/coroutines/b/f;

    .line 18
    check-cast v0, Lkotlinx/coroutines/b/d;

    .line 1001
    invoke-static {}, Lkotlinx/coroutines/internal/x;->a()I

    move-result v2

    const/16 v3, 0x40

    .line 19
    invoke-static {v3, v2}, Lkotlin/f/d;->c(II)I

    move-result v2

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v3, v2, v4, v4, v5}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;IIII)I

    move-result v2

    const-string v3, "Dispatchers.IO"

    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v0, v2, v3, v4}, Lkotlinx/coroutines/b/f;-><init>(Lkotlinx/coroutines/b/d;ILjava/lang/String;I)V

    check-cast v1, Lkotlinx/coroutines/af;

    sput-object v1, Lkotlinx/coroutines/b/c;->e:Lkotlinx/coroutines/af;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/b/d;-><init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static c()Lkotlinx/coroutines/af;
    .locals 1

    .line 17
    sget-object v0, Lkotlinx/coroutines/b/c;->e:Lkotlinx/coroutines/af;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
