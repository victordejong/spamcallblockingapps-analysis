.class public final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$j;
.super Ljava/lang/Object;
.source "ReportIssueFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$j;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d()V

    :cond_0
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
