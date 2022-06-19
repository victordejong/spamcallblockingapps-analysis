.class public final Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;
.super Lorg/mistergroup/shouldianswer/ui/a;
.source "ReportSpamNumberActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity$a;
    }
.end annotation


# static fields
.field public static final m:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity$a;


# instance fields
.field public l:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

.field private n:Lorg/mistergroup/shouldianswer/a/co;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;->m:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final m()Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;
    .locals 2

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;->l:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez v0, :cond_0

    const-string v1, "model"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 18
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0d0061

    invoke-static {p1, v0}, Landroidx/databinding/f;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026ort_spam_number_activity)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/co;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;->n:Lorg/mistergroup/shouldianswer/a/co;

    .line 19
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/c;

    invoke-static {p1}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/c;)Landroidx/lifecycle/v;

    move-result-object p1

    const-class v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026berViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;->l:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    return-void
.end method
