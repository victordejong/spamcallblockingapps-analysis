.class final Lorg/mistergroup/shouldianswer/utils/e$i;
.super Lkotlin/c/b/a/k;
.source "CallHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V
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
        0xa5
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.CallHelper$onRinging$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/e$a;

.field final synthetic d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic e:J

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->c:Lorg/mistergroup/shouldianswer/utils/e$a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-wide p3, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$i;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/e$i;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$i;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/e$i;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->c:Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-wide v4, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->e:J

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/utils/e$i;-><init>(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/e$i;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 163
    iget v1, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->f:Lkotlinx/coroutines/ad;

    .line 165
    :try_start_1
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->c:Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-wide v6, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->e:J

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/utils/e$i;->b:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 166
    :cond_2
    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-virtual {p1, v2}, Lorg/mistergroup/shouldianswer/utils/e;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 168
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 170
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
