.class final Lorg/mistergroup/shouldianswer/b/h$i;
.super Lkotlin/c/b/a/k;
.source "RingingAlertPopup.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/h;->j()V
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
    b = "RingingAlertPopup.kt"
    c = {
        0x112,
        0x116
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.RingingAlertPopup$showManually$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:I

.field final synthetic h:Lorg/mistergroup/shouldianswer/b/h;

.field private i:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/b/h;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/h$i;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/h$i;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/h$i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 2
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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/h$i;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/b/h$i;-><init>(Lorg/mistergroup/shouldianswer/b/h;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/h$i;->i:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 269
    iget v1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i;->c:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$i;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 333
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h$i;->c:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/h$i;->b:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/b/h$i;->a:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/b/h$i;->i:Lkotlinx/coroutines/ad;

    .line 271
    :try_start_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->h:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->j(Lorg/mistergroup/shouldianswer/b/h;)Lorg/mistergroup/shouldianswer/utils/t;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 272
    sget-object p1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p1

    .line 273
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/t;->n()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/t;->n()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v7

    iput-object v6, p0, Lorg/mistergroup/shouldianswer/b/h$i;->a:Ljava/lang/Object;

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/b/h$i;->b:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->c:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->d:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/b/h$i;->g:I

    invoke-virtual {v7, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    .line 269
    :goto_0
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ag;

    .line 275
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v7

    .line 276
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RingingAlertPopup.showManually.begin number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ratingString="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 278
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v8

    check-cast v8, Lkotlin/c/f;

    new-instance v9, Lorg/mistergroup/shouldianswer/b/h$i$a;

    invoke-direct {v9, v5, v2, v4, p0}, Lorg/mistergroup/shouldianswer/b/h$i$a;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Lorg/mistergroup/shouldianswer/MyApp;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/h$i;)V

    check-cast v9, Lkotlin/e/a/m;

    iput-object v6, p0, Lorg/mistergroup/shouldianswer/b/h$i;->a:Ljava/lang/Object;

    iput-object v5, p0, Lorg/mistergroup/shouldianswer/b/h$i;->b:Ljava/lang/Object;

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/b/h$i;->c:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->d:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$i;->e:Ljava/lang/Object;

    iput-object v7, p0, Lorg/mistergroup/shouldianswer/b/h$i;->f:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/b/h$i;->g:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    :catch_0
    move-exception p1

    .line 331
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 333
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
