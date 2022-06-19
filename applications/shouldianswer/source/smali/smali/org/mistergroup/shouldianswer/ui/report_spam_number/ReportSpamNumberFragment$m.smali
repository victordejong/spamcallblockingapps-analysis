.class final Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;
.super Lkotlin/c/b/a/k;
.source "ReportSpamNumberFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Z)V
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
    b = "ReportSpamNumberFragment.kt"
    c = {
        0xa9
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.report_spam_number.ReportSpamNumberFragment$storeReport$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

.field final synthetic d:Z

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;ZLkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->c:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    iput-boolean p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->c:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->d:Z

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;ZLkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 166
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->e:Lkotlinx/coroutines/ad;

    .line 168
    :try_start_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->c:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v1

    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->d:Z

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    .line 169
    sget-object v1, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->c:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v3

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;->b:I

    invoke-virtual {v1, v3, p0}, Lorg/mistergroup/shouldianswer/model/aa;->b(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_3

    return-object v0

    :catch_0
    move-exception p1

    .line 171
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 173
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
