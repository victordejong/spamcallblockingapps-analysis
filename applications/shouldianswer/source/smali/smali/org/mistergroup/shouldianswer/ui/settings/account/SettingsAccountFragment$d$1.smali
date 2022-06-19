.class final Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;
.super Lkotlin/c/b/a/k;
.source "SettingsAccountFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->onClick(Landroid/view/View;)V
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
    b = "SettingsAccountFragment.kt"
    c = {
        0x5d,
        0x5f,
        0x66
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.settings.account.SettingsAccountFragment$initWithActivity$2$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

.field final synthetic e:Ljava/lang/String;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->f:Lkotlinx/coroutines/ad;

    .line 91
    :try_start_3
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1, v5}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    sget-object v7, Lorg/mistergroup/shouldianswer/model/UserAccount;->a:Lorg/mistergroup/shouldianswer/model/UserAccount;

    const-string v8, ""

    const-string v9, ""

    iget-object v10, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->e:Ljava/lang/String;

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->c(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;)Lorg/mistergroup/shouldianswer/a/cy;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/cy;->n:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v11, "binding.editAccountConnectPassword"

    invoke-static {p1, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->a:Ljava/lang/Object;

    iput v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->c:I

    move-object v12, p0

    invoke-virtual/range {v7 .. v12}, Lorg/mistergroup/shouldianswer/model/UserAccount;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 94
    :cond_4
    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lorg/mistergroup/shouldianswer/model/c;->h(J)V

    .line 95
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;

    invoke-direct {v5, p0, v6}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$1;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->a:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->c:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v0, :cond_5

    return-object v0

    .line 101
    :goto_1
    :try_start_5
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v5, p1, v6, v4, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$2;

    invoke-direct {v5, p0, p1, v6}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1$2;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;Ljava/lang/Exception;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->c:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne p1, v0, :cond_5

    return-object v0

    .line 112
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {p1, v2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;Z)V

    .line 114
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :catchall_0
    move-exception p1

    .line 112
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d$1;->d:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;

    invoke-static {v0, v2}, Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;->a(Lorg/mistergroup/shouldianswer/ui/settings/account/SettingsAccountFragment;Z)V

    throw p1
.end method
