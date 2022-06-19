.class public final Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "ReportSafeNumberFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/cm;

.field private d:Z

.field private e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

.field private f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->b:Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;
    .locals 1

    .line 25
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez p0, :cond_0

    const-string v0, "model"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->d:Z

    return-void
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 7

    .line 165
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v0, :cond_0

    const-string v1, "model"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$i;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;ZLkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->d:Z

    :cond_2
    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e()V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Z)V

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->h:Z

    return p0
.end method

.method private final d()V
    .locals 4

    .line 129
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v1, :cond_0

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/cm;->n:Landroid/widget/LinearLayout;

    const-string v2, "binding.llConfirmation"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    const-string v3, "model"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

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
    invoke-virtual {p0, v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(ZLandroid/view/View;I)V

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->d()V

    return-void
.end method

.method private final e()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    :try_start_0
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->h:Z

    .line 135
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "model"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    .line 136
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d()Ljava/lang/String;

    move-result-object v3

    .line 137
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "binding"

    if-nez v4, :cond_2

    :try_start_2
    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "binding.tvPhoneNumber"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez v6, :cond_3

    const-string v7, "numberInfo"

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-boolean v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v6, :cond_4

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/cm;->o:Landroid/widget/LinearLayout;

    const-string v7, "binding.llEnterComment"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget-object v7, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    const/16 v8, 0x8

    if-eq v0, v7, :cond_5

    move v7, v1

    goto :goto_0

    :cond_5
    move v7, v8

    :goto_0
    invoke-virtual {p0, v4, v6, v7}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(ZLandroid/view/View;I)V

    .line 140
    iget-boolean v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v6, :cond_6

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/cm;->q:Landroid/widget/LinearLayout;

    const-string v7, "binding.llSelectedNumberType"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget-object v7, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    if-eq v0, v7, :cond_7

    move v7, v1

    goto :goto_1

    :cond_7
    move v7, v8

    :goto_1
    invoke-virtual {p0, v4, v6, v7}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(ZLandroid/view/View;I)V

    .line 141
    iget-boolean v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v6, :cond_8

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/cm;->p:Landroid/widget/LinearLayout;

    const-string v7, "binding.llSelectNumberType"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget-object v7, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    if-ne v0, v7, :cond_9

    move v7, v1

    goto :goto_2

    :cond_9
    move v7, v8

    :goto_2
    invoke-virtual {p0, v4, v6, v7}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(ZLandroid/view/View;I)V

    .line 142
    iget-boolean v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v6, :cond_a

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/cm;->m:Landroid/widget/LinearLayout;

    const-string v7, "binding.llCompanyInfo"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    sget-object v7, Lorg/mistergroup/shouldianswer/model/m;->u:Lorg/mistergroup/shouldianswer/model/m;

    if-eq v0, v7, :cond_b

    sget-object v7, Lorg/mistergroup/shouldianswer/model/m;->v:Lorg/mistergroup/shouldianswer/model/m;

    if-ne v0, v7, :cond_c

    :cond_b
    move v8, v1

    :cond_c
    invoke-virtual {p0, v4, v6, v8}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(ZLandroid/view/View;I)V

    .line 143
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->d()V

    .line 145
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_d

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->s:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "binding.tvSelectedCategory"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual {v6, v0}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v0, :cond_e

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cm;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v0, :cond_f

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cm;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v3, :cond_10

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v0, :cond_11

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cm;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v3, :cond_12

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->b()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v0, :cond_13

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cm;->l:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v3, :cond_14

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->c()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->h:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->h:Z

    throw v0
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->f()V

    return-void
.end method

.method private final f()V
    .locals 5

    .line 157
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    const-string v1, "model"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v0

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    const-string v3, "binding"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cm;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v4, "binding.editComment"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->d(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v0

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cm;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v4, "binding.editCompanyName"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->a(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v0

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cm;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v4, "binding.editCompanyActivity"

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->b(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v0

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v2, :cond_7

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/cm;->l:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v3, "binding.editCompanyWebsite"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport$c;->c(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v0

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v2, :cond_9

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->c()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/NumberReport$c;)V

    return-void
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
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->b()Landroidx/appcompat/app/a;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberActivity;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberActivity;->m()Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    move-result-object v2

    iput-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    .line 43
    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 44
    move-object v3, p1

    check-cast v3, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberActivity;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-eqz p2, :cond_1

    move-object v2, p2

    :cond_1
    if-nez v2, :cond_2

    .line 50
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "ReportSafeNumberFragment.initWithActivity invalid params!"

    invoke-static {p2, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 51
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void

    .line 54
    :cond_2
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;
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
    invoke-virtual {p2, v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    .line 55
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez p2, :cond_5

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->o()Lorg/mistergroup/shouldianswer/model/NumberReport$c;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 56
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v2, :cond_6

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, p2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->a(Lorg/mistergroup/shouldianswer/model/NumberReport$c;)V

    .line 59
    :cond_7
    new-instance p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v2, :cond_8

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_9
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e:Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;

    if-nez v2, :cond_a

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/b;->b()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_b
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

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->f:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 61
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "binding"

    if-nez p2, :cond_c

    :try_start_2
    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cm;->f:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$b;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez p2, :cond_d

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cm;->g:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$c;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez p2, :cond_e

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cm;->h:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$d;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez p2, :cond_f

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cm;->d:Landroid/widget/Button;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$g;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    check-cast p2, Lkotlin/e/a/m;

    .line 90
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;)V

    .line 104
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_10

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;

    invoke-direct {v5, p2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;-><init>(Lkotlin/e/a/m;)V

    check-cast v5, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 105
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_11

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    move-object v5, v3

    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_12

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;

    invoke-direct {v5, p2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;-><init>(Lkotlin/e/a/m;)V

    check-cast v5, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_13

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    move-object v5, v3

    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_14

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;

    invoke-direct {v5, p2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;-><init>(Lkotlin/e/a/m;)V

    check-cast v5, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_15

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    move-object v5, v3

    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v4, :cond_16

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/cm;->l:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;

    invoke-direct {v5, p2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/a;-><init>(Lkotlin/e/a/m;)V

    check-cast v5, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez p2, :cond_17

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_17
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cm;->l:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {p2, v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez p2, :cond_18

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/cm;->e:Landroid/widget/Button;

    new-instance v2, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;

    invoke-direct {v2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/cm;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0060

    const/4 v0, 0x0

    .line 34
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/cm;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->g:Z

    .line 36
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->c:Lorg/mistergroup/shouldianswer/a/cm;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/cm;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 179
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onPause()V

    .line 180
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->f()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-static {p0, v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;->a(Lorg/mistergroup/shouldianswer/ui/report_safe_number/ReportSafeNumberFragment;ZILjava/lang/Object;)V

    return-void
.end method
