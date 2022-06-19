.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;
.super Ljava/lang/Object;
.source "NumberDetailFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;->c:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 256
    new-instance p1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;->a:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-direct {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    .line 258
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 259
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e$1;-><init>(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 260
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->b:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    return-void
.end method
