.class final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;
.super Lkotlin/c/b/a/k;
.source "ReportIssueFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Landroidx/appcompat/app/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/ad$a;

.field final synthetic d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/ad$a;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->c:Lorg/mistergroup/shouldianswer/utils/ad$a;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->c:Lorg/mistergroup/shouldianswer/utils/ad$a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    invoke-direct {v0, v1, p2, v2}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;-><init>(Lorg/mistergroup/shouldianswer/utils/ad$a;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 158
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->e:Lkotlinx/coroutines/ad;

    .line 159
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->c:Lorg/mistergroup/shouldianswer/utils/ad$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 160
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "ReportIssueFragment.sendTicket ticket sent"

    invoke-static {p1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 161
    new-instance p1, Landroidx/appcompat/app/d$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->f(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    const v1, 0x7f100208

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$1;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$1;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->c()Landroidx/appcompat/app/d;

    move-result-object p1

    goto :goto_1

    .line 167
    :cond_2
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "ReportIssueFragment.sendTicket failed!"

    invoke-static {v1, v5, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 168
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    check-cast v1, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$2;

    invoke-direct {v3, p0, v4}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$2;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;Lkotlin/c/c;)V

    check-cast v3, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->b:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 158
    :cond_3
    :goto_0
    check-cast p1, Landroidx/appcompat/app/d;

    :goto_1
    return-object p1
.end method
