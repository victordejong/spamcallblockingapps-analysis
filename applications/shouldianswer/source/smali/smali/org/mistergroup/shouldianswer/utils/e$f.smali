.class final Lorg/mistergroup/shouldianswer/utils/e$f;
.super Lkotlin/c/b/a/k;
.source "CallHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/e;->b(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V
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
        0xc9
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.CallHelper$onOffhook$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/e$a;

.field final synthetic d:Lkotlin/e/b/m$c;

.field final synthetic e:J

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/e$a;Lkotlin/e/b/m$c;JLkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->c:Lorg/mistergroup/shouldianswer/utils/e$a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->d:Lkotlin/e/b/m$c;

    iput-wide p3, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$f;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/e$f;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 7
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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/e$f;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->c:Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->d:Lkotlin/e/b/m$c;

    iget-wide v4, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->e:J

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/utils/e$f;-><init>(Lorg/mistergroup/shouldianswer/utils/e$a;Lkotlin/e/b/m$c;JLkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/e$f;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 200
    iget v1, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->f:Lkotlinx/coroutines/ad;

    .line 201
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->c:Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->d:Lkotlin/e/b/m$c;

    iget-object v1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-wide v6, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->e:J

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/utils/e$f;->b:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 202
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
