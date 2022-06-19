.class public final Lretrofit2/i;
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
        "\u0000.\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a%\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a+\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u001a\'\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0007\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u001a\u0010\u0008\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\tH\u0086\u0008\u00a2\u0006\u0002\u0010\n\u001a\u0019\u0010\u000b\u001a\u00020\u000c*\u00060\rj\u0002`\u000eH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "await",
        "T",
        "",
        "Lretrofit2/Call;",
        "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitNullable",
        "awaitResponse",
        "Lretrofit2/Response;",
        "create",
        "Lretrofit2/Retrofit;",
        "(Lretrofit2/Retrofit;)Ljava/lang/Object;",
        "suspendAndThrow",
        "",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrofit"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/Exception;Lkotlin/c/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lkotlin/c/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lretrofit2/i$h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lretrofit2/i$h;

    iget v1, v0, Lretrofit2/i$h;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lretrofit2/i$h;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lretrofit2/i$h;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/i$h;

    invoke-direct {v0, p1}, Lretrofit2/i$h;-><init>(Lkotlin/c/d;)V

    :goto_0
    iget-object p1, v0, Lretrofit2/i$h;->a:Ljava/lang/Object;

    .line 1057
    sget-object v1, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    .line 112
    iget v2, v0, Lretrofit2/i$h;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_2
    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    .line 113
    iput-object p0, v0, Lretrofit2/i$h;->c:Ljava/lang/Object;

    iput v3, v0, Lretrofit2/i$h;->b:I

    check-cast v0, Lkotlin/c/d;

    .line 114
    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object p1

    invoke-interface {v0}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v2

    new-instance v3, Lretrofit2/i$g;

    invoke-direct {v3, v0, p0}, Lretrofit2/i$g;-><init>(Lkotlin/c/d;Ljava/lang/Exception;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v3}, Lkotlinx/coroutines/af;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    .line 2057
    sget-object p0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    .line 3057
    sget-object p1, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne p0, p1, :cond_3

    const-string p1, "frame"

    .line 113
    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-ne p0, v1, :cond_4

    return-object v1

    .line 119
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    return-object p0
.end method
