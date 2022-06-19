.class public final Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "ReportSpamNumberFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/cq;

.field private d:Z

.field private e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

.field private f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->b:Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->g:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;
    .locals 1

    .line 25
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez p0, :cond_0

    const-string v0, "model"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->d:Z

    return-void
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 7

    .line 165
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez v0, :cond_0

    const-string v1, "model"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    :cond_1
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    const/4 v3, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$m;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;ZLkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->d:Z

    :cond_2
    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->f()V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Z)V

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->h:Z

    return p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e()V

    return-void
.end method

.method private final e()V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->g:Z

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v1, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/cq;->n:Landroid/widget/LinearLayout;

    const-string v2, "binding.llConfirmation"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    const-string v3, "model"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    if-eq v2, v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(ZLandroid/view/View;I)V

    return-void
.end method

.method private final f()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    :try_start_0
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->h:Z

    .line 147
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "model"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    .line 148
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->h()Ljava/lang/String;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "binding"

    if-nez v3, :cond_2

    :try_start_2
    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/cq;->s:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvPhoneNumber"

    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez v5, :cond_3

    const-string v6, "numberInfo"

    invoke-static {v6}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->g:Z

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v5, :cond_4

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/cq;->o:Landroid/widget/LinearLayout;

    const-string v6, "binding.llEnterComment"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    sget-object v6, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    const/16 v7, 0x8

    if-eq v0, v6, :cond_5

    move v6, v1

    goto :goto_0

    :cond_5
    move v6, v7

    :goto_0
    invoke-virtual {p0, v3, v5, v6}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(ZLandroid/view/View;I)V

    .line 152
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->g:Z

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v5, :cond_6

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/cq;->r:Landroid/widget/LinearLayout;

    const-string v6, "binding.llSelectedCategory"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    sget-object v6, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    if-eq v0, v6, :cond_7

    move v6, v1

    goto :goto_1

    :cond_7
    move v6, v7

    :goto_1
    invoke-virtual {p0, v3, v5, v6}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(ZLandroid/view/View;I)V

    .line 153
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->g:Z

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v5, :cond_8

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/cq;->q:Landroid/widget/LinearLayout;

    const-string v6, "binding.llSelectCategory"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    sget-object v6, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    if-ne v0, v6, :cond_9

    move v7, v1

    :cond_9
    invoke-virtual {p0, v3, v5, v7}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(ZLandroid/view/View;I)V

    .line 154
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e()V

    .line 156
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v3, :cond_a

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/cq;->t:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvSelectedCategory"

    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v0, :cond_b

    invoke-static {v4}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cq;->m:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->h:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->h:Z

    throw v0
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 10

    const-string p2, "numberReport"

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->b()Landroidx/appcompat/app/a;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;->m()Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    move-result-object v2

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    .line 44
    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 45
    move-object v3, p1

    check-cast v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-eqz p2, :cond_1

    move-object v2, p2

    :cond_1
    if-nez v2, :cond_2

    .line 51
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "ReportSpamNumberFragment.initWithActivity invalid params!"

    invoke-static {p2, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 52
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void

    .line 55
    :cond_2
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "model"

    if-nez p2, :cond_3

    :try_start_1
    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {p2, v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    .line 57
    new-instance p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez v2, :cond_7

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_8
    sget-object v6, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 59
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "binding"

    if-nez p2, :cond_9

    :try_start_2
    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->d:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$c;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_a

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->e:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$d;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_b

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->f:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$e;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_c

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->i:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$f;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_d

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->h:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$g;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_e

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->j:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_f

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->g:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$i;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_10

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->k:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$j;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$k;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    check-cast p2, Lkotlin/e/a/m;

    .line 108
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$l;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;)V

    .line 121
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v4, :cond_11

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cq;->m:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/report_spam_number/a;

    invoke-direct {v5, p2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/a;-><init>(Lkotlin/e/a/m;)V

    check-cast v5, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 122
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_12

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->m:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {p2, v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p2, :cond_13

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cq;->l:Landroid/widget/Button;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;

    invoke-direct {v2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cq;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 179
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;

    if-nez v0, :cond_0

    const-string v1, "model"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez v1, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/cq;->m:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v2, "binding.editComment"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    .line 34
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/cq;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->g:Z

    .line 36
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cq;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/cq;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 183
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onPause()V

    .line 184
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->d()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-static {p0, v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_spam_number/ReportSpamNumberFragment;ZILjava/lang/Object;)V

    return-void
.end method
