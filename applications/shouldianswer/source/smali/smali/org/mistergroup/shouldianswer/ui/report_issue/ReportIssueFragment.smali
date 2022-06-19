.class public final Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "ReportIssueFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;,
        Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;
    }
.end annotation


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/a/ci;

.field private c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    .line 33
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d:Z

    .line 35
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->f:Z

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/a/ci;
    .locals 1

    .line 28
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->f:Z

    return p0
.end method

.method private final e()V
    .locals 8

    .line 144
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "ReportIssueFragment.sendTicket"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;

    invoke-direct {v0, p0, v1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Lkotlin/c/c;)V

    move-object v5, v0

    check-cast v5, Lkotlin/e/a/m;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e()V

    return-void
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final synthetic a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ")\n"

    instance-of v3, v0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;

    iget v4, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->b:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v0, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->b:I

    sub-int/2addr v0, v5

    iput v0, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;

    invoke-direct {v3, v1, v0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Lkotlin/c/c;)V

    :goto_0
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v4

    .line 190
    iget v5, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->b:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "\n"

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v2, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->k:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->j:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->i:Ljava/lang/Object;

    check-cast v4, Ljava/util/Date;

    iget-object v4, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->l:I

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->d:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 191
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "ReportIssueFragment.getUploadLogData"

    invoke-static {v0, v5, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 193
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/16 v10, 0x7d0

    invoke-virtual {v0, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(I)Ljava/util/List;

    move-result-object v10

    .line 195
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_3

    .line 197
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v0, "sb.toString()"

    invoke-static {v12, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 201
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AppVer: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/r;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DBVer: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Ratings Count: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AndroidID: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AppID: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "OS Version: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "OS API Level: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Language: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v14, "Locale.getDefault()"

    invoke-static {v0, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 210
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UTC Time: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v0, v13}, Lorg/mistergroup/shouldianswer/utils/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Local Time Shift: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v15, "ZZZZZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v0, v15, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SDK: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 214
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v14, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v7, "Android 9"

    goto :goto_2

    :pswitch_1
    const-string v7, "Android 8.1"

    goto :goto_2

    :pswitch_2
    const-string v7, "Android 8"

    goto :goto_2

    :pswitch_3
    const-string v7, "Android 7.1"

    goto :goto_2

    :pswitch_4
    const-string v7, "Android 7"

    goto :goto_2

    :pswitch_5
    const-string v7, "Android 6 (No CallScreening)"

    .line 222
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "System: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Device: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Model (and Product): "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Permission Contacts: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Permission CallInfo: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Permission DrawOverApps: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DefaultPhoneApp: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_4

    .line 231
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "DefaultPhoneAppPackage: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 233
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DefaultPhoneAppPackage: exception "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    sget-object v14, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v14, v0, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 237
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UserSettings:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ai;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "Number Reports: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->d:Ljava/lang/Object;

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->e:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->f:Ljava/lang/Object;

    iput v11, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->l:I

    iput-object v12, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->g:Ljava/lang/Object;

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->h:Ljava/lang/Object;

    iput-object v13, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->i:Ljava/lang/Object;

    iput-object v7, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->j:Ljava/lang/Object;

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->k:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v3, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$c;->b:I

    invoke-virtual {v14, v3}, Lorg/mistergroup/shouldianswer/model/aa;->b(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    return-object v4

    :cond_5
    move-object v4, v12

    .line 190
    :goto_4
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;

    invoke-direct {v2, v4, v0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 242
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, v0, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v8

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p2, 0x0

    const-string v0, "ReportIssueFragment.initWithActivity"

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1, p2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 51
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$j;

    invoke-direct {p1, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V

    .line 61
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ci;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ci;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ci;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->G()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ci;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$d;

    const v1, 0x7f10014f

    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;Ljava/lang/String;)V

    check-cast p2, Lcom/b/a/a/b;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->a(Lcom/b/a/a/b;)Lcom/b/a/c;

    .line 71
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->d:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$e;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->e:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->f:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$g;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->g:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$h;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ci;->h:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d()V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ci;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final d()V
    .locals 9

    const-string v0, "binding.editPhoneNumber"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    :try_start_0
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e:Z

    .line 114
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d:Z

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "binding"

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ci;->o:Landroid/widget/LinearLayout;

    const-string v6, "binding.llSelectIssueType"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    const/16 v8, 0x8

    if-ne v6, v7, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v8

    :goto_0
    invoke-virtual {p0, v3, v4, v6}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(ZLandroid/view/View;I)V

    .line 115
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d:Z

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v4, :cond_2

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ci;->p:Landroid/widget/LinearLayout;

    const-string v6, "binding.llSelectedIssueType"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-eq v6, v7, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v8

    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(ZLandroid/view/View;I)V

    .line 117
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v3, :cond_4

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ci;->s:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvSelectedIssueType"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v6, Lorg/mistergroup/shouldianswer/ui/report_issue/a;->a:[I

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->ordinal()I

    move-result v4

    aget v4, v6, v4

    if-eq v4, v1, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    const/4 v6, 0x3

    if-eq v4, v6, :cond_6

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const v4, 0x7f100158

    .line 121
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_6
    const v4, 0x7f100156

    .line 120
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_7
    const v4, 0x7f100155

    .line 119
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_8
    const v4, 0x7f100157

    .line 118
    invoke-virtual {p0, v4}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 117
    :goto_2
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d:Z

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v4, :cond_9

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ci;->m:Landroid/widget/LinearLayout;

    const-string v6, "binding.llIssueDescription"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-eq v6, v7, :cond_a

    move v6, v2

    goto :goto_3

    :cond_a
    move v6, v8

    :goto_3
    invoke-virtual {p0, v3, v4, v6}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(ZLandroid/view/View;I)V

    .line 125
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d:Z

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v4, :cond_b

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ci;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-static {v4, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->b:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-eq v6, v7, :cond_d

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-ne v6, v7, :cond_c

    goto :goto_4

    :cond_c
    move v6, v8

    goto :goto_5

    :cond_d
    :goto_4
    move v6, v2

    :goto_5
    invoke-virtual {p0, v3, v4, v6}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(ZLandroid/view/View;I)V

    .line 126
    iget-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d:Z

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v4, :cond_e

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ci;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "binding.tvIssueMotivation"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->b:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-eq v6, v7, :cond_10

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-ne v6, v7, :cond_f

    goto :goto_6

    :cond_f
    move v6, v8

    goto :goto_7

    :cond_10
    :goto_6
    move v6, v2

    :goto_7
    invoke-virtual {p0, v3, v4, v6}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(ZLandroid/view/View;I)V

    .line 127
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v3, :cond_11

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ci;->j:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->b()Z

    move-result v3

    .line 132
    iget-boolean v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->f:Z

    if-nez v4, :cond_17

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v6, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->a:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-eq v4, v6, :cond_17

    .line 130
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v4, :cond_12

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ci;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->b()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v4, :cond_13

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ci;->i:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    const-string v6, "binding.editDescription"

    invoke-static {v4, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->c()Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v3, :cond_17

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->c:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    sget-object v4, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;->d:Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment$a;

    if-eq v3, v4, :cond_16

    .line 132
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v3, :cond_14

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ci;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->b()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v3, :cond_15

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ci;->k:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-static {v3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    move v0, v1

    goto :goto_8

    :cond_17
    move v0, v2

    .line 133
    :goto_8
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez v3, :cond_18

    invoke-static {v5}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ci;->l:Landroid/widget/LinearLayout;

    const-string v4, "binding.llConfirmation"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    if-eqz v0, :cond_19

    move v8, v2

    :cond_19
    invoke-virtual {p0, v1, v3, v8}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->a(ZLandroid/view/View;I)V

    .line 134
    iput-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iput-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->e:Z

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0002

    .line 255
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 256
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d005e

    const/4 v0, 0x0

    .line 44
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ci;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    .line 45
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->b:Lorg/mistergroup/shouldianswer/a/ci;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ci;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0031

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f10013a

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/ui/report_issue/ReportIssueFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.help_\u2026_to_report_the_app_issue)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 250
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    return-void
.end method
