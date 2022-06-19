.class Lcom/allinone/callerid/util/z0$d;
.super Ljava/lang/Object;
.source "ServiceUtils.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/z0;->g(Landroid/content/Context;Ljava/util/ArrayList;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/search/EZSearchResult;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/allinone/callerid/search/EZSearchResult;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    iput-object p2, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    iput p3, p0, Lcom/allinone/callerid/util/z0$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 8

    const-string v0, "is_answer_end"

    const-string v1, "contact_subtype"

    const-string v2, "isContact"

    const-string v3, "contact_missed"

    const-string v4, "US/USA"

    const/4 v5, 0x1

    const/high16 v6, 0x10000000

    if-eqz p1, :cond_9

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->isSpam()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getIs_activity()I

    move-result p1

    if-eq p1, v5, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result p1

    const/4 v7, 0x5

    if-le p1, v7, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getOnedayincomingah()I

    move-result p1

    const/4 v7, 0x3

    if-lt p1, v7, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    const-class v1, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "haoma"

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getOld_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cishu"

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getOnedayincomingah()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Report_count"

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getIs_activity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Type_label"

    .line 8
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Type_label_id"

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "T_p"

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "icon"

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/i/a/m/b;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 15
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 24
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    const-class v1, Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    iget v1, p0, Lcom/allinone/callerid/util/z0$d;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 32
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->isSpam()Z

    move-result p1

    xor-int/2addr p1, v5

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->isSpam()Z

    move-result v0

    const-string v1, "is_activity"

    const-string v2, "tony"

    if-eqz v0, :cond_5

    .line 34
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "is_spam"

    .line 35
    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "spam_comment_show"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getIs_activity()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 38
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_6

    .line 39
    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getActivity_count()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v3, "activity_comment_show"

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_7
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "is_reportcount5"

    .line 43
    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "reportcount_comment_show"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_1
    const-string v0, ""

    .line 45
    :goto_2
    :try_start_2
    new-instance v2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v2}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 46
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 51
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 52
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "number_content"

    .line 53
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "activity_count"

    .line 55
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    const-class v0, Lcom/allinone/callerid/mvc/controller/comment/SubmitCommentActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/i/a/m/b;->f(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 62
    :cond_9
    :try_start_3
    iget-object p1, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 63
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 64
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 66
    iget-object v3, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 71
    :cond_a
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    const-class v1, Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/allinone/callerid/util/z0$d;->a:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    iget v1, p0, Lcom/allinone/callerid/util/z0$d;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/allinone/callerid/util/z0$d;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
