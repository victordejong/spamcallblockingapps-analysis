.class final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f;
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

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->b:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    invoke-static {p1, v0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;)V

    .line 77
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d()V

    .line 78
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/a/ci;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->requestFocusFromTouch()Z

    return-void
.end method
