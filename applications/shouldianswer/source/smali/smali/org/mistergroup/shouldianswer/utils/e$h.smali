.class final Lorg/mistergroup/shouldianswer/utils/e$h;
.super Lkotlin/c/b/a/k;
.source "CallHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/e;->d(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "CallHelper.kt"
    c = {
        0x154
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.CallHelper$onOutgoingCall$2"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lkotlin/e/b/m$a;

.field final synthetic e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic f:Lkotlin/e/b/m$a;

.field private g:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lkotlin/e/b/m$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/e/b/m$a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->d:Lkotlin/e/b/m$a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->f:Lkotlin/e/b/m$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$h;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/e$h;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/e$h;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->d:Lkotlin/e/b/m$a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->f:Lkotlin/e/b/m$a;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/utils/e$h;-><init>(Lkotlin/e/b/m$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/e/b/m$a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/e$h;->g:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 335
    iget v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ak;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 341
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->g:Lkotlinx/coroutines/ad;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 336
    new-instance v1, Lorg/mistergroup/shouldianswer/utils/e$h$a;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lorg/mistergroup/shouldianswer/utils/e$h$a;-><init>(Lorg/mistergroup/shouldianswer/utils/e$h;Lkotlin/c/c;)V

    move-object v6, v1

    check-cast v6, Lkotlin/e/a/m;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->a(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/ak;

    move-result-object v1

    const-wide/16 v3, 0x7d0

    .line 340
    new-instance v5, Lorg/mistergroup/shouldianswer/utils/e$h$1;

    invoke-direct {v5, v1, v9}, Lorg/mistergroup/shouldianswer/utils/e$h$1;-><init>(Lkotlinx/coroutines/ak;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/utils/e$h;->c:I

    invoke-static {v3, v4, v5, p0}, Lkotlinx/coroutines/cl;->a(JLkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 341
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
