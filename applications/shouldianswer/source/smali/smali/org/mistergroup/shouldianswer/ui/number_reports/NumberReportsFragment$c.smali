.class final Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c;
.super Lkotlin/e/b/i;
.source "NumberReportsFragment.kt"

# interfaces
.implements Lkotlin/e/a/a;


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
        "Lkotlin/e/a/a<",
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c;->b:Lorg/mistergroup/shouldianswer/ui/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c;->b()V

    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 121
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "NumberReviewsActivity.donation"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->b:Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment$c;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;->c(Lorg/mistergroup/shouldianswer/ui/number_reports/NumberReportsFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->b(Landroid/content/Context;)V

    return-void
.end method
