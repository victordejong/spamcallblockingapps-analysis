.class final Lorg/mistergroup/shouldianswer/ui/main/b$d;
.super Lkotlin/c/b/a/k;
.source "MainBanners.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/b;->b()V
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
    b = "MainBanners.kt"
    c = {
        0x35,
        0x36,
        0x38,
        0x39,
        0x3a,
        0x3c,
        0x3e
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.MainBanners$check$2"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:J

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/main/b;

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/b$d;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/b$d;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/main/b$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 49
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :pswitch_0
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v5, v0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    move-wide v5, v0

    goto/16 :goto_6

    :pswitch_1
    iget-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :pswitch_2
    iget-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :pswitch_3
    iget-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :pswitch_4
    iget-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_4
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :pswitch_5
    iget-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_5
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :pswitch_6
    iget-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_6
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->f:Lkotlinx/coroutines/ad;

    .line 50
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v5

    .line 51
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/b;->a:Lorg/mistergroup/shouldianswer/ui/main/b$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$b;->a()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v7}, Lorg/mistergroup/shouldianswer/ui/main/b$b;->a(I)V

    .line 53
    :try_start_7
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-static {p1, v7, v8}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    invoke-virtual {p1, v7, p0}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 54
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->c:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-static {p1, v7, v8}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    invoke-virtual {p1, v7, p0}, Lorg/mistergroup/shouldianswer/ui/main/b;->b(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 55
    :cond_1
    :goto_1
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/b;->a:Lorg/mistergroup/shouldianswer/ui/main/b$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$b;->a()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 56
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    sget-object v3, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->d:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-static {p1, v3, v7}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    const/4 v7, 0x3

    iput v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    invoke-virtual {p1, v3, p0}, Lorg/mistergroup/shouldianswer/ui/main/b;->c(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 57
    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    sget-object v3, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->e:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-static {p1, v3, v7}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    const/4 v7, 0x4

    iput v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    invoke-virtual {p1, v3, p0}, Lorg/mistergroup/shouldianswer/ui/main/b;->d(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 58
    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    sget-object v3, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->f:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-static {p1, v3, v7}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    const/4 v7, 0x5

    iput v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    invoke-virtual {p1, v3, p0}, Lorg/mistergroup/shouldianswer/ui/main/b;->e(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 60
    :cond_4
    :goto_4
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    sget-object v3, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->g:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-static {p1, v3, v7}, Lorg/mistergroup/shouldianswer/ui/main/b;->a(Lorg/mistergroup/shouldianswer/ui/main/b;Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;Lorg/mistergroup/shouldianswer/ui/main/b$a;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->d:Lorg/mistergroup/shouldianswer/ui/main/b;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    const/4 v7, 0x6

    iput v7, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    invoke-virtual {p1, v3, p0}, Lorg/mistergroup/shouldianswer/ui/main/b;->f(Lorg/mistergroup/shouldianswer/ui/main/b$a;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 61
    :cond_5
    :goto_5
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->e:Lorg/mistergroup/shouldianswer/ui/main/b$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/b$a;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/b$d$1;

    invoke-direct {v3, p0, v4}, Lorg/mistergroup/shouldianswer/ui/main/b$d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/b$d;Lkotlin/c/c;)V

    check-cast v3, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->a:Ljava/lang/Object;

    iput-wide v5, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->b:J

    const/4 v1, 0x7

    iput v1, p0, Lorg/mistergroup/shouldianswer/ui/main/b$d;->c:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-ne p1, v0, :cond_6

    return-object v0

    :catch_1
    move-exception p1

    .line 71
    :goto_6
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v4, v2, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 73
    :cond_6
    :goto_7
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainBanners.check processed on background in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v1, v5, v6}, Lorg/mistergroup/shouldianswer/utils/u;->a(J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v2, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
