.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;
.super Lkotlin/c/b/a/k;
.source "NumberDetailFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;->b(Ljava/lang/Object;)Ljava/lang/Object;
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


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/model/NumberReport;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;

.field final synthetic d:Lorg/mistergroup/shouldianswer/model/ag;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;Lorg/mistergroup/shouldianswer/model/ag;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->b:Lorg/mistergroup/shouldianswer/model/NumberReport;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->c:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->d:Lorg/mistergroup/shouldianswer/model/ag;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->b:Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->c:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->d:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-direct {v0, v1, p2, v2, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;-><init>(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;Lorg/mistergroup/shouldianswer/model/ag;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 294
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->a:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->e:Lkotlinx/coroutines/ad;

    .line 295
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->d:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    const-string v1, "context!!"

    if-ne p1, v0, :cond_1

    .line 296
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->b:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->c:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;->e:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->b:Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    goto :goto_0

    .line 298
    :cond_1
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->b:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->c:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1;->e:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g$1$1;->b:Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    .line 299
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
