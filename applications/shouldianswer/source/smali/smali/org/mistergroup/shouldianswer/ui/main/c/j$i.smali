.class final Lorg/mistergroup/shouldianswer/ui/main/c/j$i;
.super Lkotlin/c/b/a/k;
.source "LogsDataSource.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Z)V
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
    b = "LogsDataSource.kt"
    c = {
        0xae,
        0xb5,
        0xb6
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$updateAsync$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

.field final synthetic d:Z

.field final synthetic e:I

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;ZILkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iput-boolean p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->d:Z

    iput p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->d:Z

    iget v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->e:I

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;ZILkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 172
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->f:Lkotlinx/coroutines/ad;

    .line 173
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->d:Z

    if-eqz p1, :cond_6

    const-wide/16 v6, 0xc8

    .line 174
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->a:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->b:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 175
    :cond_4
    :goto_0
    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->e:I

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j;)I

    move-result v6

    if-ne p1, v6, :cond_5

    goto :goto_1

    .line 176
    :cond_5
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogsDataSourceCallLog.updateAsync - ignore invalidation"

    invoke-virtual {p1, v1, v0}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 181
    :cond_6
    :goto_1
    :try_start_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->a:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->b:I

    invoke-static {p1, v5, p0, v4, v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j;Ljava/util/ArrayList;Lkotlin/c/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 172
    :cond_7
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 182
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/c/j$i$1;

    invoke-direct {v4, p0, v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$i$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$i;Lkotlin/c/c;)V

    check-cast v4, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;->b:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_8

    return-object v0

    :catch_0
    move-exception p1

    .line 187
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v5, v3, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 189
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
