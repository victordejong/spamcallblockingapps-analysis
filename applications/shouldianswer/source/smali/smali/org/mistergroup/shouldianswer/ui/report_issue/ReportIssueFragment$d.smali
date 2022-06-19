.class public final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$d;
.super Lcom/b/a/a/b;
.source "ReportIssueFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$d;->b:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    invoke-direct {p0, p2}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Z)Z
    .locals 0

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object p2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
