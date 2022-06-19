.class public final Lkotlinx/coroutines/b/c;
.super Lkotlinx/coroutines/b/d;
.source "Dispatcher.kt"


# static fields
.field public static final b:Lkotlinx/coroutines/b/c;

.field private static final c:Lkotlinx/coroutines/y;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lkotlinx/coroutines/b/c;

    invoke-direct {v0}, Lkotlinx/coroutines/b/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/b/c;->b:Lkotlinx/coroutines/b/c;

    .line 17
    invoke-static {}, Lkotlinx/coroutines/internal/v;->a()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Lkotlin/f/d;->c(II)I

    move-result v4

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/b/c;->a(I)Lkotlinx/coroutines/y;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/c;->c:Lkotlinx/coroutines/y;

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
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/b/d;-><init>(IILjava/lang/String;ILkotlin/e/b/e;)V

    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/y;
    .locals 1

    .line 17
    sget-object v0, Lkotlinx/coroutines/b/c;->c:Lkotlinx/coroutines/y;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DefaultDispatcher cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultDispatcher"

    return-object v0
.end method
