.class final Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;
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

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 124
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->d()V

    .line 125
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Z)V

    .line 126
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->b(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Z)V

    .line 129
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    .line 130
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->b:Lorg/mistergroup/shouldianswer/ui/a;

    const v1, 0x7f01001e

    const v2, 0x7f01001d

    invoke-virtual {p1, v1, v2}, Lorg/mistergroup/shouldianswer/ui/a;->overridePendingTransition(II)V

    .line 131
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;->a:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;

    const v2, 0x7f10000a

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
