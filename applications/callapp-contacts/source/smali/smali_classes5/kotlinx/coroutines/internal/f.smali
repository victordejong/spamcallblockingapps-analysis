.class public final Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a;\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\u0008\u00030\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0082\u0008\u001aU\u0010\u0011\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u00152%\u0008\u0002\u0010\u0016\u001a\u001f\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00100\u0008H\u0000\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "REUSABLE_CLAIMED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "getREUSABLE_CLAIMED$annotations",
        "()V",
        "UNDEFINED",
        "getUNDEFINED$annotations",
        "executeUnconfined",
        "",
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "contState",
        "",
        "mode",
        "",
        "doYield",
        "block",
        "Lkotlin/Function0;",
        "",
        "resumeCancellableWith",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "result",
        "Lkotlin/Result;",
        "onCancellation",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "yieldUndispatched",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/v;

.field private static final b:Lkotlinx/coroutines/internal/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/f;->b:Lkotlinx/coroutines/internal/v;

    .line 17
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/f;->a:Lkotlinx/coroutines/internal/v;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/v;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/f;->b:Lkotlinx/coroutines/internal/v;

    return-object v0
.end method

.method public static synthetic a(Lkotlin/c/d;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/f;->a(Lkotlin/c/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final a(Lkotlin/c/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 265
    instance-of v0, p0, Lkotlinx/coroutines/internal/e;

    if-eqz v0, :cond_8

    check-cast p0, Lkotlinx/coroutines/internal/e;

    .line 301
    invoke-static {p1, p2}, Lkotlinx/coroutines/ac;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    .line 302
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->e:Lkotlinx/coroutines/af;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->b()Lkotlin/c/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/af;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 303
    iput-object p2, p0, Lkotlinx/coroutines/internal/e;->a:Ljava/lang/Object;

    .line 304
    iput v1, p0, Lkotlinx/coroutines/internal/e;->b:I

    .line 305
    iget-object p1, p0, Lkotlinx/coroutines/internal/e;->e:Lkotlinx/coroutines/af;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->b()Lkotlin/c/f;

    move-result-object p2

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/af;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    return-void

    .line 311
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    .line 313
    sget-object v0, Lkotlinx/coroutines/cn;->a:Lkotlinx/coroutines/cn;

    invoke-static {}, Lkotlinx/coroutines/cn;->a()Lkotlinx/coroutines/bf;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lkotlinx/coroutines/bf;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    iput-object p2, p0, Lkotlinx/coroutines/internal/e;->a:Ljava/lang/Object;

    .line 319
    iput v1, p0, Lkotlinx/coroutines/internal/e;->b:I

    .line 320
    check-cast p0, Lkotlinx/coroutines/ax;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/bf;->a(Lkotlinx/coroutines/ax;)V

    return-void

    .line 324
    :cond_1
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/ax;

    .line 325
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->a(Z)V

    const/4 v3, 0x0

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->b()Lkotlin/c/f;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/bv;->c:Lkotlinx/coroutines/bv$b;

    check-cast v5, Lkotlin/c/f$c;

    invoke-interface {v4, v5}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/bv;

    if-eqz v4, :cond_2

    .line 330
    invoke-interface {v4}, Lkotlinx/coroutines/bv;->e()Z

    move-result v5

    if-nez v5, :cond_2

    .line 331
    invoke-interface {v4}, Lkotlinx/coroutines/bv;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v4

    .line 332
    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {p0, p2, v5}, Lkotlinx/coroutines/internal/e;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 333
    sget-object p2, Lkotlin/o;->a:Lkotlin/o$a;

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_7

    .line 338
    iget-object p2, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    iget-object v4, p0, Lkotlinx/coroutines/internal/e;->c:Ljava/lang/Object;

    .line 339
    invoke-interface {p2}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v5

    .line 340
    invoke-static {v5, v4}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 341
    sget-object v6, Lkotlinx/coroutines/internal/z;->a:Lkotlinx/coroutines/internal/v;

    if-eq v4, v6, :cond_3

    .line 343
    invoke-static {p2, v5, v4}, Lkotlinx/coroutines/ae;->a(Lkotlin/c/d;Lkotlin/c/f;Ljava/lang/Object;)Lkotlinx/coroutines/cs;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_3
    move-object p2, v3

    .line 349
    :goto_1
    :try_start_1
    iget-object p0, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    invoke-interface {p0, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    .line 350
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 351
    :try_start_2
    invoke-virtual {p2}, Lkotlinx/coroutines/cs;->r()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 352
    :cond_4
    invoke-static {v5, v4}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_5

    .line 351
    invoke-virtual {p2}, Lkotlinx/coroutines/cs;->r()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 352
    :cond_5
    invoke-static {v5, v4}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    :cond_6
    throw p0

    .line 357
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/bf;->f()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_7

    .line 366
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->b(Z)V

    return-void

    :catchall_1
    move-exception p0

    .line 364
    :try_start_3
    invoke-virtual {v2, p0, v3}, Lkotlinx/coroutines/ax;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 366
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->b(Z)V

    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->b(Z)V

    throw p0

    .line 266
    :cond_8
    invoke-interface {p0, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method
