.class final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;
.super Ljava/lang/Object;
.source "ReportIssueFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/a/ci;

    move-result-object v0

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ci;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v1, "binding.editEmail"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/ai;->d(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Z)V

    .line 94
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/a/ci;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->n:Landroid/widget/LinearLayout;

    const-string v0, "binding.llProgress"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V

    .line 105
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d()V

    :cond_0
    return-void
.end method
