.class final Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;
.super Lkotlin/e/b/i;
.source "NumberReportsFragment.kt"

# interfaces
.implements Lkotlin/e/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/b<",
        "Ljava/lang/Exception;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;->b:Lorg/mistergroup/shouldianswer/ui/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;->a(Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :try_start_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->b(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/a/ba;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ba;->d:Landroid/widget/ProgressBar;

    const-string v0, "binding.progressBar"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    new-instance p1, Landroidx/appcompat/app/d$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;->b:Lorg/mistergroup/shouldianswer/ui/a;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1001a4

    .line 53
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->b(I)Landroidx/appcompat/app/d$a;

    move-result-object p1

    const v0, 0x7f1000d3

    .line 54
    new-instance v1, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e$1;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e$1;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$e;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->a(Z)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->b()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
