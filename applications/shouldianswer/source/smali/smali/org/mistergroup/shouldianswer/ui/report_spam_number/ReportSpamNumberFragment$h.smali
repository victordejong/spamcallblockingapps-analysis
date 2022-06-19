.class final Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;
.super Ljava/lang/Object;
.source "ReportSpamNumberFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 89
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/m;->f:Lorg/mistergroup/shouldianswer/model/m;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 90
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Z)V

    .line 91
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;ZILjava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->b(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    return-void
.end method
