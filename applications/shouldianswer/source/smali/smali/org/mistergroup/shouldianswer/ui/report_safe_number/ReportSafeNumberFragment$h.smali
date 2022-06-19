.class public final Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;
.super Ljava/lang/Object;
.source "ReportSafeNumberFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 96
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    .line 97
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->d(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;Z)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
