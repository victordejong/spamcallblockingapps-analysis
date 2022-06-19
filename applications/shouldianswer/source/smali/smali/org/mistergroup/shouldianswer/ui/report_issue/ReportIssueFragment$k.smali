.class final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;
.super Lkotlin/c/b/a/k;
.source "ReportIssueFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e()V
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
    b = "ReportIssueFragment.kt"
    c = {
        0x93,
        0x9e,
        0xb5
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.report_issue.ReportIssueFragment$sendTicket$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:I

.field final synthetic g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

.field private h:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->h:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 145
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->e:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/utils/ad$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->c:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->h:Lkotlinx/coroutines/ad;

    .line 147
    :try_start_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->a:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->f:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 145
    :cond_4
    :goto_0
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;

    if-eqz p1, :cond_6

    .line 149
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 150
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v7, "email"

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/a/ci;

    move-result-object v8

    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/ci;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v9, "binding.editEmail"

    invoke-static {v8, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v7, "issueType"

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v7, "description"

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/a/ci;

    move-result-object v8

    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/ci;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v9, "binding.editDescription"

    invoke-static {v8, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v7, "phoneNumber"

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/a/ci;

    move-result-object v8

    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/ci;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v9, "binding.editPhoneNumber"

    invoke-static {v8, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v7, "operatorCountry"

    sget-object v8, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v7, "info"

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    const-string v7, "logs"

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    sget-object v7, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/ad;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lorg/mistergroup/shouldianswer/utils/ad;->b(Ljava/lang/String;Ljava/util/HashMap;)Lorg/mistergroup/shouldianswer/utils/ad$a;

    move-result-object v6

    .line 158
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v7

    check-cast v7, Lkotlin/c/f;

    new-instance v8, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;

    invoke-direct {v8, v6, v5, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;-><init>(Lorg/mistergroup/shouldianswer/utils/ad$a;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;)V

    check-cast v8, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->b:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->c:Ljava/lang/Object;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->d:Ljava/lang/Object;

    iput-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->e:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->f:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 145
    :cond_5
    :goto_1
    check-cast p1, Landroidx/appcompat/app/d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 179
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 181
    :cond_6
    :goto_2
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    check-cast p1, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$1;

    invoke-direct {v3, p0, v5}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$1;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;Lkotlin/c/c;)V

    check-cast v3, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->f:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 186
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
