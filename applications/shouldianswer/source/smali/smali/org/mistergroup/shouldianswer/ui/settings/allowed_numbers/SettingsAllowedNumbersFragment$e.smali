.class final Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;
.super Lkotlin/c/b/a/k;
.source "SettingsAllowedNumbersFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;->d()V
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
    b = "SettingsAllowedNumbersFragment.kt"
    c = {
        0x63,
        0x64,
        0x6c,
        0x6c,
        0x6c
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.settings.allowed_numbers.SettingsAllowedNumbersFragment$readData$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->d:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->d:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 97
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->c:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 112
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object p1, v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->e:Lkotlinx/coroutines/ad;

    .line 99
    :try_start_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->d:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;->b(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;)Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    iput v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->c:I

    invoke-virtual {p1, v7, p0}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/a;->a(ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 97
    :cond_6
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 100
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v5

    check-cast v5, Lkotlin/c/f;

    new-instance v9, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$1;

    invoke-direct {v9, p0, p1, v8}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;Ljava/util/List;Lkotlin/c/c;)V

    check-cast v9, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->b:Ljava/lang/Object;

    iput v6, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->c:I

    invoke-static {v5, v9, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v0, :cond_7

    return-object v0

    .line 107
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->d:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;

    invoke-static {p1, v7}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;Z)V

    .line 108
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$2;

    invoke-direct {v2, p0, v8}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$2;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;Lkotlin/c/c;)V

    check-cast v2, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->c:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 105
    :try_start_3
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, p1, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->d:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;

    invoke-static {p1, v7}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;Z)V

    .line 108
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$2;

    invoke-direct {v2, p0, v8}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$2;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;Lkotlin/c/c;)V

    check-cast v2, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->c:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 112
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    .line 107
    :goto_3
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->d:Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;

    invoke-static {v3, v7}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment;Z)V

    .line 108
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v3

    check-cast v3, Lkotlin/c/f;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$2;

    invoke-direct {v4, p0, v8}, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e$2;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;Lkotlin/c/c;)V

    check-cast v4, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/allowed_numbers/SettingsAllowedNumbersFragment$e;->c:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_9

    return-object v0

    .line 111
    :cond_9
    :goto_4
    throw p1
.end method
