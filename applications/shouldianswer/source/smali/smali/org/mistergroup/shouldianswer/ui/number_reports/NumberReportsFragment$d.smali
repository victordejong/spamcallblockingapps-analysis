.class final Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;
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
        "Ljava/util/List<",
        "+",
        "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
        ">;",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/number_reports/a;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->a(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a(Z)V

    .line 45
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->a(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/f;->a(Ljava/util/List;)V

    .line 46
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->b(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/a/ba;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ba;->d:Landroid/widget/ProgressBar;

    const-string v0, "binding.progressBar"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
