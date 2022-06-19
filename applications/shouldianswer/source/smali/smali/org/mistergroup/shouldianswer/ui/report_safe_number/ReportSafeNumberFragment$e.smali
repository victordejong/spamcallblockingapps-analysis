.class final Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;
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


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 84
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;Z)V

    .line 85
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;ZILjava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->b(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    return-void
.end method
