.class public final Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;
.super Landroidx/lifecycle/u;
.source "ReportSpamNumberViewModel.kt"


# instance fields
.field public a:Lorg/mistergroup/shouldianswer/model/NumberReport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->a:Lorg/mistergroup/shouldianswer/model/NumberReport;

    return-void
.end method

.method public final b()Lorg/mistergroup/shouldianswer/model/NumberReport;
    .locals 2

    .line 7
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->a:Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-nez v0, :cond_0

    const-string v1, "numberReport"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
