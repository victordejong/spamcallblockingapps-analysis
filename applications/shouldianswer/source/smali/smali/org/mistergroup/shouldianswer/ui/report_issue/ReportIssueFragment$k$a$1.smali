.class final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$1;
.super Ljava/lang/Object;
.source "ReportIssueFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$1;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "dialogInterface"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a$1;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;->g:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->f(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void
.end method
