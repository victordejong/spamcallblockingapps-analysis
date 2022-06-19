.class final Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;
.super Ljava/lang/Object;
.source "ReportSafeNumberFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 114
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    .line 115
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->b(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;Z)V

    .line 118
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    const v2, 0x7f10000a

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 119
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    .line 120
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;->b:Lorg/mistergroup/shouldianswer/ui/a;

    const v0, 0x7f01001e

    const v1, 0x7f01001d

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/ui/a;->overridePendingTransition(II)V

    return-void
.end method
