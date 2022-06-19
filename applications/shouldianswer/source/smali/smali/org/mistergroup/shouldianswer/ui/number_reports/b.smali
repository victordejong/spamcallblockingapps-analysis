.class public final Lorg/mistergroup/shouldianswer/ui/number_reports/b;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ItemAppPromoHolder.kt"


# instance fields
.field private final a:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

.field private final b:Lorg/mistergroup/shouldianswer/a/ay;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/f;Lorg/mistergroup/shouldianswer/a/ay;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/a/ay;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/b;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/b;->b:Lorg/mistergroup/shouldianswer/a/ay;

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/ui/number_reports/f;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/b;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/f;

    return-object v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/number_reports/a;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/b;->b:Lorg/mistergroup/shouldianswer/a/ay;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ay;->c:Landroid/widget/Button;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_reports/b$a;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/b$a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/b;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
