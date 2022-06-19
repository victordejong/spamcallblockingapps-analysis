.class public final Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;
.super Ljava/lang/Object;
.source "ReportSpamNumberFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 113
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    .line 115
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->d(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    .line 117
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Z)V

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
