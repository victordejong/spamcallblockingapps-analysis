.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/d;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ItemMoreInfoHolder.kt"


# instance fields
.field private final a:Lorg/mistergroup/shouldianswer/a/be;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/f;Lorg/mistergroup/shouldianswer/a/be;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/a/be;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/d;->a:Lorg/mistergroup/shouldianswer/a/be;

    .line 14
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/d;->a:Lorg/mistergroup/shouldianswer/a/be;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/a/be;->d()Landroid/view/View;

    move-result-object p2

    const-string v0, "binding.root"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/d;->a:Lorg/mistergroup/shouldianswer/a/be;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/be;->c:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_reports/d$1;

    invoke-direct {v0, p1}, Lorg/mistergroup/shouldianswer/ui/number_reports/d$1;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/f;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
